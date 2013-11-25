using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestInterfaceOfVariousFeatures
{
    public partial class JavascriptWithJquery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //lblBiColoredtext.Text = "<span class='redColorText' >test name </span><span class='blueColorText' >test name </span> ";

            //string str = "   this is a test  to see  how  multi space works";

            //string[] arrstr = str.Split(' ');


            //Response.Write(arrstr.Length);

        }

        protected void btnSubmitBasic_Click(object sender, EventArgs e)
        {
            txtBusinessName.Text = "Changed from Basic";

            txtBasicName.Text += " test";
        }

        protected void btnSubmitBusiness_Click(object sender, EventArgs e)
        {
            txtBasicName.Text = "Changed from Business";

            txtBusinessName.Text += " test";

        }
    }
}
