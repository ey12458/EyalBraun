<!DOCTYPE html>
<html lang="en">
<head>
    <style>

        .dice { /* Class for each clickable square */
    width:350px; /* square width */
    height: 350px; /* square height */
    display: inline-block; /* place squares side-by-side */
    margin: 20px; /* space between squares */
    background: #4CAF50; /* green background color */
    color: #fff; /* white text color */
    text-align: center; /* center text horizontally */
    line-height: 150px; /* center text vertically by matching height */
    text-decoration: none; /* remove underline for links */
    border-radius: 6px; /* slightly rounded corners */
    font-weight: 600; /* make label slightly bold */
    cursor: pointer; /* pointer cursor to indicate clickable */



    </style>
    <title>The Dice Game</title>

</head>


<body>
    <h1> the Dice Game</h1>
    <h2 id="goal"></h2>
    <script>

       
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
            document.getElementById("die1").innerHTML = dice1;
            let dice2 = Math.floor(Math.random() * 6) + 1;
            document.getElementById("die2").innerHTML = dice2;
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


    <div class="dice" id="die1"></div> 

    <div class="dice "id="die2"> </div>
    <div>
        <h2 id="wins"> </h2>
        </div>
    <div>
<p id="result">  press the button to begin playing! </p>

        </div>
     <button id="bttn" onclick=play()>start game</button>


</body>
</html>