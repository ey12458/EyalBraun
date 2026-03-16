<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="calculator.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



    <style>

 
        .calculator {
       margin: 20px auto;
        width:725px;
        height:950px;
        border-style: solid;
  border-width: 5px;
  border-color:blue;
        
        
        }

        .button-container { 
            height:750px;
            border-style: solid;
  border-width: 5px;
        }

        .display {
            text-align: center;
            width: 725px;
            height: 200px;
            border-style: solid;
            border-width: 5px;
            border-color: green;
            font-size: 50px;
           
        }

        .button{
             border-collapse: collapse;
            height:175px;
            width:175px;
             border-radius: 6px;
             font-size:30px;




        }






    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        let num = "";
        let int1 = "";
        let int2 ="";
        let sign = "";

        function add(num) {
            if (sign == "") {
                int1 += num;
                document.getElementById("display").innerHTML = int1;
            }
           
        
            else { 
            int2 += num;
            document.getElementById("display").innerHTML = int2;
            }
        }
       

        function caluclate() {

            document.getElementById("display").innerHTML = eval(int1 + sign + int2);
        }

        function deletes() {
            int1 = ""; int2 = ""; sign = ""; document.getElementById('display').innerHTML = "";

}
















    </script>

    <div class="wrapper">
    <div class="calculator">
        <div class="display"><p id="display"></p></div>
        <div class="button-container">

       
            <table>   
                
                <tr>
                    

                    <td>
                    <button id="1" class="button" onclick=" add('1')">1</button>

                    </td>
                    <td>
                        <button id="2"  onclick=" add('2')" class="button">2</button>

                    </td>
                    <td>
                        <button id="3"  onclick=" add('3')" class="button">3</button>

                    </td>
                    <td> <button id="3+"  onclick="sign='+';document.getElementById('display').innerHTML = '+';" class="button">+</button></td>
                </tr>

                <tr>

                    <td>
                        <button id="4"  onclick=" add('4')" class="button">4</button>

                    </td>
                    <td>
                        <button id="5"  onclick=" add('5')" class="button">5</button>

                    </td>

                    <td>
                        <button id="6"  onclick=" add('6')" class="button">6</button>

                    </td>
                    <td><button id="-" onclick="sign='-';document.getElementById('display').innerHTML = '-';" class="button">-</button></td>

                </tr>

                <tr>

                    <td>
                        <button id="7"  onclick=" add('7')" class="button">7</button>

                    </td>
                    <td>
                        <button id="8"  onclick=" add('8')" class="button">8</button>

                   </td>
                    <td>
                        <button id="9"  onclick=" add('9')" class="button" >9</button>

                    </td>
                    <td><button id="delete"class="button" onclick="deletes() ">delete</button></td>

                </tr>
                <tr>
                   
                        <td>
                            <button id="0"  onclick="add('0')" class="button">0</button> 

                        </td>
                    <td><button id="*" onclick="sign='*';document.getElementById('display').innerHTML = '*';" class="button">*</button></td>
                    <td><button id="/" onclick="sign='/';document.getElementById('display').innerHTML = '/';" class="button">/</button></td>
                    <td><button id="="class="button" onclick="caluclate()">=</button></td>
                    
                </tr>
            </table>

        </div>

    </div>
        </div>
</asp:Content>

