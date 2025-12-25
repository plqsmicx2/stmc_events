# helper function that handles teams who have just completed all rounds

# Red Raccoons

# set completion
execute if score replicate.RedRaccoons replicate.stage matches 6 run scoreboard players set replicate.RedRaccoons replicate.completed 1

# put players in spectator
execute if score replicate.RedRaccoons replicate.stage matches 6 run gamemode spectator @a[team=RED_RACCOONS]

# announce completion
$execute if score replicate.RedRaccoons replicate.stage matches 6 run tellraw @a {text:"$(redName) have completed all builds!",color:red}

# prevent re-announcements
execute if score replicate.RedRaccoons replicate.stage matches 6 run scoreboard players set replicate.RedRaccoons replicate.stage 7

# Orange Otters

execute if score replicate.OrangeOtters replicate.stage matches 6 run scoreboard players set replicate.OrangeOtters replicate.completed 1
execute if score replicate.OrangeOtters replicate.stage matches 6 run gamemode spectator @a[team=ORANGE_OTTERS]
$execute if score replicate.OrangeOtters replicate.stage matches 6 run tellraw @a {text:"$(orangeName) have completed all builds!",color:gold}
execute if score replicate.OrangeOtters replicate.stage matches 6 run scoreboard players set replicate.OrangeOtters replicate.stage 7

# Pink Pikas

execute if score replicate.PinkPikas replicate.stage matches 6 run scoreboard players set replicate.PinkPikas replicate.completed 1
execute if score replicate.PinkPikas replicate.stage matches 6 run gamemode spectator @a[team=PINK_PIKAS]
$execute if score replicate.PinkPikas replicate.stage matches 6 run tellraw @a {text:"$(pinkName) have completed all builds!",color:light_purple}
execute if score replicate.PinkPikas replicate.stage matches 6 run scoreboard players set replicate.PinkPikas replicate.stage 7

# Yellow Yaks

execute if score replicate.YellowYaks replicate.stage matches 6 run scoreboard players set replicate.YellowYaks replicate.completed 1
execute if score replicate.YellowYaks replicate.stage matches 6 run gamemode spectator @a[team=YELLOW_YAKS]
$execute if score replicate.YellowYaks replicate.stage matches 6 run tellraw @a {text:"$(yellowName) have completed all builds!",color:yellow}
execute if score replicate.YellowYaks replicate.stage matches 6 run scoreboard players set replicate.YellowYaks replicate.stage 7

# Green Goats

execute if score replicate.GreenGoats replicate.stage matches 6 run scoreboard players set replicate.GreenGoats replicate.completed 1
execute if score replicate.GreenGoats replicate.stage matches 6 run gamemode spectator @a[team=GREEN_GOATS]
$execute if score replicate.GreenGoats replicate.stage matches 6 run tellraw @a {text:"$(greenName) have completed all builds!",color:dark_green}
execute if score replicate.GreenGoats replicate.stage matches 6 run scoreboard players set replicate.GreenGoats replicate.stage 7

# Cyan Cougars

execute if score replicate.CyanCougars replicate.stage matches 6 run scoreboard players set replicate.CyanCougars replicate.completed 1
execute if score replicate.CyanCougars replicate.stage matches 6 run gamemode spectator @a[team=CYAN_COUGARS]
$execute if score replicate.CyanCougars replicate.stage matches 6 run tellraw @a {text:"$(cyanName) have completed all builds!",color:dark_aqua}
execute if score replicate.CyanCougars replicate.stage matches 6 run scoreboard players set replicate.CyanCougars replicate.stage 7

# Purple Penguins

execute if score replicate.PurplePenguins replicate.stage matches 6 run scoreboard players set replicate.PurplePenguins replicate.completed 1
execute if score replicate.PurplePenguins replicate.stage matches 6 run gamemode spectator @a[team=PURPLE_PENGUINS]
$execute if score replicate.PurplePenguins replicate.stage matches 6 run tellraw @a {text:"$(purpleName) have completed all builds!",color:dark_purple}
execute if score replicate.PurplePenguins replicate.stage matches 6 run scoreboard players set replicate.PurplePenguins replicate.stage 7

# Blue Bears

execute if score replicate.BlueBears replicate.stage matches 6 run scoreboard players set replicate.BlueBears replicate.completed 1
execute if score replicate.BlueBears replicate.stage matches 6 run gamemode spectator @a[team=BLUE_BEARS]
$execute if score replicate.BlueBears replicate.stage matches 6 run tellraw @a {text:"$(blueName) have completed all builds!",color:blue}
execute if score replicate.BlueBears replicate.stage matches 6 run scoreboard players set replicate.BlueBears replicate.stage 7
