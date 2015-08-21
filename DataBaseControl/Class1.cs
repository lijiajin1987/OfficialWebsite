using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Common;
namespace DataBaseControl
{
    public class Class1
    {
        string s = "";
        public Class1()
        {
            
        }
        public string ConnectionTest()
        {
            s = ConfigurationManager.AppSettings["MySql"].ToString();
            MySqlConnection mysqlcon = new MySqlConnection(s);
            MySqlCommand mysqlcom = new MySqlCommand("", mysqlcon);
            MySqlDataAdapter mysqldataadp = new MySqlDataAdapter(mysqlcom);
            DataSet ds=new DataSet();
            string message = "";
            try
            {
                //mysqlcon.Open();
                if (mysqlcon.State != ConnectionState.Open)
                {
                    mysqlcon.Open();
                }
                mysqldataadp.SelectCommand.CommandText="select * from ow_articletype";
                message = "打开数据库成功！";
                mysqldataadp.Fill(ds);

                if (ds.Tables.Count > 0)
                {
                    message = ds.Tables[0].Rows[0][1].ToString();
                }
                else
                {
                    message = "可惜查不到数据";
                }
            }
            catch (Exception ex)
            {
                if(mysqlcon.State==ConnectionState.Open)
                { 
                    mysqlcon.Close();
                    mysqlcon.Dispose();
                }
                message = "数据库访问失败！ 信息："+ex.Message;
            }
            finally
            {
                if (mysqlcon.State == ConnectionState.Open)
                {
                    mysqlcon.Close();
                }
                mysqlcon.Dispose();
                mysqlcom.Dispose();
                mysqldataadp.Dispose();
            }
            return message;
            
        }
    }
}
