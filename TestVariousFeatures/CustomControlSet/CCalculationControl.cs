using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CustomControlSet
{
    public enum EOperationType
    {
     Addition=0,
     Substraction=1,
     Multiplication=2,
     Division=3
    };

    /// <summary>
    ///
    /// </summary>
    [DefaultEvent("Click")]
    [ToolboxData("<{0}:CalculationControl runat=server></{0}:CalculationControl>")]
    public class CalculationControl : WebControl, INamingContainer
    {
        EOperationType eOperationType = new EOperationType();
        TextBox txtFirstNumber;
        TextBox txtSecondNumber;
        TextBox txtResult;
        Button btnCalculation;

        #region Properties 

        /// <summary>
        /// Gets and sets The result of the calculation
        /// </summary>
        public TextBox Result
        {
            get { 
                return txtResult; }
            set { txtResult = value; }
        }

        /// <summary>
        /// The first number to operate
        /// </summary>
        public TextBox FirstNumber
        {
            get { return txtFirstNumber; }
            set { txtFirstNumber = value; }
        }

        /// <summary>
        /// The second number to operate
        /// </summary>
        public TextBox SecondNumber
        {
            get { return txtSecondNumber; }
            set { txtSecondNumber = value; }
        }

      
        /// <summary>
        /// Operation type
        /// </summary>
        [Bindable(true)]
        public EOperationType OperationType
        {
            get { return eOperationType; }
            set { eOperationType = value; }
        }
        
        /// <summary>
        /// Gets or sets the client side event to bind
        /// </summary>
        [Bindable(true)]
        public string onclickcalculate
        {
            get { return btnCalculation.Attributes["onclick"]; }
            set
            {
                EnsureChildControls();
                btnCalculation.Attributes.Add("onclick", value);
            }
            
        }

        #endregion Properties

        /// <summary>
        /// This is the default constructor of the CalculationControl
        /// </summary>
        ///<remarks></remarks>
        public CalculationControl():base()
        {
            //Any code needed to initialize the object put here.
        }
        
        /// <summary>
        /// This method adds all the child control to the controls collection.
        /// </summary>
        protected override void CreateChildControls()
        {
            txtFirstNumber = new TextBox();
            txtSecondNumber = new TextBox();
            txtResult = new TextBox();
            btnCalculation = new Button();
            
            btnCalculation.Width = Unit.Point(20);
            btnCalculation.Text = "=";

            //Subscribe to the click event
            btnCalculation.Click += new EventHandler(btnCalculation_Click);

            //Add all the controls to the container.
            this.Controls.Add(txtFirstNumber);
            this.Controls.Add(txtSecondNumber);
            this.Controls.Add(txtResult);
            this.Controls.Add(btnCalculation);
        }

        /// <summary>
        /// This methos handles the btnCalculation event.
        /// </summary>
        /// <param name="sender">the sender</param>
        /// <param name="e">contains the additional information for the event</param>
        protected void btnCalculation_Click(object sender, EventArgs e)
        {
            try
            {
                int iFirstNumber = Convert.ToInt32(txtFirstNumber.Text);
                int iSecondNumber = Convert.ToInt32(txtSecondNumber.Text);

                if (eOperationType.Equals(EOperationType.Addition))
                {
                    txtResult.Text = (iFirstNumber + iSecondNumber).ToString();
                }
                else if (eOperationType.Equals(EOperationType.Substraction))
                {
                    txtResult.Text = (iFirstNumber - iSecondNumber).ToString();
                }
                else if (eOperationType.Equals(EOperationType.Multiplication))
                {
                    txtResult.Text = (iFirstNumber * iSecondNumber).ToString();
                }
                else if (eOperationType.Equals(EOperationType.Division))
                {
                    txtResult.Text = (iFirstNumber / iSecondNumber).ToString();
                }
            }
            catch
            { 
            
            }
        }

        /// <summary>
        /// Creates the html output for the control.
        /// </summary>
        /// <param name="output">Html text writer</param>
        protected override void RenderContents(HtmlTextWriter output)
        {
            output.RenderBeginTag(HtmlTextWriterTag.Table);
            output.RenderBeginTag(HtmlTextWriterTag.Tr);

            output.RenderBeginTag(HtmlTextWriterTag.Td);
            ((TextBox)this.Controls[0]).RenderControl(output);
            output.RenderEndTag();

            output.RenderBeginTag(HtmlTextWriterTag.Td);

            if (this.OperationType.Equals(EOperationType.Addition))
            {
                output.Write("+");
            }
            else if (this.OperationType.Equals(EOperationType.Substraction))
            {
                output.Write("-");
            }
            else if (this.OperationType.Equals(EOperationType.Multiplication))
            {
                output.Write("*");
            }
            else if (this.OperationType.Equals(EOperationType.Division))
            {
                output.Write("/");
            }

            output.RenderEndTag();

            output.RenderBeginTag(HtmlTextWriterTag.Td);
            ((TextBox)this.Controls[1]).RenderControl(output);
            output.RenderEndTag();

            output.RenderBeginTag(HtmlTextWriterTag.Td);
            ((Button)this.Controls[3]).RenderControl(output);
            output.RenderEndTag();

            output.RenderBeginTag(HtmlTextWriterTag.Td);
            ((TextBox)this.Controls[2]).RenderControl(output);
            output.RenderEndTag();

            output.RenderEndTag();
            output.RenderEndTag();

        }

        /// <summary>
        /// The on prerender event handler of the custom control
        /// </summary>
        /// <param name="e">the event arg parameter contains 
        /// additional informtion for the event</param>
        protected override void OnPreRender(EventArgs e)
        {
            //Just to make sure the child controls are added.
            EnsureChildControls();
        }
    }
}
