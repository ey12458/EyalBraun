<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <script language="javascript">

        

          function checkAll() {
              
              fNameErr = "";
              lNameErr = "";
              userErr = "";
              passErr = "";
              mailErr = "";
              devErr = "";

              let f = true;

              if (checkFirstName() == false) {
                  document.getElementById("FnameErr").innerHTML = fNameErr;
                  f = false;
              } else { document.getElementById("FnameErr").innerHTML = ""; }

              if (checklastname() == false) {
                  document.getElementById("LnameErr").innerHTML = lNameErr;
                  f = false;
              } else { document.getElementById("LnameErr").innerHTML = ""; }

              if (checkuser() == false) {
                  document.getElementById("usernameERR").innerHTML = userErr;
                  f = false;
              } else { document.getElementById("usernameERR").innerHTML = ""; }

              if (checkpass() == false) {
                  document.getElementById("PassErr").innerHTML = passErr;
                  f = false;
              } else { document.getElementById("PassErr").innerHTML = ""; }

              if (checkemail() == false) {
                  document.getElementById("MailErr").innerHTML = mailErr;
                  f = false;
              } else { document.getElementById("MailErr").innerHTML = ""; }

             
              if (checkdev() == false) {
                  document.getElementById("devErr").innerHTML = devErr; 
                  f = false;
              } else {
                  document.getElementById("devErr").innerHTML = ""; 
              }
             
              return f;
          }






          function checkFirstName() {
              let name = document.getElementById("Fname").value;

              // בדיקה ראשונית - האם השדה ריק
              if (name == null || name.trim() == "") {
                  fNameErr = "הכנס משהו";
                  return false;
              }

              if (name.length < 2 || name.length > 30) {
                  fNameErr = "אורך השם הפרטי לא תקין (חייב להיות בין 2 ל-30 תווים)";
                  return false;
              }

              for (let i = 0; i < name.length; i++) {
                  const char = name[i];
                  // בדיקה: אם התו הוא לא רווח, והוא כן מספר
                  if (char !== ' ' && !isNaN(char)) {
                      fNameErr = "יש מספר בשם";
                      return false;
                  }
              }

              return true;
          } // סוף בדיקת שם פרטי








          function checklastname() {
              let lname = document.getElementById("Lname").value;

              if (lname == null || lname.trim() == "") {
                  lNameErr = "הכנס משהו";
                  return false;
              }

              if (lname.length < 2 || lname.length > 30) {
                  lNameErr = "אורך השם האחרון לא תקין";
                  return false;
              }

              return true;
          }

          function checkpass() {
              let pass = document.getElementById("password").value;

              if (pass == null || pass.trim() == "") {
                  passErr = "הכנס משהו";
                  return false;
              }

              if (pass.length < 4 || pass.length > 16) {
                  passErr = "אורך הסיסמה חייב להיות בין 4 ל-16 תווים";
                  return false;
              }

              // בדיקה אם קיימת אות גדולה באנגלית
              let hasUpper = false;
              for (let i = 0; i < pass.length; i++) {
                  const char = pass[i];
                  if (char >= 'A' && char <= 'Z') {
                      hasUpper = true;
                      break;
                  }
              }

              if (hasUpper == false) {
                  passErr = "הסיסמה חייבת להכיל לפחות אות אחת גדולה (A-Z)";
                  return false;
              }

              return true;
          }

          function checkuser() {
              let user = document.getElementById("username").value;

              if (user == null || user.trim() == "") {
                  userErr = "הכנס משהו";
                  return false;
              }

              if (user.length < 4 || user.length > 16) {
                  userErr = "אורך שם המשתמש לא תקין";
                  return false;
              }

              

              return true;
          }

          function checkemail() {
              let mail = document.getElementById("email").value;

              if (mail == null || mail.trim() == "") {
                  mailErr = "הכנס משהו";
                  return false;
              }

              if (!mail.includes('@')) {
                  mailErr = "אימייל חייב להיות תקין (להכיל @)";
                  return false;
              }

              return true; // הוסף כדי שהפונקציה תחזיר אמת כשהכל תקין
          }

          function checkdev() {
              let r1 = document.getElementById("r1").checked;
              let r2 = document.getElementById("r2").checked;
              if (!r1 && !r2) {
                  devErr= "סמן משהו"
                  return false;
              }
              return true;
          }
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
                 <center>

    <h1> sign up form </h1>
         <br/>

             <br />
               first name<br>
                        <span id="FnameErr"></span>
<input type="text" id="Fname"  placeholder="john" name="Fname">
                   
           <br />

               last name<br>
                         <span id="LnameErr"></span>
<input type="text" id="Lname"  placeholder="doe" name="lname">
           <br /> 

    
       username<br>
           
                     <span id="usernameERR"></span>
     <input type="text" id="username"  placeholder="john" name="username">
                <br />
         <br />
           email<br>
                      <span id="MailErr"></span>
<input type="text" id="email"  placeholder="example@gmail.com" name="email">
           <br/>
    <br />
 password(must contain atleast one uppercase letter) 
                                    <span id="PassErr"></span>
         <br />
  <input type="text" id="password"  placeholder="Doe" name="password" >
     <br />
         <br />
         are you a developer 
                     <br />
                <span id="devErr"></span>
         <input type="radio" id="r1"  name="dev" value ="yes"/> yes
         <input type="radio" id="r2" name="dev" value ="no"/>no

            <br />
                  <br />

  <input type="checkbox"id="agree" name="agree" /> i agree to the terms and conditions
                  <br />

         <br />
         <input type="submit" id="submit"  name="submit" value="send"/>
                     </br>
                 
                    
            


              
                         </center>

</form>
    <script>
     

    <%= stResult %> 

        
    </script>
</asp:Content>


