using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace Ehealth
{
    public class SQLHelper
    {
        public static string strConnect;

        public OleDbConnection GetConnection()
        {
            OleDbConnection conn = new OleDbConnection(strConnect);
            return conn;
        }
        public DataTable ExecuteSelectTable(string strSQL)
        {
            OleDbConnection conn = GetConnection();
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(strSQL, conn);
            da.Fill(dt);
            conn.Close();
            conn.Dispose();
            da.Dispose();
            return dt;
         
        }

        public int ExecuteSelectQuery(string strSQL)
        {
            OleDbConnection conn = GetConnection();
            OleDbCommand command = new OleDbCommand(strSQL, conn);
            int count = Convert.ToInt32(command.ExecuteScalar().ToString());
           // conn.Close();


            //int retval = 0;

            //try
            //{

            //    retval = command.ExecuteScalar();

            //}                else
            //    {
            //        retval = command.ExecuteNonQuery();
            //    }
            //}
            return count;

        }

        public int ExecuteInsUpDel(string strSQL, bool returnid = false)
        {
            OleDbConnection conn = GetConnection();
            OleDbCommand command = new OleDbCommand(strSQL, conn);
            command.CommandType = CommandType.Text;
            conn.Open();
            int retval = 0;

            try
            {
                if (returnid)
                {
                    command.ExecuteNonQuery();
                    command.CommandText = "SELECT @@IDENTITY";
                 //   retval = command.ExecuteScalar();

                }
                else
                {
                    retval = command.ExecuteNonQuery();
                }
            }
            catch (Exception ex) {
                //TODO - Message
                retval = -1;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
                command.Dispose();

            }
            return retval;
        }


    }
}