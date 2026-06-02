<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Admin Page-search panel</h1>
    <form runat="server" method="post">
        <label>Username:</label>
        <input type="text" name="username" id="username"> 
        
        <label>Email:</label>
        <input type="text" name="email" id="email"> 
        
        <input type="submit" name="submitForm" id="submitForm" value="Search">
    </form>

    <%=st %>
</asp:Content>

