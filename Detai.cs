using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Detai
/// </summary>
/// nam
namespace CODE_EX_9
{
    public class Detai
    {
        public static DataTable Information_Detai()
        {
            OleDbCommand cmd = new OleDbCommand("Information_Detai");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static void Update_Detai(string MaDetai, string MASV, string Nguoihuongdan, String Ngaybatdau, String Ngayketthuc)
        {
            OleDbCommand cmd = new OleDbCommand("Update_Detai");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaDetai", MaDetai);
            cmd.Parameters.AddWithValue("@MASV", MASV);
            cmd.Parameters.AddWithValue("@Nguoihuongdan", Nguoihuongdan);
            cmd.Parameters.AddWithValue("@Ngaybatdau", Ngaybatdau);
            cmd.Parameters.AddWithValue("@Ngayketthuc", Ngayketthuc);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        public static DataTable information_Detai_id(string MaDetai, String MASV)
        {
            OleDbCommand cmd = new OleDbCommand("information_Detai_id ");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaDetai", MaDetai);
            cmd.Parameters.AddWithValue("@MASV", MASV);
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable information_DETAITH_id(string MaDetai)
        {
            OleDbCommand cmd = new OleDbCommand("information_DETAITH_id ");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaDetai", MaDetai);
            return SQLDatabase.GetData(cmd);
        }
    }
}