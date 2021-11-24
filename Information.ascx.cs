using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Action_Information : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = CODE_EX_9.Student.Information_student(Session["Code"].ToString());
        if (dt.Rows.Count != 0)
        {
            Literal_Name.Text = dt.Rows[0]["TenSV"].ToString();
            Literal_sex.Text = dt.Rows[0]["Gioitinh"].ToString();
            Literal_birth.Text = dt.Rows[0]["Ngaysinh"].ToString();
            Literal_location.Text = dt.Rows[0]["DiachiSv"].ToString();
        }
    }
    protected void fix_click(object sender, EventArgs e)
    {
        PlaceHolder_fix.Controls.Add(LoadControl("Fix.ascx"));
    }
}