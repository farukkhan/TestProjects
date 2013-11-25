<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryTestPage.aspx.cs"
    Inherits="TestInterfaceOfVariousFeatures.JQueryTestPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        a.test
        {
            font-weight: bold;
            font-size: larger;
            color: Blue;
        }
        .Hide
        {
            visibility: hidden;
        }
        .Show
        {
            visibility: visible;
        }
        .HideDisplay
        {
            display:none;
        }
        .ShowDisplay
        {
            display:inline;
        }
        .SpecialBG
        {
         background-color:Gray;	
        }
        .GeneralBorder
        {
         border-width:2; border-color:Blue;	
        }
    </style>

    <script type="text/javascript" src="JQuery/jquery-1.2.6.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {

            $("a").click(function (event) {
                alert("Hay google.com is no longer available...");
                event.preventDefault();
                $(this).hide("slow");
            });



            $("a").addClass("test");

            $("#btnClickMe").click(function () {
                $(this).hide("slow");
                return false;
            });

            $("#spanContorller").click(function () {
                var tdText = $(this).text();

                if (tdText == "Click Me to see the squat images....") {
                    $("#tblSquatImages").removeClass("Hide");
                    $("#tblSquatImages img").removeClass("Hide");

                    $("#tblSquatImages").addClass("Show");
                    $("#tblSquatImages img").addClass("Show");
                    $(this).text("Click Me to hide the squat images....");
                }
                else if (tdText == "Click Me to hide the squat images....") {
                    $(this).text("Click Me to see the squat images....");
                    $("#tblSquatImages").removeClass("Show");
                    $("#tblSquatImages img").removeClass("Show");

                    $("#tblSquatImages").addClass("Hide");
                    $("#tblSquatImages img").addClass("Hide");
                }
            });
            $("#tblSquatImages  tr").each(function (index) {

                $(this).children("td").children("span").click(function () {

                    var collapseexpand = $(this).text();
                    //                    alert($.trim(collapseexpand));
                    if ($.trim(collapseexpand) == "Click to collapse this row") {
                        $(this).text("Click to expand this row");
                        $(this).parent("td").parent("tr").children("td:nth-child(1)").children("table").removeClass("ShowDisplay");
                        $(this).parent("td").parent("tr").children("td:nth-child(1)").children("table").addClass("HideDisplay");
                    }
                    else if ($.trim(collapseexpand) == "Click to expand this row") {
                        $(this).text("Click to collapse this row");
                        $(this).parent("td").parent("tr").children("td:nth-child(1)").children("table").removeClass("HideDisplay");
                        $(this).parent("td").parent("tr").children("td:nth-child(1)").children("table").addClass("ShowDisplay");
                    }
                });
            });

            $("div img[src$=.jpg]").click(function () {

                $("img[alt*=squat]").addClass("GeneralBorder");
                //$("img").removeClass();
                //            $("img[alt*=squat]").addClass("SpecialBG"); //.add("img[alt*=row expand collapse]").addClass("GeneralBorder");
                alert($("img[alt*=squat]").get(0));
                alert("There are " + $("img").size() + " no of image control in this page...");
                alert($(this));
            });


            $("#tblSquatImages").removeAttr('style');

        })

      
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button runat="server" ID="btnClickMe" Text="Click Me" />
        <a href="http://www.google.com" id="lnkPageMethods">Click here to open google.com</a>
        <a href="http://www.yahoo.com" id="A1">Click here to open yahoo.com</a>
        <table>
            <tr>
                <td id="tdImaages">
                    <span id="spanContorller">Click Me to see the squat images....</span>
                    <table id="tblSquatImages" class="Hide">
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <img alt="chair squat" src="Images/chairsquat_1.jpg" />
                                        </td>
                                        <td>
                                            <img alt="db squat" src="Images/dbsquat_2.jpg" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top" id="tdFirst" align="right">
                             <span>
                              <img id="img2" alt="First row expand collapse"  src="Images/btnNext.png">Click to collapse this row</img>
                             </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <img alt="dbs squat" src="Images/squatdbs_3.jpg" />
                                        </td>
                                        <td>
                                            <img alt="barbell squat" src="Images/barbellsquat_4.jpg" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top" align="right">
                             <span>
                              <img id="img1" alt="Second row expand collapse"  src="Images/btnNext.png">Click to collapse this row</img>
                             </span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
