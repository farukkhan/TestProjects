using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestInterfaceOfVariousFeatures
{
    public partial class RegularExpressionTest : System.Web.UI.Page
    {
        string bodyToMatch="{\"categoryList\":null,\"repositories\":[{\"name\":\"Billbacks\",\"oid\":\"Billbacks\"},{\"name\":\"Category Management\",\"oid\":\"CatMan\"},{\"name\":\"Category Management (Multi-tier)\",\"oid\":\"CatManDual\"},{\"name\":\"GMI VADAR\",\"oid\":\"GMI_VADAR\"},{\"name\":\"MarketMover\",\"oid\":\"MMIB\"},{\"name\":\"MarketMover Survey\",\"oid\":\"MMS\"},{\"name\":\"Programs\",\"oid\":\"Programs\"},{\"name\":\"Redemptions\",\"oid\":\"Redemptions\"},{\"name\":\"Sales\",\"oid\":\"Sales\"},{\"name\":\"Shipments\",\"oid\":\"Shipments\"}],\"sessionId\":\"bf247169-92ec-4bc6-8b4e-fb7e103ac5d9\",\"userInfo\":{\"companyName\":\"Sentrana, Inc.\",\"firstName\":\"Md. Faruk Hossen\",\"lastName\":\"Khan\",\"userID\":66}}";
        private string expression = @"^(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}$";
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExtract_Click(object sender, EventArgs e)
        {
            Regex regex = new Regex(expression,RegexOptions.IgnoreCase);

            MatchCollection matchCol = regex.Matches(bodyToMatch);
        }

    }
}