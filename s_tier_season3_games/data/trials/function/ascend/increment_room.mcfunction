# helper function that handles all the quirks of transitioning between rooms

# this function will increment the rooms completed of whichever team ran it
# will then kill all completed armor stands nearby (to ensure no skipping)
# execute in trials:ascend run teleport players to the next stage
# and finally check if this warrants giving the team a bonus (all rooms complete)

# reset ascend.completed for whoever ran this function
scoreboard players set @s ascend.completed 0

# case: red team

# increment room completed
execute if entity @s[team=RED_RACCOONS] run scoreboard players add ascend.RedRaccoons ascend.completed 1

# kill armor stands near red team
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] at @s run kill @e[type=armor_stand,distance=..5]

# execute in trials:ascend run teleport red players to next stage
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=RED_RACCOONS] run execute as @a[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

# check if bonus should be provided
execute if entity @s[team=RED_RACCOONS] run execute if score ascend.RedRaccoons ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.RedRaccoons ascend.points.firstCompletion 1

# case: orange team

execute if entity @s[team=ORANGE_OTTERS] run scoreboard players add ascend.OrangeOtters ascend.completed 1
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=ORANGE_OTTERS] run execute as @a[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=ORANGE_OTTERS] run execute if score ascend.OrangeOtters ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.OrangeOtters ascend.points.firstCompletion 1

# case: pink team

execute if entity @s[team=PINK_PIKAS] run scoreboard players add ascend.PinkPikas ascend.completed 1
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=PINK_PIKAS] run execute as @a[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=PINK_PIKAS] run execute if score ascend.PinkPikas ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.PinkPikas ascend.points.firstCompletion 1

# case: yellow team

execute if entity @s[team=YELLOW_YAKS] run scoreboard players add ascend.YellowYaks ascend.completed 1
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=YELLOW_YAKS] run execute as @a[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=YELLOW_YAKS] run execute if score ascend.YellowYaks ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.YellowYaks ascend.points.firstCompletion 1

# case: green team

execute if entity @s[team=GREEN_GOATS] run scoreboard players add ascend.GreenGoats ascend.completed 1
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=GREEN_GOATS] run execute as @a[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=GREEN_GOATS] run execute if score ascend.GreenGoats ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.GreenGoats ascend.points.firstCompletion 1

# case: cyan team

execute if entity @s[team=CYAN_COUGARS] run scoreboard players add ascend.CyanCougars ascend.completed 1
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=CYAN_COUGARS] run execute as @a[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=CYAN_COUGARS] run execute if score ascend.CyanCougars ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.CyanCougars ascend.points.firstCompletion 1

# case: purple team

execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players add ascend.PurplePenguins ascend.completed 1
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=PURPLE_PENGUINS] run execute as @a[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=PURPLE_PENGUINS] run execute if score ascend.PurplePenguins ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.PurplePenguins ascend.points.firstCompletion 1

# case: blue team

execute if entity @s[team=BLUE_BEARS] run scoreboard players add ascend.BlueBears ascend.completed 1
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] at @s run kill @e[type=armor_stand,distance=..5]
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 132 -102 180 0
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 152 -102 180 0
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 172 -102 180 0
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 192 -102 180 0
execute if entity @s[team=BLUE_BEARS] run execute as @a[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 212 -102 180 0

execute if entity @s[team=BLUE_BEARS] run execute if score ascend.BlueBears ascend.completed matches 6 \
        unless score ascend.RedRaccoons ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.OrangeOtters ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PinkPikas ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.YellowYaks ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.GreenGoats ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.CyanCougars ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.PurplePenguins ascend.points.bonusCompletionValue matches 1 \
        unless score ascend.BlueBears ascend.points.bonusCompletionValue matches 1 \
        run scoreboard players set ascend.BlueBears ascend.points.firstCompletion 1