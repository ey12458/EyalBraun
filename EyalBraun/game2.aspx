<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="game2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>





    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        function gengoal() {
            return(Math.floor(Math.random() * 100) + 1);

        }
        function play()
        {
            let goal = gengoal();
            let gamestart = confirm("do you want to play again");
            while (gamestart) {

                let guess = prompt("guess the number between 1 and 100", 100);

                if (guess > goal) {
                    document.getElementById("screen").innerHTML = "too high try again";
                    setTimeout(2000); 
                    gamestart = confirm("do you want to play again");
                }
                else if (guess < goal) {
                    document.getElementById("screen").innerHTML = "too low try again";
                    setTimeout(2000); 
                    gamestart = confirm("do you want to play again");
                }
                   

                else {
                    document.getElementById("screen").innerHTML = "congras";

                    setTimeout(2000); 
                  gamestart=confirm("do you want to play again");

                }
            }
                return;
            
            
        }


    </script>

    <div>
        <h2 > guess the number game</h2>
    </div>

    <div>
        <h3 id="screen"></h3>
    </div>

    <div>
     <button id="bttn" class="start" onclick=play()>start game</button>

        </div>







</asp:Content>

