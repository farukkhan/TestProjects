using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomControlSet;
using TestInterfaceOfVariousFeatures.Classes;

namespace TestInterfaceOfVariousFeatures
{
    public partial class TestObjectRefference : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetTheValues_Click(object sender, EventArgs e)
        {
            CComponnetUser OldComponnetUser = new CComponnetUser();
            OldComponnetUser.UserName = "Faruk";

            CComponnetUser newComponnetUser = OldComponnetUser;

            newComponnetUser.UserName = "Faruk Hossen";
            //OldComponnetUser = new CComponnetUser();

            CComponnetUser thirdComponentUser = new CComponnetUser();
            newComponnetUser = thirdComponentUser;

            txtNewObjectName.Text = newComponnetUser.UserName;
            txtOldObjectName.Text = OldComponnetUser.UserName;

            CBase oBase1 = new CBase();
            oBase1.Name = "Md. Faruk Hossen Khan";

            CBase oBase2 = new CBase();
            oBase2 = oBase1;

            oBase2.Name = "Murad";
            
        }
    }
}
