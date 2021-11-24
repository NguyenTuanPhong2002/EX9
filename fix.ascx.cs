using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetaiTH_fix : System.Web.UI.UserControl
{
    String id = "";
    String code = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["id"] != null)
            id = Request.Params["id"];
        if (Request.Params["code"] != null)
            code = Request.Params["code"];
        DataTable dt = new DataTable();
        dt = CODE_EX_9.Detai.information_Detai_id(id, code);
        TextBox_leader.Text = dt.Rows[0]["Nguoihuongdan"].ToString();
        TextBox_timebegin.Text = dt.Rows[0]["Ngaybatdau"].ToString();
        TextBox_timefinish.Text = dt.Rows[0]["Ngayketthuc"].ToString();
    }
    protected void Bitton_fix_click(object sender, EventArgs e)
    {
        CODE_EX_9.Detai.Update_Detai(id, code, TextBox_leader.Text, TextBox_timebegin.Text, TextBox_timefinish.Text);
        Response.Redirect("/DETAITH.aspx");
    }
}