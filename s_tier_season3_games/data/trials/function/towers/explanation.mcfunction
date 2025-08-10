# this function delivers the explanation of how TOWERS will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score towers.handler towers.timer.explanation matches 1 run gamemode spectator @a
execute in trials:towers if score towers.handler towers.timer.explanation matches 1 run tp @a 10 115 10 135 25
execute if score towers.handler towers.timer.explanation matches 1 run title @a title {text:"TOWERS",color:"dark_aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:"Towers is a fast-paced survival game.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:"There will be one two minute round.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2

execute in trials:towers if score towers.handler towers.timer.explanation matches 160 run tp @a -15 109 14 -135 4
execute if score towers.handler towers.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 160 run tellraw @a {text:"When the game begins, falling blocks will spawn above you.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 160 run tellraw @a {text:"You must continuosly move to avoid being suffocated.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3

execute in trials:towers if score towers.handler towers.timer.explanation matches 320 run tp @a -15 103 -5 -47 16
execute if score towers.handler towers.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 320 run tellraw @a {text:"After thirty seconds, the red wool on the ground will give way.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 320 run tellraw @a {text:"Don't fall in.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4

execute in trials:towers if score towers.handler towers.timer.explanation matches 480 run tp @a 0 125 0 180 90
execute if score towers.handler towers.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 480 run tellraw @a {text:"Points will be earned by outlasting others.",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 480 run tellraw @a ["",{text:"You will earn +",color:"aqua"},{"text":"3 points","color":"red"},{"text":" each time someone else dies.","color":"aqua"}]
execute if score towers.handler towers.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in trials:towers if score towers.handler towers.timer.explanation matches 640 run tp @a 0 107 -16 0 10
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a {text:"You can also earn points by surviving the following lengths of time:",color:"aqua"}
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a ["",{text:"30 seconds: +",color:"aqua"},{"text":"25 points","color":"red"}]
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a ["",{text:"60 seconds: +",color:"aqua"},{"text":"25 points","color":"red"}]
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a ["",{text:"90 seconds: +",color:"aqua"},{"text":"25 points","color":"red"}]
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a ["",{text:"2 minutes: +",color:"aqua"},{"text":"50 points","color":"red"}]
execute if score towers.handler towers.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute in trials:towers if score towers.handler towers.timer.explanation matches 800 run tp @a 0 105 0 -180 10
execute in trials:towers if score towers.handler towers.timer.explanation matches 800 run gamemode adventure @a
execute in trials:towers if score towers.handler towers.timer.explanation matches 800 run gamemode spectator @a[team=SPECTATORS]
execute if score towers.handler towers.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score towers.handler towers.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score towers.handler towers.timer.explanation matches 800 run tellraw @a {text:"The game begins in 20 seconds!","color":"aqua"}
execute if score towers.handler towers.timer.explanation matches 800 run tellraw @a {text:" "}