using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    sealed class product:MyBase,IdataBase
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Descriptioin { get; set; }
        public double price { get; set; }
        public string Image { get; set; }
        public int CategoryId { get; set; }

        public bool Insert()
        {
            Command = CommandBuilder(@"insert into product(name, description, price, categoryId, imageUrl)
                                    values (@name, @description, @price, @categoryId, @image)");

            Command.Parameters.AddWithValue("@name",Name);
            Command.Parameters.AddWithValue("@description", Descriptioin);
            Command.Parameters.AddWithValue("@price", price);
            Command.Parameters.AddWithValue("@categoryId", CategoryId);
            Command.Parameters.AddWithValue("@image", Image);

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
            Command = CommandBuilder("delete from product where id=@id");
            Command.Parameters.AddWithValue("@id",Id);
            return ExecuteNQ(Command);

        }

        public bool Table()
        {
            Command = CommandBuilder(@"create table product(
                                        id int identity primary key,
                                        name varchar(200),
                                        description varchar(200),
                                        price double(200) not null,
                                        categoryId int,
                                        imageUrl varchar(500))");

            Command.Parameters.AddWithValue("@name",Name);
            Command.Parameters.AddWithValue("@description",Descriptioin);
            Command.Parameters.AddWithValue("@price", price);
            Command.Parameters.AddWithValue("@categoryId", CategoryId);
            Command.Parameters.AddWithValue("@imageUrl", Image);

            return ExecuteNQ(Command);
        }
    }
}
