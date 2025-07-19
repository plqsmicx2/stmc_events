# first, store our data in a temporary place to work with
scoreboard objectives add delve.points.team.temp dummy
scoreboard players operation delve.RedRaccoons delve.points.team.temp = delve.RedRaccoons delve.points.team
scoreboard players operation delve.OrangeOtters delve.points.team.temp = delve.OrangeOtters delve.points.team
scoreboard players operation delve.PinkPikas delve.points.team.temp = delve.PinkPikas delve.points.team
scoreboard players operation delve.GreenGoats delve.points.team.temp = delve.GreenGoats delve.points.team
scoreboard players operation delve.CyanCougars delve.points.team.temp = delve.CyanCougars delve.points.team
scoreboard players operation delve.PurplePenguins delve.points.team.temp = delve.PurplePenguins delve.points.team

# set our highest value to -1
scoreboard players set $delve.highest delve.points.team.temp -1

# then determine the highest value
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp

# then determine which team has that highest value & give them the highest rank applicable
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 1
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 1
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 1
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 1
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 1
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 1

# and then reset the score of whoever had the highest value
execute if score delve.RedRaccoons delve.points.team.rank matches 1 run scoreboard players reset delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.rank matches 1 run scoreboard players reset delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.rank matches 1 run scoreboard players reset delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.rank matches 1 run scoreboard players reset delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.rank matches 1 run scoreboard players reset delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.rank matches 1 run scoreboard players reset delve.PurplePenguins delve.points.team.temp

# and then repeat the process until all teams have been ranked
scoreboard players set $delve.highest delve.points.team.temp -1
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 2
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 2
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 2
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 2
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 2
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 2
execute if score delve.RedRaccoons delve.points.team.rank matches 2 run scoreboard players reset delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.rank matches 2 run scoreboard players reset delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.rank matches 2 run scoreboard players reset delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.rank matches 2 run scoreboard players reset delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.rank matches 2 run scoreboard players reset delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.rank matches 2 run scoreboard players reset delve.PurplePenguins delve.points.team.temp

scoreboard players set $delve.highest delve.points.team.temp -1
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 3
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 3
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 3
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 3
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 3
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 3
execute if score delve.RedRaccoons delve.points.team.rank matches 3 run scoreboard players reset delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.rank matches 3 run scoreboard players reset delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.rank matches 3 run scoreboard players reset delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.rank matches 3 run scoreboard players reset delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.rank matches 3 run scoreboard players reset delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.rank matches 3 run scoreboard players reset delve.PurplePenguins delve.points.team.temp

scoreboard players set $delve.highest delve.points.team.temp -1
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 4
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 4
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 4
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 4
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 4
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 4
execute if score delve.RedRaccoons delve.points.team.rank matches 4 run scoreboard players reset delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.rank matches 4 run scoreboard players reset delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.rank matches 4 run scoreboard players reset delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.rank matches 4 run scoreboard players reset delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.rank matches 4 run scoreboard players reset delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.rank matches 4 run scoreboard players reset delve.PurplePenguins delve.points.team.temp

scoreboard players set $delve.highest delve.points.team.temp -1
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 5
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 5
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 5
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 5
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 5
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 5
execute if score delve.RedRaccoons delve.points.team.rank matches 5 run scoreboard players reset delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.rank matches 5 run scoreboard players reset delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.rank matches 5 run scoreboard players reset delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.rank matches 5 run scoreboard players reset delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.rank matches 5 run scoreboard players reset delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.rank matches 5 run scoreboard players reset delve.PurplePenguins delve.points.team.temp

scoreboard players set $delve.highest delve.points.team.temp -1
execute if score delve.RedRaccoons delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute if score delve.OrangeOtters delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute if score delve.PinkPikas delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute if score delve.GreenGoats delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute if score delve.CyanCougars delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute if score delve.PurplePenguins delve.points.team.temp > $delve.highest delve.points.team.temp run scoreboard players operation $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $delve.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 6
execute if score $delve.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 6
execute if score $delve.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 6
execute if score $delve.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 6
execute if score $delve.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 6
execute if score $delve.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 6
scoreboard players reset delve.RedRaccoons delve.points.team.temp
scoreboard players reset delve.OrangeOtters delve.points.team.temp
scoreboard players reset delve.PinkPikas delve.points.team.temp
scoreboard players reset delve.GreenGoats delve.points.team.temp
scoreboard players reset delve.CyanCougars delve.points.team.temp
scoreboard players reset delve.PurplePenguins delve.points.team.temp