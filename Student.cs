using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace CODE_EX_9
{
    public class Student
    {
        public static DataTable Information_student(string MASV)
        {
            OleDbCommand cmd = new OleDbCommand("INFORMATION_STUDENT");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MASV", MASV);
            return SQLDatabase.GetData(cmd);
        }
        public static void Update_student(string MASV, String TenSV, String Gioitinh, String Ngaysinh, String DiachiSv)
        {
            OleDbCommand cmd = new OleDbCommand("UPDATE_STUDENT");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MASV", MASV);
            cmd.Parameters.AddWithValue("@TenSV", TenSV);
            cmd.Parameters.AddWithValue("@Gioitinh", Gioitinh);
            cmd.Parameters.AddWithValue("@Ngaysinh", Ngaysinh);
            cmd.Parameters.AddWithValue("@DiachiSv", DiachiSv);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
    }
}