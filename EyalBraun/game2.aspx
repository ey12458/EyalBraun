<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="game2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>





    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        let start = false;
        goal = Math.floor(Math.random() * 100) + 1;
        permgoal = 0;
        function startgame() {

            if (!start) { 
                permgoal = goal;
                start = true;
                game(goal);
            }
            if (start) {
                game(permgoal);
            }




            function game(permgoal) {

                if()


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

