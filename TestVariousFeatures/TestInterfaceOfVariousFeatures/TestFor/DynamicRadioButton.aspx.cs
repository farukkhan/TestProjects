using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace TestInterfaceOfVariousFeatures.TestFor
{
    public partial class DynamicRadioButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddContents();
            }
        }

        //protected override void OnPreLoad(EventArgs e)
        //{
        //    base.OnPreLoad(e);
        //}

        //protected override void OnInit(EventArgs e)
        //{
        //    base.OnInit(e);

        //    AddContents(dummy:true);
        //}

        protected override void Render(HtmlTextWriter writer)
        {
            base.Render(writer);

            AddContents(dummy: true);
        }

        protected void AddContents(bool dummy=false)
        {
            int icount = 1;

            if (Session["count"] != null && !dummy)
            { 
              icount=Convert.ToInt32(Session["count"]);
            }

            divRbtnLst.Controls.Clear();

            HtmlTable htmlTable = new HtmlTable();

            HtmlTableRow tr = new HtmlTableRow();
            htmlTable.Rows.Add(tr);

            HtmlTableCell td = new HtmlTableCell();
            tr.Cells.Add(td);

            RadioButtonList rbtnLst = new RadioButtonList();
            rbtnLst.ID = "rbtnAnswerList";

            td.Controls.Add(rbtnLst);

            ListItem lstItem = new ListItem();
            lstItem.Text = "I am no " + icount.ToString();
            lstItem.Value = icount.ToString();
            rbtnLst.Items.Add(lstItem);
            icount += 1;

            lstItem = new ListItem();
            lstItem.Text = "I am no " + icount.ToString();
            lstItem.Value = icount.ToString();
            rbtnLst.Items.Add(lstItem);
            icount += 1;

            lstItem = new ListItem();
            lstItem.Text = "I am no " + icount.ToString();
            lstItem.Value = icount.ToString();
            rbtnLst.Items.Add(lstItem);
            icount += 1;

            divRbtnLst.Controls.Add(htmlTable);

            if (!dummy)
            {
                Session["count"] = icount.ToString();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            AddContents();
        }
    }
}