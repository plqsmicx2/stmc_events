# this function delivers the explanation of how EXTRACT will work

# every 8 seconds, each blurb will be told to the players
# and players will be teleported somewhere for an appropriate visual

# blurb #1
execute if score extract.handler extract.timer.explanation matches 1 run title @a title {text:"EXTRACT",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run gamemode spectator @a
execute if score extract.handler extract.timer.explanation matches 1 run teleport @a 19 112 0 90 30
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:"Extract is a round-robin pvp game.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:"Your objective is to mine as many ores and kill your opponents.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score extract.handler extract.timer.explanation matches 100 run teleport @a -5 103 18 -40 10
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:"Before each round, there will be a short period to choose which class you would like to use.",color:red}
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:"You may switch your class before the round starts, but make sure you always pick one. They do not save between rounds.",color:red}
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:"Each round will last 2 minutes.",color:red}
execute if score extract.handler extract.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score extract.handler extract.timer.explanation matches 200 run teleport @a -5 102 3 -117.5 7
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:"All points will be earned from mining ores & killing your opponents.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:"Diamonds are worth 2 points. Gold is worth 1 point. Kills are worth 1 point..",color:"red"}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:"Points earned from mining in the first 20 seconds will be worth double.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #4
execute if score extract.handler extract.timer.explanation matches 300 run gamemode adventure @a
execute if score extract.handler extract.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score extract.handler extract.timer.explanation matches 300 run teleport @a 0 101 -18 0 0
execute if score extract.handler extract.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 300 run tellraw @a {text:"The first round begins in about 10 seconds.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:"red"}
execute if score extract.handler extract.timer.explanation matches 300 run tellraw @a {text:" "}

execute if score extract.handler extract.timer.explanation matches 300.. run scoreboard players set extract.handler extract.stage 2