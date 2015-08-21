using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
namespace DataBaseControl
{
    public class ow_articleControl
    {
        string tablename = "ow_article";
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
        /// /// <param name="SQLType">1-获取表数据,0-获取表结构,</param>
        /// <returns></returns>
        public DataTable GetTable(int SQLType)
        {
            DataTable table;
            ow_articletypeControl ow_articletypeControl = new DataBaseControl.ow_articletypeControl();
            table = ow_articletypeControl.GetTable(1, " TypeName ='关于我们'");
            string sql = "";
            if (table != null && table.Rows.Count > 0)
            {
                sql = SQLGeneration.MySQLGeneration(tablename, "  ArticleType=" + table.Rows[0]["ID"].ToString(), SQLType);
            }
            else
            {
                return null;
            }

            table=DBHelper.GetTable(sql, DBHelper.connStr);

            if (table != null)
            {
                table.TableName = "ow_article";
                return table;
            }
            else
            {
                return null;
            }
        }
    }
}
