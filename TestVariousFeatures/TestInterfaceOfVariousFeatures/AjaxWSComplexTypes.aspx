<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxWSComplexTypes.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.AjaxWSComplexTypes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 297px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
   <table>
    <tr>
     <td colspan="2">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
       <Services>
        <asp:ServiceReference Path="~/WebService.asmx" />
       </Services>
        </asp:ScriptManager>
        <script type="text/javascript" language="javascript">

            function GetCustomer() {


                 TestInterfaceOfVariousFeatures.WebService.GetCustomer(WsCompleted);
//                TestInterfaceOfVariousFeatures.WebService.HelloWorld("Faruk", WsCompleted);

                return false;
            }

            function WsCompleted(result) {

                if (result != null) {

                    var CustomerId = document.getElementById("txtCustomerId");
                    var CustomerName = document.getElementById("txtCustomerName");

                    CustomerId.value = result.Id;
                    CustomerName.value = result.Name;
                    

                }

            }
    
    </script>
     </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblCustomerId" runat="server" Text="CustomerId"></asp:Label>
    </td>
     <td>
         <asp:TextBox ID="txtCustomerId" runat="server"></asp:TextBox>
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
         <asp:Button ID="btnGetCustomer" runat="server" Text="GetCustomer" OnClientClick="return GetCustomer();" 
             onclick="btnGetCustomer_Click" />
     </td>
    </tr>
   </table>
    </form>
</body>
</html>
