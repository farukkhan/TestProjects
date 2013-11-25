using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestInterfaceOfVariousFeatures.Classes;

namespace TestInterfaceOfVariousFeatures
{
    public partial class AccessMOdifierTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
            //Session["ListofQuestions"]=
               //Session["CurrentIndex"] = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //CChild oChild = new CChild();
            ////oChild.Id = 5;

            ////TextBox1.Text = oChild.Id.ToString();
            List<int> lstitems = new List<int>();

        }

        //protected void ShowNextData()
        //{
        //    List<introductionanatomy> introductionanatomyList = (List<introductionanatomy>)Session["ListofQuestions"];
        //    int iCurrentIndex = Session["CurrentIndex"] == null ? 0 : (int)Session["CurrentIndex"];

        //    introductionanatomy ointroductionanatomy = introductionanatomyList.Count > iCurrentIndex ? introductionanatomyList[iCurrentIndex + 1] : null;
        //    if (ointroductionanatomy != null)
        //    {
        //        AddData(ointroductionanatomy);
        //        Session["CurrentIndex"] = iCurrentIndex + 1;
        //    }
        //}
    }
}
