using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DSDKDETAI : System.Web.UI.Page
{
    int result = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        dt = CODE_EX_9.Detai.Information_Detai();
        dt2 = CODE_EX_9.Detai.information_DETAITH_id(TextBox1.Text);
        Literal1.Text = dt2.Rows[0]["TenDetai"].ToString();
        Literal2.Text = dt2.Rows[0]["LoaiDetai"].ToString();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i]["MaDetai"].ToString() == TextBox1.Text)
            {
                result++;
                dt1 = CODE_EX_9.Student.Information_student(dt.Rows[i]["MASV"].ToString());

                Literal4.Text += @"
                <tr>
                    <th>" + dt.Rows[i]["MASV"] + @"</th>
                    <th>" + dt1.Rows[0]["TenSV"] + @"</th>
                    <th>" + dt1.Rows[0]["Gioitinh"] + @"</th>
                    <th>" + dt1.Rows[0]["Ngaysinh"] + @"</th>
                    <th>" + dt1.Rows[0]["DiachiSv"] + @"</th>
                    <th></th>
                </tr>
                ";
            }

        }
        Literal3.Text = result.ToString();
    }
}