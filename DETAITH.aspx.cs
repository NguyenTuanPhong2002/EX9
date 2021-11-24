using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DETAITH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        dt = CODE_EX_9.Detai.Information_Detai();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt1 = CODE_EX_9.Student.Information_student(dt.Rows[i]["MASV"].ToString());
            dt2 = CODE_EX_9.Detai.information_DETAITH_id(dt.Rows[i]["MaDetai"].ToString());
            Literal1.Text += @"
            <tr>
                <td class='code'>" + dt2.Rows[0]["TenDetai"] + @"</td>
                <td class='code_student'>" + dt1.Rows[0]["TenSV"] + @"</td>
                <td class='leader'>" + dt.Rows[i]["Nguoihuongdan"] + @"</td>
                <td class='time_begin'>" + dt.Rows[i]["Ngaybatdau"] + @"</td>
                <td class='time_up'>" + dt.Rows[i]["Ngayketthuc"] + @"</td>
                <th class='tool'>
                    <a href = 'DETAITH.aspx?modul=fix&id=" + dt.Rows[i]["MaDetai"] + @"&code=" + dt.Rows[i]["MASV"] + @"' class='sua'>sua</a>
                </th>
            </tr>
            ";

        }
    }
}