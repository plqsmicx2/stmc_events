# this function delivers the explanation of how REPLICATE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score replicate.handler replicate.timer.explanation matches 1 run title @a title {text:"REPLICATE",color:"dark_aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"Replicate is a team construction game.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"There will be one, 4 mi round.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #2

execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"When the game begins, the central build will generate with a pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You will each be given the associated blocks of that pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You must then fill the surrounding builds with the same pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #3

execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be six unique patterns.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be 3 seconds between patterns to let you prepare.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4

execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"All points are determined by relative placement.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"So make sure you're moving fast!",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4

execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"There are also points for relative placement for each buid.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"So you'll get bonus points for doing exceptional for the whole time.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #5

execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"The game starts in 20 seconds!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"---------------------------------------------------",color:"gray"}