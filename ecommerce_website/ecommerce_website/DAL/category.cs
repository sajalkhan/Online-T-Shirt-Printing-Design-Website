using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    sealed class category:MyBase,IdataBase
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public bool Insert()
        {
            Command = CommandBuilder(@"insert into category(name) values (@name)");

            Command.Parameters.AddWithValue("@name",Name);

            return ExecuteNQ(Command);
        }

        //public DataSet Select()
        //{
        //    return ExecuteDS(@"select u.id, u.name, u.phonenumber, u.address, u.balance, u.image, i.role
        //                       from All_User as u
        //                       left join info i on u.id=i.userid where i.role='user'");
        //}

        public bool Delete()
        {
            Command = CommandBuilder("delete from category where id=@id");
            Command.Parameters.AddWithValue("@id",Id);
            return ExecuteNQ(Command);

        }

        public bool Table()
        {
            Command = CommandBuilder(@"create table category(
                                        id int identity primary key,
                                        name varchar(200) unique not null)");

            Command.Parameters.AddWithValue("@name",Name);

            return ExecuteNQ(Command);
        }
    }
}
