<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicallyRowAddition.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.DynamicallyRowAddition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .evenstyle{ background-color:Maroon;}
    .oddstyle{ background-color:Green;}
    .eventdstyle{ background-color:Gray;}
    
    .upload {
	position:relative;
	width:664px;
}
.realupload {
	position:absolute;
	top:0;
	right:0;

	/* start of transparency styles */
	opacity:0;
	-moz-opacity:0;
	filter:alpha(opacity:0);
	/* end of transparency styles */

	z-index:2; /* bring the real upload interactivity up front */
	width:270px;
}
form .fakeupload {
	background:url(browse.gif) no-repeat 100% 50%;
}
form .fakeupload input {
	width:401px;
}
    
.roundLinkButtonDK
{
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 22px;
	padding-bottom: 22px;
	text-decoration: none;
	border-color: #ff6633;
	border-style: solid;
	border-width: thin;
	background-color: #e0ebeb;
	border-radius: 35px;
	/*box-shadow: inset 0 -3px 3px #6CABAD,inset 0 -3px 1px #6CABAD;*/ /*-moz-border-radius: 35px;     -webkit-border-radius: 35px;     -moz-box-shadow:inset 0 -3px 3px #6CABAD,inset 0 -3px 1px #6CABAD;     -webkit-box-shadow:inset 0 -3px 3px #6CABAD,inset 0 -3px 1px #6CABAD;*/
	box-shadow: inset 0px -3px 10px #919999;/*,inset 0 -3px 1px #e0ebeb; */
	/*box-shadow: inset 0px 0px 10px 2px #6CABAD;*/
	/*color: #ff6633;*/
	font-weight: normal;
	font-size: 14px;
	font-family: helvetica;
}
    
    </style>
    <script type="text/javascript" src="JQuery/jquery-1.2.6-vsdoc.js"></script>
    <script type="text/javascript" language="javascript">

        $(document).ready(function () {
            //function pageLoad(sender, args) {

            var i = 0;


            $('#<%= btnInterest.ClientID %>').click(function () {

                alert($(".txtinterest").length);

                return false;

            });

            function deleteInterest(itsMe, parent) {

                //alert($(this).parent('td').parent('tr').length);
                $(this).parent('td').parent('tr').remove();

            };

            function addNewInterest(itsMe, parent) {

                // alert('onclick');

                //$(itsMe).replaceWith("<span class='delete'>-</span>");
                //                var innertext = $(itsMe).parent('.inner');
                //                alert($(itsMe).parent('.inner'));
                //                alert($(itsMe).children('.add').text());

                //                $(itsMe).parent('.addDelete.inner').replaceWith(
                //                $(itsMe).children('.add').addClass('delete');
                //                //$(itsMe).addClass('delete');
                //                $(itsMe).children('.add').removeClass('add');

                //alert(itsMe);
                $("<tr><td><input class='txtinterest'  maxlength='100' type='text' name='test" + i + "'/></td><td class='addDelete'><span class='add'>+</span></td></tr>").insertAfter("#tblInterest tr:last");

                i++;

                $(this).replaceWith("<span class='delete'>-</span>");
                //$('span.inner').replaceWith("<span class='delete'>-</span>");
            };

            $('#tblInterest').click(function (e) {
                // alert('tblinterest clicked');
                // alert($(e.target).hasClass('add'));

                if ($(e.target).is('.add')) {
                    //alert('tblinterest clicked target is add');
                    addNewInterest.call(e.target, e);
                }

                if ($(e.target).is('.delete')) {
                    //alert('tblinterest clicked target is add');
                    deleteInterest.call(e.target, e);
                }

            });
            //$('#tblInterest').load('DynamicallyRowAddition.aspx');








            //            $("<tr><td><input type='text' name='test" + i + "' /></td><td class='addDelete'><span class='add'>+</span></td></tr>").insertAfter("#tblInterest tr:last");

            //            i++;

            //            $(".addDelete").click(function () {

            //                alert('jqueryonclick');

            //                addNewInterest();

            //            });

            //            $(".addDelete").click(function () {

            //                alert($(".addDelete").children('.add').length);

            //            });


            //            $("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("#trRafayal");
            //$("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("table tr:nth-child(12)");
            // $("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("table tr:last");

            //            $("table tr:nth-child(even)").addClass("evenstyle");
            //            $("table tr:nth-child(odd)").addClass("oddstyle");

            //            $("table tr:even").addClass("evenstyle");
            //            $("table tr:odd").addClass("oddstyle");

            //            $("table tr td:nth-child(even)").addClass("eventdstyle");

            //            alert($("table tr:nth-child(2) td:nth-child(3)").text());

            //            alert($("table tr:eq(2) td:eq(3)").text());

            //            alert(document.getElementById('myTable').rows[5].cells[2].innerText);

        })
        //}
    
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <table>
        <tr>
          <td valign="top" onclick="alert();">
            Interest :
              <asp:FileUpload ID="FileUpload1" runat="server" 
                  ondatabinding="FileUpload1_DataBinding" />
          </td>
          <td>
             <table id="tblInterest">
               <tr>
                  <td>
                      <input class='txtinterest' type="text" id="txtInterest" runat="server" maxlength='100' />
                  </td>
                  <td class="addDelete">
                    <span class="add">+</span>
                  </td>
               </tr>   
             </table>
          </td>
        </tr>
      
       <tr>
        <td>
          &nbsp;
        </td>
        <td>
          <li class="upload">
	<label for="realupload">Upload Image: </label>
	<div class="fakeupload">
		<input type="text" name="fakeupload" /> <!-- browse button is here as background -->
	</div>
	<input type="file" name="upload" id="realupload" class="realupload" onchange="this.form.fakeupload.value = this.value;" />
</li>
        </td>
           <asp:Button ID="btnInterest" runat="server" Text="Button" />
       </tr>
      </table>

    </div>

    <div>
     
     <asp:Button runat="server" ID="btnLogin" CssClass="roundLinkButtonDK" Text="logind" />
                                    

    </div>

    <table>
      <tr>
        <td>
         Visibility :(display:none)
        </td>
      </tr>
    
    </table>
   
    </form>
</body>
</html>
