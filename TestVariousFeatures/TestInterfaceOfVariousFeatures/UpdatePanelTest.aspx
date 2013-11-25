<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelTest.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.UpdatePanelTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="JQuery/jquery-1.2.6-vsdoc.js"></script>
    <script type="text/javascript">

        //$(document).ready(function () {
        function pageLoad(sender, args) {

            var iClickCount = 0;

            $('#accordion h3').click(function () {

                if (iClickCount == 0) {

                    $(this).next().toggle('slow');

                    iClickCount += 1;

                }
                else {
                
                    iClickCount = 0;
                
                }

                //alert($('#accordion h3').next().text());

                return false;

            }).next().hide();

        }
        //})
    
    </script>

    <style type="text/css">
    
    .redColorText
    {
        color:Red;
        }
    .blueColorText
    {
        color:Blue;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

     <div id="accordion">
       <h3><a href="#">First header</a></h3>
       <div>First content</div>
       <h3><a href="#">Second header</a></h3>
       <div>Second content</div>
     </div>

    <div>  fadfdef</div>

    <table>
      <tr>
        <td>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
            <asp:Label ID="lblName" runat="server" Text="Basic Name :"></asp:Label>
            <asp:TextBox ID="txtBasicName" runat="server"></asp:TextBox>
          </ContentTemplate>
          <Triggers>
           <asp:AsyncPostBackTrigger ControlID="btnSubmitBasic" EventName="Click" />
          </Triggers>
         </asp:UpdatePanel>

        <asp:Button ID="btnSubmitBasic" runat="server" Text="SubmitBasic" 
            onclick="btnSubmitBasic_Click" />
        
        </td>  
      </tr>
    </table>
         
    
    </div>
    </form>
</body>
</html>
