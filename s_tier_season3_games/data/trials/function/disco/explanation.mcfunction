# this function delivers the explanation of how DISCO will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score disco.handler disco.timer.explanation matches 1 run title @a title {text:"DISCO",color:"dark_aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"Disco is a fast-paced reaction focused game.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"There will be one round.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #2

execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"When the game begins, the floor will randomize with multiple blocks.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"You will be given one of the random blocks on the floor.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"Quickly maneuver so that you are standing on the block you are holding.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #3

execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:"As the game progresses, you will have less time.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:"There are also gold blocks which will always remain.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4

execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"You will earn +",color:"aqua"},{"text":"1 point","color":"red"},{"text":" for each round you survive.","color":"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"You will earn +",color:"aqua"},{"text":"3 points","color":"red"},{"text":" each time someone else dies.","color":"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"If you survive all 60 rounds, you will earn a bonus +",color:"aqua"},{"text":"15 points","color":"red"},{"text":".","color":"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4

execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:"Before we start, we'll walk you through with an example.","color":"aqua"}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #5

execute if score disco.handler disco.timer.explanation matches 800 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score disco.handler disco.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score disco.handler disco.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 800 run tellraw @a {text:"---------------------------------------------------",color:"gray"}