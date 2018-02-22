using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    sealed class Logo:MyBase,IdataBase
    {
        public int Id { get; set; }
        public string Image { get; set; }

        public bool Insert()
        {
            Command = CommandBuilder(@"insert into logo(logo) values (@logo)");

            Command.Parameters.AddWithValue("@logo",Image);

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
            Command = CommandBuilder("delete from Logo where id=@id");
            Command.Parameters.AddWithValue("@id",Id);
            return ExecuteNQ(Command);

        }

        public bool Table()
        {
            Command = CommandBuilder(@"create table Logo(
                                        id int identity primary key,
                                        logo varchar(200) unique not null)");

            Command.Parameters.AddWithValue("@logo",Image);

            return ExecuteNQ(Command);
        }
    }
}
