<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .de {
            font: 15px Arial, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <center class="de">  <h1> welcome to the game website </h1>

     <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ-6YJmcvvoiAskN4fo4mdCZ3khWiLrcRU7gpsiC0Yfu7L7bQ776RuuXkxd9Okg"/>

    
    <% if ((Session["user"] != "true") && (Session["admin"] != "true"))
        { %>
           <center>   <h2>please log in to then go to the games page to play the "games"</h2> 

    <% }
    else
    { %>
    <h2>שלום <%= Session["username"] %></h2>
    <% } %>
               </center> 
</asp:Content>

