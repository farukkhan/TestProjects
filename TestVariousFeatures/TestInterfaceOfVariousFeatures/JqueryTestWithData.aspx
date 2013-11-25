<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryTestWithData.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.JqueryTestWithData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
    .evenstyle{ background-color:Maroon;}
    .oddstyle{ background-color:Green;}
    .eventdstyle{ background-color:Gray;}
    
    </style>
    <script src="JQuery/jquery-1[1].3.2.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">

        $(document).ready(function() {


            //            $("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("#trRafayal");
            //$("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("table tr:nth-child(12)");
            $("<tr id='trtora'><td>99354</td><td>&nbsp;</td><td>Tora</td></tr>").insertAfter("table tr:last");

            //            $("table tr:nth-child(even)").addClass("evenstyle");
            //            $("table tr:nth-child(odd)").addClass("oddstyle");

            $("table tr:even").addClass("evenstyle");
            $("table tr:odd").addClass("oddstyle");

            $("table tr td:nth-child(even)").addClass("eventdstyle");

            alert($("table tr:nth-child(2) td:nth-child(3)").text());

            alert($("table tr:eq(2) td:eq(3)").text());

            alert(document.getElementById('myTable').rows[5].cells[2].innerText);

        })
    
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table id="myTable">
     <tr>
      <td>
       Roll
      </td>
      <td width="100px">
      &nbsp;
      </td>
      <td>
      Name
      </td>
     </tr>
     <tr>
      <td>
       99315
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Mamun
      </td>
     </tr>
     <tr>
      <td>
       99316
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Rupom
      </td>
     </tr>
     <tr>
      <td>
       99331
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Liton
      </td>
     </tr>
     <tr>
      <td>
       99332
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Boss Arif
      </td>
     </tr>
     <tr>
      <td>
       99337
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Kaka sumon
      </td>
     </tr>
     <tr>
      <td>
       99339
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Dibakor
      </td>
     </tr>
     <tr>
      <td>
       99340
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Faruk
      </td>
     </tr>
     <tr>
      <td>
       99343
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Motu Arif
      </td>
     </tr>
     <tr>
      <td>
       99348
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Ripon
      </td>
     </tr>
     <tr>
      <td>
       99350
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Nobel
      </td>
     </tr>
     <tr>
      <td>
       99352
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Sajid
      </td>
     </tr>
     <tr id="trRafayal">
      <td>
       99353
      </td>
       <td>
      &nbsp;
      </td>
      <td>
      Rafayal
      </td>
     </tr>
    </table>
    </form>
</body>
</html>
