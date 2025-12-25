# this function delivers the explanation of how REPLICATE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score replicate.handler replicate.timer.explanation matches 1 run gamemode spectator @a
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 1 run tp @a 57 112 64 90 15
execute if score replicate.handler replicate.timer.explanation matches 1 run title @a title {text:"REPLICATE",color:"dark_aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"Replicate is a team construction game.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:"There will be one, 4 minute round.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 160 run tp @a 42 107 57 45 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 160 run clone 5 101 10 9 101 14 37 104 62
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"When the game begins, the central build will generate with a pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You will each be given the associated blocks of that pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:"You must then fill the surrounding builds with the same pattern.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 320 run tp @a 45 113 75 180 45
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 320 run fill 37 104 62 41 104 66 chiseled_tuff_bricks
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be six unique patterns.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:"There will be 3 seconds between patterns to let you prepare.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 480 run tp @a 51 106 71 120 0
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"All points are determined by relative placement.",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:"So make sure you're moving fast!",color:"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 640 run tp @a 31 112 50 -45 30
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"There are also points for relative placement for each build.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:"So you'll get bonus points for doing exceptional for the whole time.","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=RED_RACCOONS] run tp @s 45 105 64 90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=ORANGE_OTTERS] run tp @s 45 105 21 90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=PINK_PIKAS] run tp @s 45 105 -22 90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=YELLOW_YAKS] run tp @s 45 105 -65 90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=GREEN_GOATS] run tp @s -45 105 -65 -90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=CYAN_COUGARS] run tp @s -45 105 -22 -90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=PURPLE_PENGUINS] run tp @s -45 105 21 -90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 as @a[team=BLUE_BEARS] run tp @s -45 105 64 -90 0
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 run gamemode survival @a
execute in stmc:trials/replicate if score replicate.handler replicate.timer.explanation matches 800 run gamemode spectator @a[team=SPECTATORS]
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:"The game starts in 20 seconds!","color":"aqua"}
execute if score replicate.handler replicate.timer.explanation matches 800 run tellraw @a {text:" "}