using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CODE_EX_9.Action
{
    public partial class Action_Navigation : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["Code"].ToString() != "0")
            {
                PlaceHolder_Action_Ìnormation.Controls.Add(LoadControl("Information.ascx"));
            }
           
        }
    }
}