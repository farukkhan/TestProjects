<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxWSPageMethods.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.AjaxWSPageMethods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
 <span class="Apple-style-span" style="color: rgb(0, 0, 0); font-family: 'Times New Roman';
        font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal;
        line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-decorations-in-effect: none;
        -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium;">
        <img src="http://localhost:3223/Images/330.png"></span>   <link type="text/css" href="Style/CSS/ui.all.css" rel="stylesheet" />
    <script type="text/javascript" src="JQuery/Scripts/jquery-1.3.2-vsdoc.js"></script>
    <script type="text/javascript" src="JQuery/Scripts/ui.core.js"></script>
    <script type="text/javascript" src="JQuery/Scripts/ui.progressbar.js"></script>

  <style type="text/css">
  
  .progressbar {
  background-color:transparent;
  position: fixed;
  top: 0; right: 0; bottom: 0; left: 0;
  opacity: 0.2; /* also -moz-opacity, etc. */
  z-index: 100;
  height:100%;
  width:100%;
}

  
  </style>

</head>
<body>
    <form id="form1" runat="server">
   <table>
    <tr>
     <td colspan="2">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" EnablePageMethods="true">
       <Services>
        <asp:ServiceReference Path="~/WebService.asmx" />
       </Services>
        </asp:ScriptManager>
        <script type="text/javascript" language="javascript">

            $(document).ready(function () {


                $('#<%=chkTest.ClientID  %>').attr('Checked', 'true');
                //                var intervalID = 0;

                //                $("#progressbar").progressbar({ value: 0 });

                //                function updateProgress() {

                //                    var value = $("#progressbar").progressbar("option", "value");
                //                    if (value < 100) {
                //                        $("#progressbar").progressbar("value", value + 1);
                //                    }
                //                }

                $('#<%=btnGetCustomer.ClientID  %>').click(function () {

                    //                    intervalID = setInterval(updateProgress, 250);

                    GetCustomer();

                    return false;

                });


                function GetCustomer() {

                    //$("#progressbar").progressbar({ disabled: false });

                    $("#progressbar").addClass("progressbar");
                    PageMethods.GetCustomer(WsCompleted);
                    //                 TestInterfaceOfVariousFeatures.WebService.GetCustomer(WsCompleted);
                    //                TestInterfaceOfVariousFeatures.WebService.HelloWorld("Faruk", WsCompleted);

                    return false;
                };

                function WsCompleted(result) {

                    if (result != null) {

                        // $("#progressbar").progressbar({ disabled: true });
                        // $("#progressbar").progressbar("value", 100);

                        var CustomerId = document.getElementById("txtCustomerId");
                        var CustomerName = document.getElementById("txtCustomerName");

                        CustomerId.value = result.Id;
                        CustomerName.value = result.Name;

                        $("#progressbar").removeClass();

                        //clearInterval(intervalID);
                    }

                };

            });
    
    </script>
     </td>
    </tr>
    <tr>
      <td>
          <asp:CheckBox ID="chkTest" runat="server" />
      </td>
      <td>
      
      </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblCustomerId" runat="server" Text="CustomerId"></asp:Label>
    </td>
     <td>
         <asp:TextBox ID="txtCustomerId" runat="server" 
             ontextchanged="txtCustomerId_TextChanged"></asp:TextBox>
     </td>
    </tr>
     <tr>
    <td>
        <asp:Label ID="lblCustomerName" runat="server" Text="CustomerName"></asp:Label>
    </td>
     <td>
         <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
     </td>
    </tr>
    <tr>
     <td colspan="2">
      &nbsp;
     </td>
    </tr>
    <tr>
     <td>
      &nbsp;
     </td>
     <td>
         <asp:Button ID="btnGetCustomer" runat="server" Text="GetCustomer" />
     </td>
    </tr>
   </table>
        <div id="progressbar"><img src="Images/330.png" /></div>
  </form>
</body>
</html>
