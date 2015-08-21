using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
namespace DataBaseControl
{
    public class SQLGeneration
    {
        /// <summary>
        /// mysql语句生成（单表）
        /// </summary>
        /// <param name="table">表数据</param>
        /// <param name="id">主键</param>
        /// <param name="sqltype">0-增加,1-修改,2-删除，3-查询,4-获取表结构</param>
        /// <param name="tablename">表名</param>
        /// <param name="Keys">条件列表</param>
        /// <returns></returns>
        public static string MySQLGeneration(DataTable table,string PrimaryKey,int sqltype,string tablename,List<string> Keys)
        {
            string sql = "";

            if (!string.IsNullOrEmpty(tablename))//如果不存在表明则返回空字符串
            {
                return "";
            }
            #region 生成开始
            //INSERT INTO ow_account (AccountNumber,Pwd) VALUES('ljj','123456')
            //UPDATE ow_account SET AccountNumber='ljjs',Pwd='1234567' WHERE id=2
            //DELETE FROM ow_account WHERE id=2
            //获取一个空表
            //SELECT * FROM ow_account WHERE 1!=1

            StringBuilder Columns = new StringBuilder();
            StringBuilder Columns_Data = new StringBuilder();
            StringBuilder UpColumns_Data = new StringBuilder();
            StringBuilder Where = new StringBuilder();

            if (table != null)
            {
                for (int i = 0; i < table.Columns.Count; i++)
                {
                    if (table.Columns[i].ColumnName == PrimaryKey)
                    {
                        ////Where.Append(PrimaryKey + "=" + table.Rows[0][table.Columns[i].ColumnName]);
                        //if (TypeCheck(table.Columns[i]))
                        //{
                        //    Where.Append(table.Columns[i].ColumnName + "=" + table.Rows[0][table.Columns[i].ColumnName].ToString().Trim());
                        //}
                        //else
                        //{
                        //    Where.Append(table.Columns[i].ColumnName + "='" + table.Rows[0][table.Columns[i].ColumnName].ToString().Trim()+"'");
                        //}
                        
                        continue;
                    }
                    Columns.Append("," + table.Columns[i].ColumnName);
                    if (TypeCheck(table.Columns[i]))
                    {
                        Columns_Data.Append("," + table.Rows[0][table.Columns[i].ColumnName]);
                        UpColumns_Data.Append("," + table.Columns[i].ColumnName + "=" + table.Rows[0][table.Columns[i].ColumnName]);
                    }
                    else
                    {
                        Columns_Data.Append(",'" + table.Columns[i].ColumnName + "'");
                        UpColumns_Data.Append("," + table.Columns[i].ColumnName + "='" + table.Rows[0][table.Columns[i].ColumnName] + "'");
                    }
                }
            }
            //生成条件
            if (Keys == null)
            {
                Where.Append(" WHERE " + PrimaryKey + "=" + table.Rows[0][PrimaryKey]);
            }
            else
            {
                Where.Append(" WHERE ");
                for (int i = 0; i < Keys.Count; i++)
                {
                    if (i==1)
                    {
                        if (TypeCheck(table.Columns[Keys[i]]))
                        {
                            Where.Append(Keys[i].Trim() + " = " + Keys[i]);
                        }
                        else
                        {
                            Where.Append(Keys[i].Trim() + " = '" + Keys[i]+"'");
                        }
                        continue;
                    }
                    if (TypeCheck(table.Columns[Keys[i]]))
                    {
                        Where.Append(Keys[i].Trim() + " = " + Keys[i]);
                    }
                    else
                    {
                        Where.Append(Keys[i].Trim() + " = '" + Keys[i] + "'");
                    }
                }
            }
            switch (sqltype)
            {
                case 0:
                    sql = "INSERT INTO " + tablename + " (" + Columns.ToString().Substring(0, 1) + ") VALUES(" + Columns_Data.ToString().Substring(0, 1) + ")";
                    break;
                case 1:
                    sql="UPDATE "+tablename+" SET "+UpColumns_Data.ToString().Substring(0, 1) + Where.ToString();
                    break;
                case 2:
                    sql="DELETE FROM "+tablename + Where.ToString();
                    break;
                case 3:
                    sql="SELECT "+Columns.ToString().Substring(0, 1)+" FROM "+tablename+Where.ToString();
                    break;
                case 4:
                    sql="SELECT * FROM "+tablename+" WHERE 1!=1";
                    break;
                default:
                    sql="";
                    break;
            }
            #endregion
            return sql;
        }
        /// <summary>
        /// mysql语句生成（单行）
        /// </summary>
        /// <param name="table">要更新的数据集</param>
        /// <param name="PrimaryKey">主键名</param>
        /// <param name="sqltype">0-增加,1-修改,2-删除</param>
        /// <returns></returns>
        public static string MySQLGeneration(DataTable table, string PrimaryKey, int sqltype)
        {
            //初始化变量
            string sql = "";
            //INSERT INTO ow_account (AccountNumber,Pwd) VALUES('ljj','123456')
            //UPDATE ow_account SET AccountNumber='ljjs',Pwd='1234567' WHERE id=2
            //DELETE FROM ow_account WHERE id=2
            //获取一个空表
            //SELECT * FROM ow_account WHERE 1!=1
            string tag = "where";
            StringBuilder Columns = new StringBuilder();
            StringBuilder Columns_Data = new StringBuilder();
            StringBuilder UpColumns_Data = new StringBuilder();
            StringBuilder Where = new StringBuilder();
            string tablename = table.TableName;
            if (table!=null)
            {
                for (int i = 0; i < table.Columns.Count; i++)
                {
                    if (table.Columns[i].ColumnName==PrimaryKey)
                    {
                        if (table.Columns[i].Prefix.Trim() == "where")
                        {
                            Where = addWhere(Where, table.Columns[i].ColumnName);
                            continue;
                        }
                        else
                        {
                            continue;
                        }
                    }
                    Columns = addInsert(Columns, table.Columns[i].ColumnName);
                    Columns_Data = addInsertdata(Columns_Data, table.Columns[i].ColumnName);
                    UpColumns_Data = addUpdate(UpColumns_Data, table.Columns[i].ColumnName);
                    if (table.Columns[i].Prefix.Trim() == "where")
                    {
                        Where = addWhere(Where, table.Columns[i].ColumnName);
                    }
                    
                }
            }
            switch (sqltype)
            {
                case 0:
                    sql = "INSERT INTO " + tablename + " (" + Columns.ToString() + ") VALUES(" + Columns_Data.ToString() + ")";
                    break;
                case 1:
                    sql = "UPDATE " + tablename + " SET " + UpColumns_Data.ToString() + Where.ToString();
                    break;
                case 2:
                    sql = "DELETE FROM " + tablename + Where.ToString();
                    break;
                default:
                    sql = "";
                    break;
            }
            return sql;
        }
        /// <summary>
        /// mysql语句生成（查询）
        /// </summary>
        /// <param name="tablename"></param>
        /// <param name="where"></param>
        /// <param name="sqltype">0-获取表结构，1-获取数据</param>
        /// <returns></returns>
        public static string MySQLGeneration(string tablename, string where,int sqltype)
        {
            string sql = "";
            if (sqltype==0)
            {
                sql = "select * from " + tablename + " where 1!=1";
            }
            if (string.IsNullOrEmpty(where))
            {
                sql = "select * from " + tablename;
            }
            else
            {
                sql = "select * from " + tablename + " where " + where;
            }
            return sql;
        }
        public static bool TypeCheck(DataColumn dc)
        {
            if (dc.DataType == Type.GetType("System.Int32"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static StringBuilder addWhere(StringBuilder where, string ColumnName)
        {
            if (where.ToString().Length <= 0)
            {
                where.Append(" WHERE " + ColumnName + "=@" + ColumnName);
            }
            else
            {
                where.Append(" and "+ColumnName+"=@"+ColumnName);
            }
            return where;
        }
        public static StringBuilder addUpdate(StringBuilder update, string ColumnName)
        {
            if (update.ToString().Length <= 0)
            {
                update.Append( ColumnName + "=@" + ColumnName);
            }
            else
            {
                update.Append("," + ColumnName + "=@" + ColumnName);
            }
            return update;
        }
        public static StringBuilder addInsert(StringBuilder Insert, string ColumnName)
        {
            if (Insert.ToString().Length <= 0)
            {
                Insert.Append(ColumnName);
            }
            else
            {
                Insert.Append(","+ColumnName);
            }
            return Insert;
        }
        public static StringBuilder addInsertdata(StringBuilder Insertdata, string ColumnName)
        {
            if (Insertdata.ToString().Length <= 0)
            {
                Insertdata.Append("@"+ColumnName);
            }
            else
            {
                Insertdata.Append(",@" + ColumnName);
            }
            return Insertdata;
        }
        public static List<MySqlParameter> MySQLGetParameter(DataTable table, List<MySqlParameter> parameter) 
        {
            for (int i = 0; i < table.Columns.Count; i++)
            {
                MySqlParameter mysqlarameter = new MySqlParameter();
                mysqlarameter.ParameterName = table.Columns[i].ColumnName;
                mysqlarameter.Value =table.Rows[0][table.Columns[i].ColumnName];
                parameter.Add(mysqlarameter);
            }
            return parameter;
        }
    }
}
