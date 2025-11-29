# point update function for ascend

# ascend scoring is really simple:
# +x points per room completed
# +y bonus points if all rooms completed first
# divide by # of players on a team

# add points for each team

# by room completed

scoreboard players operation ascend.RedRaccoons ascend.points.team = ascend.RedRaccoons ascend.completed
scoreboard players operation ascend.RedRaccoons ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.OrangeOtters ascend.points.team = ascend.OrangeOtters ascend.completed
scoreboard players operation ascend.OrangeOtters ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.PinkPikas ascend.points.team = ascend.PinkPikas ascend.completed
scoreboard players operation ascend.PinkPikas ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.YellowYaks ascend.points.team = ascend.YellowYaks ascend.completed
scoreboard players operation ascend.YellowYaks ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.GreenGoats ascend.points.team = ascend.GreenGoats ascend.completed
scoreboard players operation ascend.GreenGoats ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.CyanCougars ascend.points.team = ascend.CyanCougars ascend.completed
scoreboard players operation ascend.CyanCougars ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.PurplePenguins ascend.points.team = ascend.PurplePenguins ascend.completed
scoreboard players operation ascend.PurplePenguins ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

scoreboard players operation ascend.BlueBears ascend.points.team = ascend.BlueBears ascend.completed
scoreboard players operation ascend.BlueBears ascend.points.team *= ascend.handler ascend.points.roomCompletionValue

# bonus points
execute if score ascend.RedRaccoons ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.RedRaccoons ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.OrangeOtters ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.OrangeOtters ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.PinkPikas ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.PinkPikas ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.YellowYaks ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.YellowYaks ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.GreenGoats ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.GreenGoats ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.CyanCougars ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.CyanCougars ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.PurplePenguins ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.PurplePenguins ascend.points.team += ascend.handler ascend.points.bonusCompletionValue
execute if score ascend.BlueBears ascend.points.firstCompletion matches 1 run scoreboard players operation ascend.BlueBears ascend.points.team += ascend.handler ascend.points.bonusCompletionValue

# update player individual points

execute as @a[team=RED_RACCOONS] run scoreboard players operation @s ascend.points.indiv = ascend.RedRaccoons ascend.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s ascend.points.indiv /= ascend.RedRaccoons ascend.players

execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s ascend.points.indiv = ascend.OrangeOtters ascend.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s ascend.points.indiv /= ascend.OrangeOtters ascend.players

execute as @a[team=PINK_PIKAS] run scoreboard players operation @s ascend.points.indiv = ascend.PinkPikas ascend.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s ascend.points.indiv /= ascend.PinkPikas ascend.players

execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s ascend.points.indiv = ascend.YellowYaks ascend.points.team
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s ascend.points.indiv /= ascend.YellowYaks ascend.players

execute as @a[team=GREEN_GOATS] run scoreboard players operation @s ascend.points.indiv = ascend.GreenGoats ascend.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s ascend.points.indiv /= ascend.GreenGoats ascend.players

execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s ascend.points.indiv = ascend.CyanCougars ascend.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s ascend.points.indiv /= ascend.CyanCougars ascend.players

execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s ascend.points.indiv = ascend.PurplePenguins ascend.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s ascend.points.indiv /= ascend.PurplePenguins ascend.players

execute as @a[team=BLUE_BEARS] run scoreboard players operation @s ascend.points.indiv = ascend.BlueBears ascend.points.team
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s ascend.points.indiv /= ascend.BlueBears ascend.players