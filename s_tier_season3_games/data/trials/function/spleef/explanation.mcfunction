# this function delivers the explanation of how SPLEEF will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score spleef.handler spleef.timer.explanation matches 1 run gamemode spectator @a
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 1 run tp @a 20 128 -20 45 35
execute if score spleef.handler spleef.timer.explanation matches 1 run title @a title {text:"SPLEEF",color:"dark_aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:"Spleef is a very simple & traditional game.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:"There will be one round.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 160 run tp @a 25 140 25 135 33
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:"When the game begins, you will fall onto the arena below.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:"After ten seconds, you will be given tools to break blocks.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 320 run tp @a -21 104 20 -135 -15
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"There are three levels, each of which are smaller than the one above it.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"The bottom layer will be unbreakable until thirty seconds have passed.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"The outer regions will begin decaying after a minute.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 480 run tp @a -21 104 20 -135 -15
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:"All points are determined by placement.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"You will earn +",color:"aqua"},{"text":"5 points","color":"red"},{"text":" each time someone else dies.","color":"aqua"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #4
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 640 run tp @a 0.0 140 0.0 180 90
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:"You will also earn the following bonus points when this # of players remain:","color":"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a ["",{text:"Top 10: +",color:"aqua"},{"text":"15 points","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a ["",{text:"Top 5: +",color:"aqua"},{"text":"10 points","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a ["",{text:"Top 3: +",color:"aqua"},{"text":"10 points","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a ["",{text:"Top 2: +",color:"aqua"},{"text":"15 points","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a ["",{text:"Top 1: +",color:"aqua"},{"text":"20 points","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #5
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 800 run tp @a 0 154 0 -180 90
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 800 run gamemode survival @a
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 800 run gamemode spectator @a[team=SPECTATORS]
execute if score spleef.handler spleef.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 800 run tellraw @a {text:"The game begins in 20 seconds!","color":"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 800 run tellraw @a {text:" "}
