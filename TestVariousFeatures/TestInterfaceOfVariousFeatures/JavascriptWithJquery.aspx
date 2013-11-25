<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavascriptWithJquery.aspx.cs"
    Inherits="TestInterfaceOfVariousFeatures.JavascriptWithJquery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript" src="JQuery/jquery-1.2.6-vsdoc.js"></script>
    <script type="text/javascript">

                //$(document).ready(function () {
                function pageLoad(sender, args) {

                    //alert('<%=txtItem1.ClientID %>');

//                    $("input[type=text]").keypress(function () {
//                        if (event.keyCode == 13) {

//                            var currentindex = $("input[type=text]").index(this);
//                            alert(currentindex);
//                            alert($("input[type=text]").get(currentindex + 1));
//                            $("input[type=text]").get(currentindex + 1).focus();

//                            alert($("input[type=text]").length);
//                            //alert($(this).next().focus());
//                        }

//                    });

                    $('#accordion span').click(function () {

//                        if ($(this).children('div').hasClass('HideTd')) {

//                            $(this).children('div').removeClass('HideTd');
//                            $(this).children('div').addClass('ShowTd');
//                    

//                        }

                        $(this).next($('div:eq(1)')).toggle('slow');
                        return false;
                    }).next().hide();


                    $('.panelHeader').click(function () {

                       // alert('aaa');
//                        if ($(this).parent("div").children("div:nth-child(2)").hasClass('HideTd')) {

//                            //                    $(this).children('div').removeClass('HideTd');
//                            //                    $(this).children('div').addClass('ShowTd');

//                            $(this).parent("div").children("div:nth-child(2)").removeClass("HideTd");
//                            $(this).parent("div").children("div:nth-child(2)").addClass("ShowTd");
//                        }
//                        else {

//                            $(this).parent("div").children("div:nth-child(2)").removeClass("ShowTd");
//                            $(this).parent("div").children("div:nth-child(2)").addClass("HideTd");

                        //                        }

                        $(this).parent("div").children("div:nth-child(2)").toggle('slow');

                        return false;
                    });

                }
                //})
        //    
    </script>
    <style type="text/css">
        .redColorText
        {
            color: Red;
        }
        .blueColorText
        {
            color: Blue;
        }
        
        .HideTd
{
display:none;
}

.ShowTd
{
display:inline;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


      <div>
            
            <div class="panelHeader">
                <h3><a href="#">First header</a></h3>
             <%--<gc:GCPhraseLabel ID="lblLanguageSettings" runat="server" 
                         PhraseKey="SL_ADMIN_SETTINGS_TREE_NODE_REGIONAL_SETTINGS"></gc:GCPhraseLabel>--%>
                         <%--<asp:Label ID="Label4" runat="server" Text="Basic Name :"></asp:Label>--%>
            </div>

           <div>
           
               <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                     <asp:Label ID="Label3" runat="server" Text="Basic Name :"></asp:Label>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </ContentTemplate>
                 <Triggers>
                     <asp:AsyncPostBackTrigger ControlID="btnSubmitBasic" EventName="Click" />
                 </Triggers>
               </asp:UpdatePanel>

               <asp:Button ID="Button1" runat="server" Text="SubmitBasic" 
                   onclick="btnSubmitBasic_Click" />
       
           </div>

     </div>

    <div id="accordion" style="display:none">


        <asp:Label ID="Label1" runat="server" Text="First header"></asp:Label>
        <div>
            First content
            
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
                        <asp:Button ID="btnSubmitBasic" runat="server" Text="SubmitBasic" OnClick="btnSubmitBasic_Click" />
                    </td>
                </tr>
            </table>

        </div>

        <asp:Label ID="Label2" runat="server" Text="Second header"></asp:Label>
        <div>
            Second content
            
            <table>
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblBusinessName" runat="server" Text="Business Name :"></asp:Label>
                                <asp:TextBox ID="txtBusinessName" runat="server"></asp:TextBox>
                                <asp:Button ID="btnSubmitBusiness" runat="server" Text="SubmitBusiness" OnClick="btnSubmitBusiness_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>

        </div>
    </div>


    <div>
        <table style="margin-top: 100px">
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblBiColoredtext">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItem1" runat="server">test</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtItem2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
