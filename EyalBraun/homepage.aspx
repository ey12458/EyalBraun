<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="Default3" %>
                                                                                                                                   
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
<style> /* Start CSS for simple squares */
.square { /* Class for each clickable square */
    width:350px; /* square width */
    height: 350px; /* square height */
    display: inline-block; /* place squares side-by-side */
    margin: 20px; /* space between squares */
    background: #4CAF50; /* green background color */
    color: #fff; /* white text color */
    text-align: center; /* center text horizontally */
    line-height: 150px; /* center text vertically by matching height */
    text-decoration: none; /* remove underline for links */
    border-radius: 6px; /* slightly rounded corners */
    font-weight: 600; /* make label slightly bold */
    cursor: pointer; /* pointer cursor to indicate clickable */
} 
</style> 
</asp:Content> 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <h1> game home page </h1> 
    <p>Click a square to go to a game page.</p>

    <div> <!-- Container for the squares -->
        <a href="Default.aspx" class="square">dice game </a> 
        <a href="game2.html" class="square">guess the number</a> 
        <a href="game3.html" class="square">calculator</a> 
        <a href="game4.html" class="square">Game 4</a>
         <a href="game4.html" class="square">Game 5(coming soon)</a>
         <a href="game4.html" class="square">Game 6(coming soon)</a>
    </div>

 
</asp:Content> 

