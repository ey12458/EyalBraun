<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signinform.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         input[type="button"]:hover {
      background: #808080;
        cursor:pointer
  }

  input[type="button"]:active {
      background: #000000;
  }
        input[type="text"] {
            cursor: text
        }

         input[type="radio"]{
                 cursor: pointer
                 }
        .nav-link img {
            color: white;
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1> sign in form </h1>
         <br />

     <form runat="server" method="post">
       username<br>
     <input type="text" id="uname"  placeholder="john" name="username">
                <br />
         <br />
           email<br>
<input type="text" id="email"  placeholder="example@gmail.com" name="email">
           <br />
    <br />
 password
         <br />
  <input type="text" id="pword"  placeholder="Doe" name="password">
     <br />
         <br />
         are you a developer 
                     <br />
         <input type="radio" id="r1"  name="y/n"/> yes
         <input type="radio" id="r2" name="y/n"/>no

            <br />
         
  




         <br />
         <input type="button" id="confrim" value="Click Me")/>
</form>
</asp:Content>

