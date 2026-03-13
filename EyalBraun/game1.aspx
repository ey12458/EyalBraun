<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="game1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


  <style>






  </style>
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    


    <h1>Roll the Dice Game</h1>


    <script>
        /*creates a goal for 2 dices */
        function gengoal() {
            let goal = Math.floor(Math.random() * 11) + 2;
            return goal;
        }

        /*plays game by rolling 2 dices and sending an alert when you win also updates wins and rolls  */

        let goal = gengoal();
        let wins = 0;
        function play() {
            let rolls = 0;
            let dice1 = Math.floor(Math.random() * 6) + 1;
            let dice2 = Math.floor(Math.random() * 6) + 1;
            if (dice1 + dice2 == goal) {
                wins++;
                window.alert("You rolled a " + (dice1 + dice2) + " and won! Number of wins: " + wins);
                document.getElementById("wins").innerHTML = "wins: " + wins + "!";
                rolls = 0;
                /*  checks that goal isnt the same -*/
                let oldgoal = goal;
                goal = gengoal();
                if (goal == oldgoal) {
                    let goal = gengoal();
                }
                /*-------------------------------- */ 
               
            }
            else {
                rolls++;
                document.getElementById("goals").innerHTML = 'You rolled a ' + (dice1 + dice2) + '. Try again!';
                document.getElementById("btt").innerHTML = "try again";
}

    </script>
       <h2 id="goals">Press "Start Game" to begin!</h2>
    <h1 id="wins">wins: 0</h1>

    <button id="btt" onclick="play()">Start Game</button>

        
</asp:Content>

