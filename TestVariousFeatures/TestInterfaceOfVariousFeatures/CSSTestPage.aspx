<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSTestPage.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.CSSTestPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
     <tr>
      <td style="padding:10px;background-color:Blue;border-width:20px;border-color:Red;border-style:solid">
       test border property.
      </td>
     </tr>
     <tr>
      <td width="200px" style="position:relative;top:0px;background-color:Green;border-width:20px;border-color:Red;border-style:solid">
       test border property.
      </td>
     </tr>
     <tr>
      <td width="200px" style="background-color:Black">
       test border property.
      </td>
     </tr>
    </table>
    </form>
</body>
</html>
