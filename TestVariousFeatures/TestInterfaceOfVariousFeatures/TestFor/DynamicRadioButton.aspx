<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Default.Master" AutoEventWireup="true" CodeBehind="DynamicRadioButton.aspx.cs" Inherits="TestInterfaceOfVariousFeatures.TestFor.DynamicRadioButton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div>
   I am on content page!!!!!!!!!
 </div>
 <div runat="server" id="divRbtnLst">
 </div>
 <div>
   <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
         onclick="btnSubmit_Click" />
 </div>
    
</asp:Content>
