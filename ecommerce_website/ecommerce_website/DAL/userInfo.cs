using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    sealed class userInfo:MyBase,IdataBase
    {
        public int Id { get; set; }
        public string Role { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Name { get; set; }

        public bool Insert()
        {
            Command = CommandBuilder(@"insert into userInfo(name, role, password, email)
                                    values (@name, @role, @password, @email)");

            Command.Parameters.AddWithValue("@name", Name);
            Command.Parameters.AddWithValue("@role",Role);
            Command.Parameters.AddWithValue("@password",Password);
            Command.Parameters.AddWithValue("@email",Email);

            return ExecuteNQ(Command);
        }

        public bool Login()
        {
            if (!Connection()) return false;

            Command = CommandBuilder(@"select i.id, i.role, i.name
                                        from userInfo as i
                                        where i.email=@email and i.password = @password");

            Command.Parameters.AddWithValue("@password",Password);
            Command.Parameters.AddWithValue("@email", Email);
            Command.Parameters.AddWithValue("@id", Id);
            Reader = Command.ExecuteReader();

            while(Reader.Read())
            {
                Id = (Int32)Reader["id"];
                Role = Reader["role"].ToString();
                Name = Reader["name"].ToString();
                Reader.Close();
                return true;
            }
            Reader.Close();
            return false;
        }



        public DataSet Select()
        {
            return ExecuteDS("select distinct role from info");
        }
        public bool Delete()
        {
            Command = CommandBuilder("delete from userInfo where userid=@userid");
            Command.Parameters.AddWithValue("@userid",Id);
            return ExecuteNQ(Command);
        }
        public bool Table()
        {
            Command = CommandBuilder(@"create table userInfo(
	                                    id int identity primary key,
	                                    name varchar(200) not null,
	                                    email varchar(200) not null unique,
	                                    password varchar(200),
	                                    role varchar(200))");

            Command.Parameters.AddWithValue("@name", Name);
            Command.Parameters.AddWithValue("@role",Role);
            Command.Parameters.AddWithValue("@password",Password);
            Command.Parameters.AddWithValue("@email", Email);
            return ExecuteNQ(Command);
        }
    }
}
