<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailTemplateTest.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.MailTemplateTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
 .bodystyle
 {
     font-size:12pt;
     font-family: Calibri,Verdana,Arial,sans-serif;
     color:Red;
     }

</style>
</head>
<body>



   <p class="bodystyle">
        Hello [Recipient.FullName]:<br/>
          As a category captain, I would like to include the following items in the [Category.Name], [Category.Desc] category.
          Before I can however, I need you to add them to the category's sandbox. They are:<br/><br/><br/>

           [itemnos]

        <br/>
        Thanks,<br/>
        [Sender.FullName]<br/>
        <br/>
</body>
</html>
