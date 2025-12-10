# helper function that teleports the top 2 teams to their respective platforms
execute in finale:finale run tp @a -11 152 0 -90 35

execute if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run tp @a[team=RED_RACCOONS] 0 147 10 180 0
execute if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run tp @a[team=RED_RACCOONS] 0 147 -10 0 0

execute if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 147 10 180 0
execute if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 147 -10 0 0

execute if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run tp @a[team=PINK_PIKAS] 0 147 10 180 0
execute if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run tp @a[team=PINK_PIKAS] 0 147 -10 0 0

execute if score team.YellowYaks stats.points.team.rank matches 1 in finale:finale run tp @a[team=YELLOW_YAKS] 0 147 10 180 0
execute if score team.YellowYaks stats.points.team.rank matches 2 in finale:finale run tp @a[team=YELLOW_YAKS] 0 147 -10 0 0

execute if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run tp @a[team=GREEN_GOATS] 0 147 10 180 0
execute if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run tp @a[team=GREEN_GOATS] 0 147 -10 0 0

execute if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run tp @a[team=CYAN_COUGARS] 0 147 10 180 0
execute if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run tp @a[team=CYAN_COUGARS] 0 147 -10 0 0

execute if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 147 10 180 0
execute if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 147 -10 0 0

execute if score team.BlueBears stats.points.team.rank matches 1 in finale:finale run tp @a[team=BLUE_BEARS] 0 147 10 180 0
execute if score team.BlueBears stats.points.team.rank matches 2 in finale:finale run tp @a[team=BLUE_BEARS] 0 147 -10 0 0

# also sets glass barrier in place
execute if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:red_stained_glass
execute if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:red_stained_glass

execute if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:orange_stained_glass
execute if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:orange_stained_glass

execute if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:pink_stained_glass
execute if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:pink_stained_glass

execute if score team.YellowYaks stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:yellow_stained_glass
execute if score team.YellowYaks stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:yellow_stained_glass

execute if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:green_stained_glass
execute if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:green_stained_glass

execute if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:cyan_stained_glass
execute if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:cyan_stained_glass

execute if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:purple_stained_glass
execute if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:purple_stained_glass

execute if score team.BlueBears stats.points.team.rank matches 1 in finale:finale run fill -3 146 8 3 149 8 minecraft:blue_stained_glass
execute if score team.BlueBears stats.points.team.rank matches 2 in finale:finale run fill -3 146 -8 3 149 -8 minecraft:blue_stained_glass

# and just ensures a few resets
gamemode adventure @a
clear @a
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

execute if score team.RedRaccoons stats.points.team.rank matches 1..2 run scoreboard players set @a[team=RED_RACCOONS] finale.stats.alive 1
execute if score team.OrangeOtters stats.points.team.rank matches 1..2 run scoreboard players set @a[team=ORANGE_OTTERS] finale.stats.alive 1
execute if score team.PinkPikas stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PINK_PIKAS] finale.stats.alive 1
execute if score team.YellowYaks stats.points.team.rank matches 1..2 run scoreboard players set @a[team=YELLOW_YAKS] finale.stats.alive 1
execute if score team.GreenGoats stats.points.team.rank matches 1..2 run scoreboard players set @a[team=GREEN_GOATS] finale.stats.alive 1
execute if score team.CyanCougars stats.points.team.rank matches 1..2 run scoreboard players set @a[team=CYAN_COUGARS] finale.stats.alive 1
execute if score team.PurplePenguins stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PURPLE_PENGUINS] finale.stats.alive 1
execute if score team.BlueBears stats.points.team.rank matches 1..2 run scoreboard players set @a[team=BLUE_BEARS] finale.stats.alive 1