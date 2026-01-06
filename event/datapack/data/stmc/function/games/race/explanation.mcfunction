# this function delivers the explanation of how RACE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score race.handler race.timer.explanation matches 1 run gamemode spectator @a
execute if score race.handler race.timer.explanation matches 1 run tp @a -13 111 25 -180 0
execute if score race.handler race.timer.explanation matches 1 run title @a title {text:"RACE",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:"Race is a simple game.",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:"Your objective is to complete three laps in the least time possible.",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score race.handler race.timer.explanation matches 100 run tp @a 18 110 -36 120 12
execute if score race.handler race.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 100 run tellraw @a {text:"To help you progress faster, there are skips indicated by red wool.",color:"green"}
execute if score race.handler race.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score race.handler race.timer.explanation matches 200 run tp @a 58 112 65 -135 25
execute if score race.handler race.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 200 run tellraw @a [{text:"You will earn points for outplacing your opponents.",color:"green"}]
execute if score race.handler race.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 200 run tellraw @a [{text:"Bonus points are also provided for achieving certain placements and having one of the five fastest laps.",color:"green"}]
execute if score race.handler race.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #5
execute if score race.handler race.timer.explanation matches 300 run gamemode adventure @a
execute if score race.handler race.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score race.handler race.timer.explanation matches 300 run tp @a -13 106 14 -180 0
execute if score race.handler race.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 300 run tellraw @a {text:"The race begins in about 10 seconds.",color:"green"}
execute if score race.handler race.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:"green"}
execute if score race.handler race.timer.explanation matches 300 run tellraw @a {text:" "}

execute if score race.handler race.timer.explanation matches 300.. run scoreboard players set race.handler race.stage 2