<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <script language="javascript">

          function checkAll() {
              firstName = "";
              lastname = "";
              PassErr = "";
              userErr = "";
              mailErr = "";
              f = true;

              if (checkFirstName() == false) {
                  document.getElementById("FnameErr").innerHTML = firstName
                  f = false;

              }
              if (checklastname() == false) { 
              document.getElementById("LnameErr").innerHTML = lastname
              f = false;
          }
              if (checkuser() == false) {
                  f = false;
                  document.getElementById("usernameERR").innerHTML = userErr
              }
              if (checkpass() == false) {
                  f = false;
                  document.getElementById("PassErr").innerHTML = PassErr
              }
              if (checkemail() == false) {
                  f = false;
                  document.getElementById("MailErr").innerHTML = mailErr
              }

              return f;
          }// סוף פעולה ראשית

          function checkFirstName() {
              name = document.getElementById("firstname").value;
              //alert(name);

              if (name.length < 2 || name.length > 30) {
                  firstName = "אורך השם הפרטי לא תקין";
                 
                  return false;
              }
              for (i = 0; i < name.length; i++) {
                  const char = name[i];

                  // בדיקה: אם התו הוא לא רווח, והוא כן מספר
                  if (char !== ' ' && !isNaN(char)) {
                      firstName += "+";
                      firstName += "יש מספר בשם";
                      return false;
                  }

                  }
                  
              return true;
          }
          // סוף בדיקת שם

          function checklastname() {
              lname = document.getElementById("lastname").value;
            

              if (lname.length < 2 || lname.length > 30) {
                  lastname = "אורך השם האחרון לא תקין";
                  return false;
              }
              return true;
          } 

          function checkpass() {
              pass = document.getElementById("password").value;
              if (pass.length < 4 || pass.length > 16) {
                  passErr = "אורך השם חייב להיות בין 4 ל-16 תווים";
                  return false;
              }

              // STEP 2: Check for uppercase letter (No-Regex Loop)
              let hasUpper = false;
              for (let i = 0; i < pass.length; i++) {
                  const char = pass[i];
                  if (char >= 'A' && char <= 'Z') {
                      hasUpper = true;
                  }
              }

              // If the loop finished and found NO uppercase letter
              if (hasUpper == false) {
                  passErr = "הסיסמה חייבת להכיל לפחות אות אחת גדולה (A-Z)";
                  return false;
              }

              // If all rules pass
              passErr = "";
              return true;




             

          }


          function checkuser() {

             

              user = document.getElementById("password").value;
              if (user.length < 4|| user.length > 16) {
                  userErr = "אורך הסיסמא  לא תקין";
                  return false;
              }
              let hasEnglishLetter = false;
              for (let i = 0; i < user.length; i++) {
                  const char = user[i];
                  // בודק אם התו הוא בין a ל-z או בין A ל-Z
                  if ((char >= 'a' && char <= 'z') || (char >= 'A' && char <= 'Z')) {
                      hasEnglishLetter = true;
                      break; // מצאנו אות אחת, אין צורך להמשיך בלולאה
                  }
              }

              // אם הלולאה הסתיימה ולא נמצאה אף אות באנגלית
              if (!hasEnglishLetter) {
                  userErr = "השם  חייבת להכיל לפחות אות אחת באנגלית";
                  return false;
              }

              // אם הכל תקין
              userErr = "";
              return true;
          }
             


              function checkemail() {
                  mail = document.getElementById("email").value;
                  if (mail == null) { 
                      mailErr = "הכנס משהו ";
                  return false
              }
                  if (!mail.includes('@')) {
                      mailErr = "אימייל חייב להיות תקין";
                      return false

                  }

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
<input type="text" id="fname"  placeholder="john" name="fname">
           <br />

               last name<br>
<input type="text" id="lname"  placeholder="doe" name="lname">
           <br /> 

    
       username<br>
     <input type="text" id="username"  placeholder="john" name="username">
                <br />
         <br />
           email<br>
<input type="text" id="email"  placeholder="example@gmail.com" name="email">
           <br/>
    <br />
 password(must contain atleast one uppercase letter) 
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
                     </br>
                     <button onclick="location.reload()">רענן עמוד / איפוס טופס</button>
                         </br>
             <span id="FnameErr"></span>
    <span id="LnameErr"></span>
                     <span id="usernameERR"></span>
                     <span id="PassErr"></span>
                     <span id="MailErr"></span>
                         </center>

</form>
    <%= stResult %>
</asp:Content>


