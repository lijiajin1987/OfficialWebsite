using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;

namespace DataBaseControl
{
    class DBHelper
    {
        // 在配置文件获得连接字符串
        public static string connStr = ConfigurationManager.AppSettings["MySql"].ToString();
        /// <summary>
        /// 执行增删改语句
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <param name="sqlstring">连接字符串</param>
        /// <returns></returns>
        public static int Update(string sql, string sqlstring)
        {
            
             int row = 0;
                using (MySqlConnection conn = new MySqlConnection(sqlstring))
                {
                    conn.Open();
                    //事务
                    MySqlTransaction tran = conn.BeginTransaction();
                    MySqlCommand command = new MySqlCommand(sql, conn, tran);
                    try
                    {
                        row = command.ExecuteNonQuery();
                        tran.Commit();
                    }
                    catch (Exception)
                    {
                        //出错回滚
                        tran.Rollback();
                    }
                    conn.Close();
                }
            return row;
        }
        public static int Update(string sql, string sqlstring,List<MySqlParameter> mysqlparameter)
        {

            int row = 0;
            using (MySqlConnection conn = new MySqlConnection(sqlstring))
            {
                conn.Open();
                //事务
                MySqlTransaction tran = conn.BeginTransaction();
                MySqlCommand command = new MySqlCommand(sql, conn, tran);
                command.Parameters.AddRange(mysqlparameter.ToArray());
                try
                {
                    row = command.ExecuteNonQuery();
                    tran.Commit();
                }
                catch (Exception ex)
                {
                    //出错回滚
                    tran.Rollback();
                }
                conn.Close();
            }
            return row;
        }
        /// <summary>
        /// 查询语句
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <param name="sqlstring">连接字符串</param>
        /// <returns></returns>
        public static DataTable GetTable(string sql, string sqlstring)
        {
            DataTable dt = new DataTable();
            //DataTable方法
            //dt.Rows[i].ItemArray[i]
            //第一个i表示行数，ItemArray以数组形式返回该行,i表示第几列
            //i都从0开始
            MySqlConnection conn = new MySqlConnection(sqlstring);
            conn.Open();
            using (MySqlDataAdapter da = new MySqlDataAdapter(sql, conn))
            {
                da.Fill(dt);
            }
            conn.Close();
            return dt;
        }

        /// <summary>
        /// 查询语句（返回第一行第一列）
        /// 多用于Select Count
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <param name="sqlstring">连接字符串</param>
        /// <returns></returns>
        public static String GetOne(string sql, string sqlstring)
        {
            string result = "";
            using (MySqlConnection conn = new MySqlConnection(sqlstring))
            {
                conn.Open();
                MySqlCommand command=new MySqlCommand(sql,conn);
                object o=command.ExecuteScalar();
                result = o==null?"":o.ToString();
                conn.Close();
            }
            return result;
        }
        /// <summary>
        /// 查询语句（返回第一条）
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <param name="sqlstring">连接字符串</param>
        /// <returns></returns>
        public static List<string> GetListString(string sql, string sqlstring)
        {
            List<string> list=new List<string>();
            using (MySqlConnection conn = new MySqlConnection(sqlstring))
            {
                conn.Open();
                MySqlCommand command = new MySqlCommand(sql, conn);
                MySqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    list.Add(dr[0].ToString());
                }

                conn.Close();
            }
            return list;
        }
        /// <summary>
        /// 判断是否存在
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <returns></returns>
        public static bool Exists(string sql,string sqlstring)
        {
            bool row = false;
            using (MySqlConnection conn = new MySqlConnection(sqlstring))
            {
                conn.Open();
                MySqlCommand command = new MySqlCommand(sql, conn);
                MySqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    row = true;
                }
                dr.Close();
                conn.Close();
            }
            return row;
        }

        /// <summary>
        /// 执行SQL语句 
        /// </summary>
        /// <param name="SQLStringList">SQL语句</param>
        public static void ExecuteSqlTran(List<string> SQLStringList,string sqlstring)
        {
            using (
                MySqlConnection conn =
                    new MySqlConnection(sqlstring))
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = conn;
                MySqlTransaction tx = conn.BeginTransaction();
                cmd.Transaction = tx;
                    int len = SQLStringList.Count;
                    for (int n = 0; n < len; n++)
                    {
                        string strsql = SQLStringList[n];
                        if (strsql.Trim().Length > 1)
                        {
                            cmd.CommandText = strsql;
                            cmd.ExecuteNonQuery();
                        }
                        //后来加上的  
                        if (len == 1)
                        {
                            tx.Commit();
                        }
                        else if (n > 0 && (n % 500 == 0 || n == len - 1))
                        {
                            tx.Commit();
                            if (n != len - 1)
                            {
                                tx = conn.BeginTransaction();
                            }
                        }
                    }
                }
            }
        /// <summary>
        /// 拼接SQL语句
        /// </summary>
        /// <returns></returns>
        public static List<string> GetSqlStringallList(List<object> list1, List<object> list2)
        {
            List<string> sqlList = new List<string>();
            //拼写SQL语句
            StringBuilder sbr = new StringBuilder("insert into Table values");
            int count = 0; //插入语句个数
            int n = list1.Count; //所有个数
            int i = 0;
            foreach (object gm in list1)
            {
               /* List<object> zhuList2 = list1.Where(ct => ct.catalogcode == gm.目录 && ct.groupcode == gm.组 && ct.subcategorycode == gm.子系).ToList();
                if (zhuList1 != null || zhuList1.Count > 0)
                {
                    foreach (zhuModel zhu in zhuList1)
                    {
                        sbr.Append("(");
                        //Content
                        sbr.Append(")");
                        count++;
                        if (count % 500 == 0)
                        {
                            sbr.Append(";");
                            sqlList.Add(sbr.ToString());
                            sbr = new StringBuilder("insert into parts_凯迪拉克2次整理 values ");
                        }
                        else
                        {
                            sbr.Append(",");
                        }
                    }
                }*/
                i++;
            }
            if (i == n && count % 500 != 0)
            {
                string sql = sbr.ToString();
                if (sql.EndsWith(","))
                {
                    sql = sql.Substring(0, sql.Length - 1);
                }
                sql += ";";
                sqlList.Add(sql);
            }
            return sqlList;
        }

        /// <summary>
        /// JSON
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
         private static string DataTableToModel(DataTable dt)
        {
            var jsonStr = "";
            if (dt.Rows.Count > 0)
            {
                jsonStr = "[";
                foreach (DataRow row in dt.Rows)
                {
                    jsonStr += "{";
                    foreach (DataColumn item in dt.Columns)
                    {
                        var type = item.DataType;//还可以获取列的数据类型
                        if (item.DataType.Equals (System.Type.GetType ("System.DateTime")))
                        {
                            Convert.ToDateTime (row[item.ToString ()]).ToString ("yyyy-MM-dd HH:mm:ss").Trim ();
                        }
                        else
                        {
                            jsonStr += "\"" + item.ToString () + "\":\"" + row[item.ToString ()].ToString () + "\",";
                        }
                    }
                    jsonStr += "},";
                }
                jsonStr = jsonStr.TrimEnd (',') + "]";
            }
            return jsonStr;
        }
    }
}
