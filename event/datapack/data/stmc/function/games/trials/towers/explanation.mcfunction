# this function delivers the explanation of how TOWERS will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score towers.handler towers.timer.explanation matches 1 run gamemode spectator @a
execute if score towers.handler towers.timer.explanation matches 1 run tp @a 10 115 10 135 25
execute if score towers.handler towers.timer.explanation matches 1 run title @a title {text:"TOWERS",color:"dark_aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:"Towers is a fast-paced survival game.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:"There will be one three minute round.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2

execute if score towers.handler towers.timer.explanation matches 100 run tp @a -15 109 14 -135 4
execute if score towers.handler towers.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 100 run tellraw @a {text:"When the game begins, falling blocks will spawn above you.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 100 run tellraw @a {text:"You must continuosly move to avoid being suffocated.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3

execute if score towers.handler towers.timer.explanation matches 200 run tp @a 0 125 0 180 90
execute if score towers.handler towers.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 200 run tellraw @a {text:"Points will be earned by surviving.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 200 run tellraw @a {text:"Some bonus points will be awarded for outlasting others.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #4
execute if score towers.handler towers.timer.explanation matches 300 run tp @a 0 105 0 -180 10
execute if score towers.handler towers.timer.explanation matches 300 run gamemode adventure @a
execute if score towers.handler towers.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score towers.handler towers.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 300 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score towers.handler towers.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 300 run tellraw @a {text:"The game begins in 10 seconds!","color":"aqua"}
execute if score towers.handler towers.timer.explanation matches 300 run tellraw @a {text:" "}

# move to next stage when explanation ends
execute if score towers.handler towers.timer.explanation matches 300.. run scoreboard players set towers.handler towers.stage 2