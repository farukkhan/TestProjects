<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TestInterfaceOfVariousFeatures._default" %>
<%@ Register Assembly="CustomControlSet" Namespace="CustomControlSet" TagPrefix="cc1" %>
<%@ OutputCache Duration="1" VaryByParam="none" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script type="text/javascript" src="ClientBehavior1.js" language="javascript"></script>--%>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"
            AllowCustomErrorsRedirect="true">
      <Services>
        <asp:ServiceReference Path="~/WebService.asmx"/>
      </Services>
      <Scripts>
       <asp:ScriptReference Path="~/ClientBehavior1.js" />
      </Scripts>
    </asp:ScriptManager>
    <script type="text/javascript" language="javascript">

        function testprototype() {

                      TestInterfaceOfVariousFeatures.WebService.HelloWorld("Faruk", wsComplete);
                      var myobject = new TestInterfaceOfVariousFeatures.ClientBehavior1();
                      return false;
//                      var ResultByPostback = document.getElementById("txtResultByPostback");
//                      ResultByPostback.value=myobject.helloworld
//                       alert(myobject.helloworld());
                   }

                   function wsComplete(result) {
                       if (result != null) {
                           var ResultByPostback = document.getElementById("txtResultByPostback");
                           alert(result.toString());
                           ResultByPostback.value = result.toString();
                           alert(ResultByPostback.value);

                           return false;
                       }
                   
                   }
    
    
    </script>
    <table>
        <tr>
            <td>
                Calculate
            </td>
            <td>
                <asp:UpdatePanel ID="updatepanel" runat="server">
                    <ContentTemplate>
                        <cc1:CalculationControl ID="calculatecontrol"  runat="server" OperationType="Multiplication" ></cc1:CalculationControl>
                        <asp:Button runat="server" ID="btnGetWSValue" Text="GetWSValue" OnClientClick="return testprototype();" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
         <td colspan="2">
          <asp:UpdatePanel ID="updatepanel1" runat="server">
           <ContentTemplate>
           <table>
            <tr>
             <td>
               <asp:Button ID="btnCalculateByPostBack" runat="server" Text="CalculateByPostBack" OnClick="btnCalculateByPostBack_Click" />
             </td>
             <td runat="server" id="tdPostBackResult">
                 <asp:TextBox ID="txtResultByPostback" runat="server"></asp:TextBox>
            </td>
            </tr>
           </table>
           </ContentTemplate>
           </asp:UpdatePanel>
         </td>
        </tr>
        <tr>
         <td colspan="2">
         </td>
        </tr>
    </table>
    </form>
</body>
</html>
