# this function delivers the explanation of how REPLICATE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score replicate.handler replicate.timer.explanation matches 1 run gamemode spectator @a
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 1 run tp @a 39 117 8 0 45
execute if score replicate.handler replicate.timer.explanation matches 1 run title @a title {text:"REPLICATE",color:"dark_aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"Replicate is a team construction game.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"There will be one, 4 minute round.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 160 run tp @a 44 114 15 28 20
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 160 run clone -2 85 -2 2 85 2 37 111 21
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"When the game begins, the central build will generate with a pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You will each be given the associated blocks of that pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You must then fill the surrounding builds with the same pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 320 run tp @a 27 114 23 -90 25
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 320 run fill 41 111 21 37 111 25 chiseled_tuff_bricks
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be six unique patterns.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be 3 seconds between patterns to let you prepare.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 480 run tp @a 45 127 20 125 25
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"All points are determined by relative placement.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"So make sure you're moving fast!",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 640 run tp @a 25 116 11 -60 30
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"There are also points for relative placement for each buid.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"So you'll get bonus points for doing exceptional for the whole time.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=RED_RACCOONS] 39 113 18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=ORANGE_OTTERS] 0 113 18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=PINK_PIKAS] -39 113 18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=GREEN_GOATS] -39 113 -18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=CYAN_COUGARS] 0 113 -18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run tp @a[team=PURPLE_PENGUINS] 39 113 -18 0 10
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run gamemode survival @a
execute in trials:replicate if score replicate.handler replicate.timer.explanation matches 800 run gamemode spectator @a[team=SPECTATORS]
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"The game starts in 20 seconds!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}