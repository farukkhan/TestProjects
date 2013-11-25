<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingNestedUpdatePanel.aspx.cs"
    Inherits="TestInterfaceOfVariousFeatures.UsingNestedUpdatePanel" %>
<%@ Register Assembly="CustomControlSet" Namespace="CustomControlSet" TagPrefix="cc1" %>
<%@ OutputCache Duration="1" VaryByParam="none" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <%--<script type="text/javascript" src="ClientBehavior1.js" language="javascript"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"
        AllowCustomErrorsRedirect="true">
        <Scripts>
            <asp:ScriptReference Path="~/ClientBehavior1.js" />
        </Scripts>
    </asp:ScriptManager>

    <script type="text/javascript" language="javascript">

        function testprototype() {
            var myobject = new TestInterfaceOfVariousFeatures.ClientBehavior1();

            alert(myobject.helloworld());
        }
    
    </script>

    <table>
        <tr>
            <td>
                Calculate
            </td>
            <td>
                <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <cc1:CalculationControl ID="calculatecontrol" runat="server" OperationType="Multiplication"
                            onclickcalculate="testprototype();"></cc1:CalculationControl>
                        <asp:UpdatePanel ID="updatepanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnCalculateByPostBack" runat="server" Text="CalculateByPostBack"
                                                OnClick="btnCalculateByPostBack_Click" />
                                        </td>
                                        <td runat="server" id="tdPostBackResult">
                                            <asp:TextBox ID="txtResultByPostback" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:UpdatePanel ID="updatepaneltest" runat="server">
             <ContentTemplate>
               <table>
                <tr>
                 <td>
                  <asp:TextBox runat="server" ID="txtTest"></asp:TextBox>
                 </td>
                 <td>
                  <asp:Button ID="btnGetName" runat="server" Text="GetName" 
                         onclick="btnGetName_Click" />
                 </td>
                </tr>
               </table>
             </ContentTemplate>
            </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
