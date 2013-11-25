using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestInterfaceOfVariousFeatures
{
    public partial class UsingNestedUpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateByPostBack_Click(object sender, EventArgs e)
        {
            txtResultByPostback.Text = calculatecontrol.Result.Text;

            calculatecontrol.Result.Text = "";
        }

        protected void btnGetName_Click(object sender, EventArgs e)
        {
            txtTest.Text = "Hello!!!!!!!!";
        }
    }
}
