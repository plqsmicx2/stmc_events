# helper function that ends the blitz game

# set alive team's placement
execute as @a[team=RED_RACCOONS] if score @s blitz.alive matches 1 run scoreboard players set blitz.RedRaccoons blitz.stats.teamPlacement 1
execute as @a[team=ORANGE_OTTERS] if score @s blitz.alive matches 1 run scoreboard players set blitz.OrangeOtters blitz.stats.teamPlacement 1
execute as @a[team=PINK_PIKAS] if score @s blitz.alive matches 1 run scoreboard players set blitz.PinkPikas blitz.stats.teamPlacement 1
execute as @a[team=YELLOW_YAKS] if score @s blitz.alive matches 1 run scoreboard players set blitz.YellowYaks blitz.stats.teamPlacement 1
execute as @a[team=GREEN_GOATS] if score @s blitz.alive matches 1 run scoreboard players set blitz.GreenGoats blitz.stats.teamPlacement 1
execute as @a[team=CYAN_COUGARS] if score @s blitz.alive matches 1 run scoreboard players set blitz.CyanCougars blitz.stats.teamPlacement 1
execute as @a[team=PURPLE_PENGUINS] if score @s blitz.alive matches 1 run scoreboard players set blitz.PurplePenguins blitz.stats.teamPlacement 1
execute as @a[team=BLUE_BEARS] if score @s blitz.alive matches 1 run scoreboard players set blitz.BlueBears blitz.stats.teamPlacement 1

# announce winner
execute if score blitz.RedRaccoons blitz.stats.teamPlacement matches 1 run title @a title {text:"Red Raccoons win!",color:red}
execute if score blitz.OrangeOtters blitz.stats.teamPlacement matches 1 run title @a title {text:"Orange Otters win!",color:gold}
execute if score blitz.PinkPikas blitz.stats.teamPlacement matches 1 run title @a title {text:"Pink Pikas win!",color:light_purple}
execute if score blitz.YellowYaks blitz.stats.teamPlacement matches 1 run title @a title {text:"Yellow Yaks win!",color:yellow}
execute if score blitz.GreenGoats blitz.stats.teamPlacement matches 1 run title @a title {text:"Green Goats win!",color:dark_green}
execute if score blitz.CyanCougars blitz.stats.teamPlacement matches 1 run title @a title {text:"Cyan Cougars win!",color:dark_aqua}
execute if score blitz.PurplePenguins blitz.stats.teamPlacement matches 1 run title @a title {text:"Purple Penguins win!",color:dark_purple}
execute if score blitz.BlueBears blitz.stats.teamPlacement matches 1 run title @a title {text:"Blue Bears win!",color:blue}

scoreboard players set blitz.handler blitz.stage 4