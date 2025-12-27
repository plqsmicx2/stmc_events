# helper function that returns players who fell off the platform
# run in stmc:finale

execute if score team.RedRaccoons stats.points.team.rank matches 1 run tp @a[team=RED_RACCOONS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.RedRaccoons stats.points.team.rank matches 2 run tp @a[team=RED_RACCOONS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.OrangeOtters stats.points.team.rank matches 1 run tp @a[team=ORANGE_OTTERS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.OrangeOtters stats.points.team.rank matches 2 run tp @a[team=ORANGE_OTTERS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.PinkPikas stats.points.team.rank matches 1 run tp @a[team=PINK_PIKAS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.PinkPikas stats.points.team.rank matches 2 run tp @a[team=PINK_PIKAS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.YellowYaks stats.points.team.rank matches 1 run tp @a[team=YELLOW_YAKS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.YellowYaks stats.points.team.rank matches 2 run tp @a[team=YELLOW_YAKS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.GreenGoats stats.points.team.rank matches 1 run tp @a[team=GREEN_GOATS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.GreenGoats stats.points.team.rank matches 2 run tp @a[team=GREEN_GOATS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.CyanCougars stats.points.team.rank matches 1 run tp @a[team=CYAN_COUGARS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.CyanCougars stats.points.team.rank matches 2 run tp @a[team=CYAN_COUGARS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.PurplePenguins stats.points.team.rank matches 1 run tp @a[team=PURPLE_PENGUINS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.PurplePenguins stats.points.team.rank matches 2 run tp @a[team=PURPLE_PENGUINS,scores={finale.stats.deaths=1}] 0 83 -10 0 0

execute if score team.BlueBears stats.points.team.rank matches 1 run tp @a[team=BLUE_BEARS,scores={finale.stats.deaths=1}] 0 83 10 180 0
execute if score team.BlueBears stats.points.team.rank matches 2 run tp @a[team=BLUE_BEARS,scores={finale.stats.deaths=1}] 0 83 -10 0 0
