<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestObjectRefference.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.TestObjectRefference" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <table>
      <tr>
       <td colspan="2"></td>
      </tr>
      <tr>
      <td>
       Old Object Name :
      </td>
      <td>
       <asp:TextBox runat="server" ID="txtOldObjectName"></asp:TextBox>
      </td>
      </tr>
      <tr>
       <td>
       New Object Name :
      </td>
      <td>
       <asp:TextBox runat="server" ID="txtNewObjectName"></asp:TextBox>
      </td>
      </tr>
      <tr>
       <td>
       &nbsp;
      </td>
      <td>
       <asp:Button runat="server" ID="btnGetTheValues" Text="GetTheValues" 
              onclick="btnGetTheValues_Click" />
      </td>
      </tr>
      
     </table>
    </form>
</body>
</html>
