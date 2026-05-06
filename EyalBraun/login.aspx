    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
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
            name = document.getElementById("fname").value;
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
                lnameErr.innerHTML = "אורך XXXX לא תקין";
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <form name="form1" method="post" runat="server" onsubmit="return checkAll();">


    <h1> log in form </h1>
         <br />
               first name<br>
<input type="text" id="first name"  placeholder="john" name="fname">
           <br />
               last name<br>
<input type="text" id="lastanme"  placeholder="doe" name="lname">
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
       
         <br />
         <input type="submit" id="submit" name="submit" value=" submit")/>
</form>
      <% =st %>
</asp:Content>

