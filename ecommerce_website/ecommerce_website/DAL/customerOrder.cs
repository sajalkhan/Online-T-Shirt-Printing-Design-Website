using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    sealed class customerOrder:MyBase,IdataBase
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Logo { get; set; }
        public string Text { get; set; }
        public string Tshirt { get; set; }
        public int UserId { get; set; }
        public string Size { get; set; }
        public int Quantity { get; set; }
        public int price { get; set; }

        public bool Insert()
        {
            Command = CommandBuilder(@"insert into customerOrder(name, address, logo, text, tshirt, userId, size, quantity, price) values (@name, @address, @logo, @text, @tshirt, @userId, @size, @quantity, @price)");

            Command.Parameters.AddWithValue("@name", Name);
            Command.Parameters.AddWithValue("@address", Address);
            Command.Parameters.AddWithValue("@logo", Logo);
            Command.Parameters.AddWithValue("@text", Text);
            Command.Parameters.AddWithValue("@tshirt", Tshirt);
            Command.Parameters.AddWithValue("@userId", UserId);
            Command.Parameters.AddWithValue("@size", Size);
            Command.Parameters.AddWithValue("@quantity", Quantity);
            Command.Parameters.AddWithValue("@price", price);

            return ExecuteNQ(Command);
        }

        public bool Delete()
        {
            Command = CommandBuilder("delete from customerOrder where id=@id");
            Command.Parameters.AddWithValue("@id", Id);
            return ExecuteNQ(Command);
        }

        public bool Table()
        {
            Command = CommandBuilder(@"create table customerOrder(
                                        id int identity primary key,
                                        name varchar(200),
                                        address varchar(50),
                                        logo varchar(200),
                                        text varchar(50),
                                        tshirt varchar(200) not null,
                                        userId int not null,
                                        size varchar(50),
                                        quantity int,
                                        price int)");

            Command.Parameters.AddWithValue("@id", Id);
            Command.Parameters.AddWithValue("@name",Name);
            Command.Parameters.AddWithValue("@address", Address);
            Command.Parameters.AddWithValue("@logo", Logo);
            Command.Parameters.AddWithValue("@text", Text);
            Command.Parameters.AddWithValue("@tshirt", Tshirt);
            Command.Parameters.AddWithValue("@userId", UserId);
            Command.Parameters.AddWithValue("@size", Size);
            Command.Parameters.AddWithValue("@quantity", Quantity);
            Command.Parameters.AddWithValue("@price", price);

            return ExecuteNQ(Command);
        }
    }
}
