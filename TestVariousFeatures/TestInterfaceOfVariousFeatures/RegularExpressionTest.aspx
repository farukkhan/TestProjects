<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpressionTest.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.RegularExpressionTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<script src="JQuery/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
<head runat="server">
    <title></title>
     <script type="text/javascript">

         $(document).ready(function () {

             $("#btnInvokeService").click(function () {

                 //Calling WCF Service using jQuery ajax method
                 $.ajax({
                     type: "GET",
                     async: "false",
                     url: "http://localhost/BIQSvcs/SqlGen.svc/login?username=faruk&password=12345",

                     contentType: "application/json",
                     dataType: "json",
                     processData: true,
                     success: function (result) {

                         alert(result.sessionId);
                         alert(result);
                     },
                     error: function (result) {
                         alert(result.status + ' ' + result.statusText);
                     }
                 });
             });

             //////

             $("#btnExtract").click(function () {
                 //Calling WCF Service using jQuery ajax method to validate formula
                 $.ajax({
                     type: "GET",
                     async: "false",
                     url: "http://localhost/BIQSvcs/SqlGen.svc/ValidateFormula?formula=[CaseCount]/+2*9",

                     contentType: "application/json",
                     dataType: "json",
                     processData: true,
                     success: function (result) {
                     
                         alert(result);
                     },
                     error: function (result) {
                         alert(result.status + ' ' + result.statusText);
                     }
                 });

                 return false;
             });


         });

         
    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" Height="104px" 
            Width="319px"></asp:TextBox>
    <br/>
    <hr/>
        <asp:Button ID="btnExtract" runat="server" Text="Extract" 
            onclick="btnExtract_Click" />
        
        <asp:TextBox ID="txtMatch" runat="server" BorderWidth="0" ReadOnly="True"></asp:TextBox>
        
        <asp:Button ID="btnInvokeService"   runat="server" Text="InvokeService"  />
    </div>
    </form>
</body>
</html>
