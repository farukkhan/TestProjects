<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayWithValidation.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.PlayWithValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <%--<script type="text/javascript" src="JQuery/jquery-1.2.6-vsdoc.js"></script>--%>
    <script type="text/javascript" src="JQuery/jquery-1.4.1-vsdoc.js"></script>
    <script type="text/javascript">



        $(document).ready(function () {

            $('#<% = Button1.ClientID %>').click(function () {

                validation();

            });

            $("input[type=text]").change(function () {

                //alert($("input[type=text]").val());
                validation();
                //                if (event.keyCode == 13) {

                //                    var currentindex = $("input[type=text]").index(this);
                //                    alert(currentindex);
                //                    alert($("input[type=text]").get(currentindex + 1));
                //                    $("input[type=text]").get(currentindex + 1).focus();

                //                    alert($("input[type=text]").length);
                //                    //alert($(this).next().focus());
                //                }

            });

            function validation() {

                //alert($("#divValidationSummary li").length);

                var noOfErrorOccured = 0;

                $("#divValidationSummary ul li").each(function () {

                    var currentLIindex = $("#divValidationSummary ul li").index(this);
                    var currentListItem = $("#divValidationSummary ul li").get(currentLIindex);
                    var currentSpan = $(currentListItem).parent(); //$("#divValidationSummary ul span").get(currentLIindex);

                    var currentSpanVisibility = $(currentSpan).attr('style');

                    alert(currentSpanVisibility);

                    //var listContainer = $(currentListItem).conta


                    //                    alert(currentLIindex);
                    //                    alert($(currentSpan).attr('style'));

                    //                    alert(currentSpanVisibility);

                    if (currentSpanVisibility.indexOf('visibility: visible') != -1
                    | currentSpanVisibility.indexOf('VISIBILITY: visible') != -1
                    ) {

                        $(currentListItem).attr('class', 'showErrorListItem');
                        noOfErrorOccured += 1;

                    }
                    else {
                        $(currentListItem).attr('class', 'hideValidationError');
                    }

                    if (noOfErrorOccured > 0) {

                        // alert("<%= lblErrorSummaryHeader.ClientID %>");
                        // alert($("#<%= lblErrorSummaryHeader.ClientID %>").attr('class'));

                        $("#<%= lblErrorSummaryHeader.ClientID %>").attr('class', 'showErrorSummaryHeader');

                    }
                    else {
                        $("#<%= lblErrorSummaryHeader.ClientID %>").attr('class', 'hideValidationError');
                    }

                    //alert($(currentListItem).attr('class'));

                    //alert($("#divValidationSummary ul li").index(this));
                    //alert($(this).text());

                });

            }

        })
   
    </script>
   
    <style type="text/css">
   
    .hideValidationError
    {
        display:none
        }
   
    .showErrorSummaryHeader
    {
        display:inline;
        color:Red;
        background-image:url("Images/330.png");
        background-repeat:no-repeat;
        padding-left:20px
        }
       
    .showErrorListItem
    {
        display:list-item
        }
   
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div id="divValidationSummary">
        <asp:Label ID="lblErrorSummaryHeader" runat="server" Text="Please resolve the following errors to proceed :"
        CssClass="hideValidationError">
        <%--<img src="Images/330.png" />--%>
        </asp:Label>
      <ul>
           <asp:RequiredFieldValidator ID="rv2FirstName"
           runat="server" ControlToValidate="txtFirstName">
             <li class="hideValidationError">Enter First Name</li>
           </asp:RequiredFieldValidator>
           <asp:RequiredFieldValidator ID="rv2LastName"
           runat="server" ControlToValidate="txtLastName">
             <li class="hideValidationError">Enter Last Name</li>
           </asp:RequiredFieldValidator>
           <asp:RequiredFieldValidator ID="rv2Email"
           runat="server" ControlToValidate="txtEmail">
             <li class="hideValidationError">Enter Email</li>
           </asp:RequiredFieldValidator>
      </ul>
    </div>
     <%--<div id="divValidationSummary">
      <ul>
           <li>
           <asp:RequiredFieldValidator ID="rv2FirstName"
           runat="server" ControlToValidate="txtFirstName" Text="Enter First Name">
           </asp:RequiredFieldValidator> </li>
           <li>
           <asp:RequiredFieldValidator ID="rv2LastName" Text="Enter Last Name"
           runat="server" ControlToValidate="txtLastName">
           </asp:RequiredFieldValidator> </li>
           <li>
           <asp:RequiredFieldValidator ID="rv2Email" Text="Enter Email"
           runat="server" ControlToValidate="txtEmail">
           </asp:RequiredFieldValidator> </li>
      </ul>
    </div>--%>
    <div>
      <table>
       <tr>
        <td>
          First Name
        </td>
        <td style="width:5px"></td>
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rv1FirstName"
            runat="server" ControlToValidate="txtFirstName">*
            </asp:RequiredFieldValidator>
        </td>
       </tr>
       <tr>
        <td style="height:5px" colspan="4"></td>
       </tr>
       <tr>
        <td>
          Last Name
        </td>
        <td style="width:5px"></td>
        <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        <td>
           <asp:RequiredFieldValidator ID="rv1LastName"
           runat="server" ControlToValidate="txtLastName">*
           </asp:RequiredFieldValidator>
        </td>
       </tr>
       <tr>
        <td style="height:5px" colspan="4">
        </td>
       </tr>
       <tr>
        <td>
          Email
        </td>
        <td style="width:5px"></td>
        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        <td>
           <asp:RequiredFieldValidator ID="rv1Email"
           runat="server" ControlToValidate="txtEmail">*
           </asp:RequiredFieldValidator>
        </td>
       </tr>
       <tr>
        <td style="height:5px" colspan="4">
        </td>
       </tr>
       <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </td>
       </tr>
      </table>
    </div>
    </form>
</body>
</html>