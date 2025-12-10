# helper function that execute in trials:ascend run teleports players back to their central room

# run @s whenever the player clicks their item

# first, reset their usage of the scoreboard
scoreboard players set @s ascend.return 0

# then execute in trials:ascend run teleport them based on their stage

# case: red team
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 0 run execute in trials:ascend run teleport @s -100 103 -102
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 133 -102
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 153 -102
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 173 -102
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 193 -102
execute if entity @s[team=RED_RACCOONS] if score ascend.RedRaccoons ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 213 -102

# case: orange team
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 0 run execute in trials:ascend run teleport @s 0 103 -102
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 1 run execute in trials:ascend run teleport @s 0 133 -102
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 2 run execute in trials:ascend run teleport @s 0 153 -102
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 3 run execute in trials:ascend run teleport @s 0 173 -102
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 4 run execute in trials:ascend run teleport @s 0 193 -102
execute if entity @s[team=ORANGE_OTTERS] if score ascend.OrangeOtters ascend.completed matches 5 run execute in trials:ascend run teleport @s 0 213 -102

# case: pink team
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 0 run execute in trials:ascend run teleport @s 100 103 -102
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 1 run execute in trials:ascend run teleport @s 100 133 -102
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 2 run execute in trials:ascend run teleport @s 100 153 -102
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 3 run execute in trials:ascend run teleport @s 100 173 -102
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 4 run execute in trials:ascend run teleport @s 100 193 -102
execute if entity @s[team=PINK_PIKAS] if score ascend.PinkPikas ascend.completed matches 5 run execute in trials:ascend run teleport @s 100 213 -102

# case: yellow team
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 0 run execute in trials:ascend run teleport @s 100 103 -2
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 1 run execute in trials:ascend run teleport @s 100 133 -2
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 2 run execute in trials:ascend run teleport @s 100 153 -2
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 3 run execute in trials:ascend run teleport @s 100 173 -2
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 4 run execute in trials:ascend run teleport @s 100 193 -2
execute if entity @s[team=YELLOW_YAKS] if score ascend.YellowYaks ascend.completed matches 5 run execute in trials:ascend run teleport @s 100 213 -2

# case: green team
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 0 run execute in trials:ascend run teleport @s 100 103 98
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 1 run execute in trials:ascend run teleport @s 100 133 98
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 2 run execute in trials:ascend run teleport @s 100 153 98
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 3 run execute in trials:ascend run teleport @s 100 173 98
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 4 run execute in trials:ascend run teleport @s 100 193 98
execute if entity @s[team=GREEN_GOATS] if score ascend.GreenGoats ascend.completed matches 5 run execute in trials:ascend run teleport @s 100 213 98

# case: cyan team
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 0 run execute in trials:ascend run teleport @s 0 103 98
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 1 run execute in trials:ascend run teleport @s 0 133 98
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 2 run execute in trials:ascend run teleport @s 0 153 98
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 3 run execute in trials:ascend run teleport @s 0 173 98
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 4 run execute in trials:ascend run teleport @s 0 193 98
execute if entity @s[team=CYAN_COUGARS] if score ascend.CyanCougars ascend.completed matches 5 run execute in trials:ascend run teleport @s 0 213 98

# case: purple team
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 0 run execute in trials:ascend run teleport @s -100 103 98
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 133 98
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 153 98
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 173 98
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 193 98
execute if entity @s[team=PURPLE_PENGUINS] if score ascend.PurplePenguins ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 213 98

# case: blue team
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 0 run execute in trials:ascend run teleport @s -100 103 -2
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 1 run execute in trials:ascend run teleport @s -100 133 -2
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 2 run execute in trials:ascend run teleport @s -100 153 -2
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 3 run execute in trials:ascend run teleport @s -100 173 -2
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 4 run execute in trials:ascend run teleport @s -100 193 -2
execute if entity @s[team=BLUE_BEARS] if score ascend.BlueBears ascend.completed matches 5 run execute in trials:ascend run teleport @s -100 213 -2