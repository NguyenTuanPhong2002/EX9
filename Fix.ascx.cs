using System;
using System.Data;


public partial class Action_WebUserControl : System.Web.UI.UserControl
{
    String id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = CODE_EX_9.Student.Information_student(Session["Code"].ToString());

        if (dt.Rows.Count != 0)
        {
            id = dt.Rows[0]["MASV"].ToString();
            TextBox_Name.Text = dt.Rows[0]["TenSV"].ToString();
            TextBox_sex.Text = dt.Rows[0]["Gioitinh"].ToString();
            TextBox_bỉth.Text = dt.Rows[0]["Ngaysinh"].ToString();
            TextBox_location.Text = dt.Rows[0]["DiachiSv"].ToString();
        }
    }
    protected void Button_ok(object sender, EventArgs e)
    {
        CODE_EX_9.Student.Update_student(id, TextBox_Name.Text, TextBox_sex.Text, TextBox_bỉth.Text , TextBox_location.Text);
    }
}