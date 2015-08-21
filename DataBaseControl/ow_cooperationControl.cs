using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
namespace DataBaseControl
{
    public class ow_cooperationControl
    {
        string tablename = "ow_cooperation";
        /// <summary>
        /// 基本的增删改
        /// </summary>
        /// <param name="id">主键</param>
        /// <param name="table">要更新的表数据</param>
        /// <param name="SQLType">0-增加,1-修改,2-删除,</param>
        /// <returns></returns>
        public int Update(string PrimaryKey, DataTable table, int SQLType)
        {
            List<MySqlParameter> parameter = new List<MySqlParameter>();
            parameter = SQLGeneration.MySQLGetParameter(table, parameter);
            string sql = SQLGeneration.MySQLGeneration(table, PrimaryKey, SQLType);
            return DBHelper.Update(sql, DBHelper.connStr, parameter);
        }
        /// <summary>
        /// 获取表数据
        /// </summary>
        /// <param name="SQLType">1-获取表数据,0-获取表结构,</param>
        /// <param name="id">主键的值</param>
        /// <returns></returns>
        public DataTable GetTable(int SQLType, string id)
        {
            DataTable table = null;
            string sql = "";
            string where = "";
            if (!string.IsNullOrEmpty(id))
            {
                where = " id=" + id;
            }
            else
            {
                where = " 1!=1";
            }
            if (SQLType == 0)
            {
                where = " 1!=1";
            }
            sql = SQLGeneration.MySQLGeneration(tablename, where, SQLType);
            table = DBHelper.GetTable(sql, DBHelper.connStr);
            if (table != null)
            {
                table.TableName = tablename;
                return table;
            }
            else
            {
                return null;
            }
        }
    }
}
