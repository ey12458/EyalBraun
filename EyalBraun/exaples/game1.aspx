<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        base {
        background-color:deeppink;}
        
        .dice-container { display: flex; text-align:center ; display: flex;
    justify-content: center; }
.dice { font-size: 200px; line-height: 1; margin: 5px; text-align:center }
.roll-dice { margin-top: 10px;  }

    </style>
    
    <title>The Dice Game</title>

</head>


<body>
    <center>
    <h1> the Dice Game</h1>
    <h2 id="goal"></h2>
    <script>
        const diceFaces = { 1: "⚀", 2: "⚁", 3: "⚂", 4: "⚃", 5: "⚄", 6: "⚅" };


        function finalresult(num1, num2){
            document.getElementById("die1").innerHTML = diceFaces[num1];
            document.getElementById("die2").innerHTML = diceFaces[num2];


        }
        

        function gengoal() {
            let goal = Math.floor(Math.random() * 11) + 2;
            return goal;
        }
        let goal = gengoal();
        document.getElementById("goal").innerHTML = "Current Goal: " + goal; 

        rolls = 0;
        let wins = 0;
        let old = goal;

        function play() {
            let dice1 = Math.floor(Math.random() * 6) + 1;
            let dice2 = Math.floor(Math.random() * 6) + 1;
            finalresult(dice1, dice2);

            if (dice1 + dice2 == goal) {
                wins++;
                rolls = 0;
                window.alert("You rolled a " + (dice1 + dice2) + " and won! ,number of wins: " + wins)
                document.getElementById("result").innerHTML = "You rolled a " + (dice1 + dice2) + " and won! ,number of wins: " + wins;
                document.getElementById("wins").innerHTML = "wins: " + wins;

                goal = gengoal();

                while (goal == old) { 
                    goal = gengoal();


                }
                document.getElementById("goal").innerHTML = "Current Goal: " + goal; 


            }
            else {
                rolls++;
                if (rolls > 0) {
                    document.getElementById("bttn").innerHTML = "play again";
                }
                document.getElementById("result").innerHTML = "you have rolled "+ rolls + " times You rolled a " + (dice1 + dice2) + " and lost. Try again!";
            }
            if (rolls == 0) {
                document.getElementById("bttn").innerHTML = "start game";
                   
}
        }

    </script>
    <div><h2 id="wins"> Wins:0</h2></div>
       <div><h2 id="result"> Welcom to the Dice Game Press The Button To Begin</h2></div>


       <div class="dice-container">

              <div class="dice" id="die1">⚀</div>
        <div class="dice" id="die2">⚀</div>
       </div>
      



        <div>
     <button id="bttn" class="roll-dice" onclick=play()>start game</button>
    </div>
        </center>
</body>
</html>