using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetaiTH_Control : System.Web.UI.UserControl
{
    String modul = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["modul"] != null)
            modul = Request.Params["modul"];

        switch (modul)
        {
            case "fix":
                PlaceHolder_control.Controls.Add(LoadControl("fix.ascx"));
                break;
        }
    }
}