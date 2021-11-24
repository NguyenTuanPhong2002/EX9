using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CODE_EX_9.Action
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = CODE_EX_9.Student.Information_student(TextBox_CodeStudent.Text);
            if (dt.Rows.Count > 0)
            {
                Session["Code"] = dt.Rows[0]["MASV"];
            }
        }
    }
}