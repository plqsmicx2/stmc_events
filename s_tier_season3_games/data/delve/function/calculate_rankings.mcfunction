# support function that ranks teams & players based on scores
# stores these rankings either in delve.points.team.rank or delve.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add delve.points.team.temp dummy
scoreboard players operation delve.RedRaccoons delve.points.team.temp = delve.RedRaccoons delve.points.team
scoreboard players operation delve.OrangeOtters delve.points.team.temp = delve.OrangeOtters delve.points.team
scoreboard players operation delve.PinkPikas delve.points.team.temp = delve.PinkPikas delve.points.team
scoreboard players operation delve.GreenGoats delve.points.team.temp = delve.GreenGoats delve.points.team
scoreboard players operation delve.CyanCougars delve.points.team.temp = delve.CyanCougars delve.points.team
scoreboard players operation delve.PurplePenguins delve.points.team.temp = delve.PurplePenguins delve.points.team

# then reset ranks
scoreboard players set delve.RedRaccoons delve.points.team.rank -1
scoreboard players set delve.OrangeOtters delve.points.team.rank -1
scoreboard players set delve.PinkPikas delve.points.team.rank -1
scoreboard players set delve.GreenGoats delve.points.team.rank -1
scoreboard players set delve.CyanCougars delve.points.team.rank -1
scoreboard players set delve.PurplePenguins delve.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest delve.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 1
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 1
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 1
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 1
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 1
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest delve.points.team.temp -1
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 2
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 2
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 2
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 2
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 2
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 2

scoreboard players set $stmc.highest delve.points.team.temp -1
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 3
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 3
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 3
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 3
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 3
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 3

scoreboard players set $stmc.highest delve.points.team.temp -1
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 4
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 4
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 4
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 4
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 4
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 4

scoreboard players set $stmc.highest delve.points.team.temp -1
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 5
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 5
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 5
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 5
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 5
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 5

scoreboard players set $stmc.highest delve.points.team.temp -1
execute unless score delve.RedRaccoons delve.points.team.rank matches 1.. if score delve.RedRaccoons delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp
execute unless score delve.OrangeOtters delve.points.team.rank matches 1.. if score delve.OrangeOtters delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp
execute unless score delve.PinkPikas delve.points.team.rank matches 1.. if score delve.PinkPikas delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp
execute unless score delve.GreenGoats delve.points.team.rank matches 1.. if score delve.GreenGoats delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp
execute unless score delve.CyanCougars delve.points.team.rank matches 1.. if score delve.CyanCougars delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp
execute unless score delve.PurplePenguins delve.points.team.rank matches 1.. if score delve.PurplePenguins delve.points.team.temp > $stmc.highest delve.points.team.temp run scoreboard players operation $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp
execute if score $stmc.highest delve.points.team.temp = delve.RedRaccoons delve.points.team.temp run scoreboard players set delve.RedRaccoons delve.points.team.rank 6
execute if score $stmc.highest delve.points.team.temp = delve.OrangeOtters delve.points.team.temp run scoreboard players set delve.OrangeOtters delve.points.team.rank 6
execute if score $stmc.highest delve.points.team.temp = delve.PinkPikas delve.points.team.temp run scoreboard players set delve.PinkPikas delve.points.team.rank 6
execute if score $stmc.highest delve.points.team.temp = delve.GreenGoats delve.points.team.temp run scoreboard players set delve.GreenGoats delve.points.team.rank 6
execute if score $stmc.highest delve.points.team.temp = delve.CyanCougars delve.points.team.temp run scoreboard players set delve.CyanCougars delve.points.team.rank 6
execute if score $stmc.highest delve.points.team.temp = delve.PurplePenguins delve.points.team.temp run scoreboard players set delve.PurplePenguins delve.points.team.rank 6