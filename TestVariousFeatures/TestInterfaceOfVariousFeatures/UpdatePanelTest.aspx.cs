using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestInterfaceOfVariousFeatures
{
    public partial class UpdatePanelTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitBasic_Click(object sender, EventArgs e)
        {
            txtBasicName.Text += "-test";
        }
    }
}