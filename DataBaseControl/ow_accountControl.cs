using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DataBaseControl
{
    public class ow_accountControl
    {
        string tablename = "ow_account";
        /// <summary>
        /// 基本的增删改
        /// </summary>
        /// <param name="id">主键</param>
        /// <param name="table">要更新的表数据</param>
        /// <param name="SQLType">0-增加,1-修改,2-删除,</param>
        /// <returns></returns>
        public int Update(string PrimaryKey, DataTable table, int SQLType,List<string> keys)
        {
            string sql = SQLGeneration.MySQLGeneration(table, PrimaryKey, SQLType, tablename, keys);
            return DBHelper.Update(sql, DBHelper.connStr);
        }
        /// <summary>
        /// 获取表数据
        /// </summary>
        /// /// <param name="SQLType">3-获取表数据,4-获取表结构,</param>
        /// <returns></returns>
        public DataTable GetTable(DataTable table,int SQLType,List<string> keys)
        {
            string sql = SQLGeneration.MySQLGeneration(table, "", SQLType, tablename, keys);
            return DBHelper.GetTable(sql, DBHelper.connStr);
        }
        /// <summary>
        /// 登陆
        /// </summary>
        /// <param name="username"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public bool Login(string username,string pwd)
        {
            bool tag = false;
            DataTable table = null ;
            string sql = SQLGeneration.MySQLGeneration(tablename, "AccountNumber='" + username + "' and Pwd='" + pwd + "'",1);
            table = DBHelper.GetTable(sql, DBHelper.connStr);
            if (table != null && table.Rows.Count > 0)
            {
                tag = true;
            }
            else
            {
                tag = false;
            }
            return tag;
        }
    }
}
