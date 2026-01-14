<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="formtest.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form>
       First name<br>
     <input type="text" id="fname"  placeholder="john"><br>
 Last name<br>
  <input type="text" id="lname"  placeholder="Doe">
     <br />

      <br /> אופניים

       <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
           <br/> רכב
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
       <br /> מטוס

  <input type="radio" id="vehicle3" name="vehicle3" value="plane">
     <h2>רדיו ניסיון</h2>
     <br /> yes
<input type="radio" id="radio1" value="">
     <br /> no          
     <input type="radio" id="radio2"value="">

     <br />
     <input type="button" id="button1"value="click me">


     <br /> 
     <h2>write an essay</h2>
     <textarea id="essay" name="essay" rows="10" cols="100"></textarea>

   </form>

    <table border ="1">
        <th</th>

        <td></td>

        
    </table>
</asp:Content>

