<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         input[type="submit"]:hover {
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


    <h1> log in form </h1>
         <br />

     <form runat="server" method="post">
           email<br>
<input type="text" id="email"  placeholder="example@gmail.com" name="email">
           <br />
    <br />
 password
         <br />
  <input type="text" id="pword"  placeholder="Doe" name="password">
     <br />
         <br />
       
         <br />
         <input type="submit" id="submit" name="submit" value=" submit")/>
</form>
</asp:Content>

