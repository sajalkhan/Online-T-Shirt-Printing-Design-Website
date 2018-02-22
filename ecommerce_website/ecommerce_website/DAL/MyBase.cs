using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public abstract class MyBase
    {
        protected SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce_website.Properties.Settings.MyCon"].ConnectionString);
        public string Error { get; set; }

        protected SqlDataReader Reader;

        protected bool Connection()
        {
            if (cn.State == ConnectionState.Open) return true;
            try
            {
                cn.Open();
                return true;
            }
            catch(Exception ex)
            {
                Error = ex.Message;
            }
            return false;
        }

        protected bool ExecuteNQ(SqlCommand cmd)
        {
            if (!Connection()) return false;
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch(Exception ex)
            {
                Error = ex.Message;
            }
            return false;
        }

        protected bool ExecuteSclr(SqlCommand cmd)
        {
            if (!Connection()) return false;
            try
            {
                cmd.ExecuteScalar();
                return true;
            }
            catch (Exception ex)
            {
                Error = ex.Message;
            }
            return false;
        }
        protected DataSet ExecuteDS(string SQL)
        {
            DataSet ds = new DataSet();
            if (!Connection()) return ds;
            Command = CommandBuilder(SQL);
            SqlDataAdapter da = new SqlDataAdapter(Command);
            da.Fill(ds);
            return ds;

        }

        protected SqlCommand Command { get; set; }
        protected SqlCommand CommandBuilder(string SQL)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = SQL;
            return cmd;
        }

    }
}
