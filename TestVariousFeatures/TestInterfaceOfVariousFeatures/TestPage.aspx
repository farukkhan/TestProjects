<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.TestPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="Stylesheet" href="" />

    <script type="text/javascript" src="JQuery/jquery-1.2.6.js"></script>

    <script type="text/javascript" language="javascript">

        var ctrlViewName;
        var ctrlTaskName;

        $(document).ready(function () {

            $("#Result").click(function () {

                alert('inside Result click event...');
                $.ajax({
                    type: "Post",
                    url: "TestPage.aspx/GetName",
                    data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {

                        alert(msg.d);
                        alert('test');
                        // Replace the div's content with the page method's return.
                        //$("#Result").text(msg.d);
                    }
                });
            });

            $("#btnNewItem").click(function () {

                $("#hdnViewName").val('create');
                $("#hdnTask").val('');

            })

            $("#btnDeleteItem").click(function () {

                $("#hdnViewName").val('delete');
                $("#hdnTask").val('');

            })

            $('#tblList').addClass('lsttbl');

            $('#lsttblHead').children().each(function () {

                $(this).addClass('lsttdcolheader');

            });

            $('#lsttblBody').children().each(function () {

                $(this).addClass('lsttdcoldata');

            });
            //="0" cellpadding="0"
            $('#lsttbl').attr('cellspacing', '0');
            $('#lsttbl').attr('cellpadding', '0');

            $('#chkHeader').change(function () {

                if (this.checked) {

                    $('input[type=checkbox]:not(#chkHeader)').attr('checked', 'true');
                }
                else {

                    $('input[type=checkbox]:not(#chkHeader)').attr('checked', 'false');
                }

            });

            $('input[type=checkbox]:not(#chkHeader)').change(function () {

                if (this.checked) {


                }
                else {

                    $('#chkHeader').attr('checked', '');
                }

            });

            var comaseparetedIds = '';
            $('input[type=checkbox]:not(#chkHeader):checked').each(function () {

                comaseparetedIds += this.value + ',';
            });

            if (comaseparetedIds.length > 0) {

                comaseparetedIds = comaseparetedIds.substring(0, comaseparetedIds.lastIndexOf(',') - 1);

            }

        })

        /*        function GetControls() {

            ctrlViewName = document.getElementById('hdnViewName');
        ctrlTaskName = document.getElementById('hdnTask');
        }
        
        function clickOnNewItem() {

            GetControls();

            ctrlTaskName.value = 'create';
        ctrlTaskName.value = '';
        
        }*/
    
    
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td colspan="4">
                <input type="hidden" id="hdnViewName" value="ItemList" />
                <input type="hidden" id="hdnTask" value="create" />
                <table>
                    <tr>
                        <td>
                            <input type="checkbox" checked="" />
                            <input type="submit" value="New Item" id="btnNewItem" />
                        </td>
                        <td>
                            <input type="submit" value="Delete" id="btnDeleteItem" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                Item No
            </td>
            <td>
                Item Name
            </td>
            <td>
                Item Description
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td colspan="3">
                Are you sure you want to delete if sure click ok or cancle.
            </td>
        </tr>
        <tr>
         <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
         <td align="right"> 
           <input type="submit" value="OK" id="btnOk" />
         </td>
         <td width="10px"></td>
         <td align="left">
           <input type="submit" value="Cancle" id="btnCancle" />
         </td>
        </tr>

        <tr>
          <td colspan="3">
            <input type="button" id="Result" value="GetName" />
          </td>
        </tr>

    </table>
    
    
    </form>
</body>
</html>
