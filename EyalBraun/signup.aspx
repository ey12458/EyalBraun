<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <script language="javascript">

          function checkAll() {
              firstName.innerHTML = "";
              lastname.innerHTML = "";

              f = true;

              if (checkFirstName() == false)
                  f = false;
              if (checklastname() == false)
                  f = false;

              return f;
          }// סוף פעולה ראשית

          function checkFirstName() {
              name = document.getElementById("firstname").value;
              //alert(name);

              if (name.length < 2 || name.length > 30) {
                  fnErr.innerHTML = "אורך השם הפרטי לא תקין";
                  return false;
              }
              return true;
          } // סוף בדיקת שם

          function checklastname() {
              lname = document.getElementById("lastname").value;
              //alert(name);

              if (lname.length < 2 || lname.length > 30) {
                  lnameErr.innerHTML = "אורך השם האחרון לא תקין";
                  return false;
              }
              return true;
          } // סוף בדיקת last name
      </script>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

         <form name="form1" method="post" runat="server" onsubmit="return checkAll();">
    <h1> sign in form </h1>
         <br/>

             <br />
               first name<br>
<input type="text" id="firstname"  placeholder="john" name="fname">
           <br />

               last name<br>
<input type="text" id="lastname"  placeholder="doe" name="lname">
           <br /> 

    
       username<br>
     <input type="text" id="username"  placeholder="john" name="username">
                <br />
         <br />
           email<br>
<input type="text" id="email"  placeholder="example@gmail.com" name="email">
           <br />
    <br />
 password
         <br />
  <input type="text" id="password"  placeholder="Doe" name="password" >
     <br />
         <br />
         are you a developer 
                     <br />
         <input type="radio" id="r1"  name="y/n"/> yes
         <input type="radio" id="r2" name="y/n"/>no

            <br />
                  <br />

  <input type="checkbox"id="agree" name="agree" /> i agree to the terms and conditions
                  <br />

         <br />
         <input type="submit" id="submit"  name="submit" value="send"/>
             <span id="fnErr"></span>
    <span id="lnameErr"></span>
</form>
    <%= stResult %>
</asp:Content>


