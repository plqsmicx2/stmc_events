# support function that ranks teams & players based on scores
# stores these rankings either in collect.points.team.rank or collect.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add collect.points.team.temp dummy
scoreboard players operation collect.RedRaccoons collect.points.team.temp = collect.RedRaccoons collect.points.team
scoreboard players operation collect.OrangeOtters collect.points.team.temp = collect.OrangeOtters collect.points.team
scoreboard players operation collect.PinkPikas collect.points.team.temp = collect.PinkPikas collect.points.team
scoreboard players operation collect.YellowYaks collect.points.team.temp = collect.YellowYaks collect.points.team
scoreboard players operation collect.GreenGoats collect.points.team.temp = collect.GreenGoats collect.points.team
scoreboard players operation collect.CyanCougars collect.points.team.temp = collect.CyanCougars collect.points.team
scoreboard players operation collect.PurplePenguins collect.points.team.temp = collect.PurplePenguins collect.points.team
scoreboard players operation collect.BlueBears collect.points.team.temp = collect.BlueBears collect.points.team

# then reset ranks
scoreboard players set collect.RedRaccoons collect.points.team.rank -1
scoreboard players set collect.OrangeOtters collect.points.team.rank -1
scoreboard players set collect.PinkPikas collect.points.team.rank -1
scoreboard players set collect.YellowYaks collect.points.team.rank -1
scoreboard players set collect.GreenGoats collect.points.team.rank -1
scoreboard players set collect.CyanCougars collect.points.team.rank -1
scoreboard players set collect.PurplePenguins collect.points.team.rank -1
scoreboard players set collect.BlueBears collect.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest collect.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 1
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 2
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 2

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 3
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 3

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 4
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 4

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 5
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 5

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 6
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 6

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 7
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 7

scoreboard players set $stmc.highest collect.points.team.temp -1
execute unless score collect.RedRaccoons collect.points.team.rank matches 1.. if score collect.RedRaccoons collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp
execute unless score collect.OrangeOtters collect.points.team.rank matches 1.. if score collect.OrangeOtters collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp
execute unless score collect.PinkPikas collect.points.team.rank matches 1.. if score collect.PinkPikas collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp
execute unless score collect.YellowYaks collect.points.team.rank matches 1.. if score collect.YellowYaks collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp
execute unless score collect.GreenGoats collect.points.team.rank matches 1.. if score collect.GreenGoats collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp
execute unless score collect.CyanCougars collect.points.team.rank matches 1.. if score collect.CyanCougars collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp
execute unless score collect.PurplePenguins collect.points.team.rank matches 1.. if score collect.PurplePenguins collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp
execute unless score collect.BlueBears collect.points.team.rank matches 1.. if score collect.BlueBears collect.points.team.temp > $stmc.highest collect.points.team.temp run scoreboard players operation $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp
execute if score $stmc.highest collect.points.team.temp = collect.RedRaccoons collect.points.team.temp run scoreboard players set collect.RedRaccoons collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.OrangeOtters collect.points.team.temp run scoreboard players set collect.OrangeOtters collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.PinkPikas collect.points.team.temp run scoreboard players set collect.PinkPikas collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.YellowYaks collect.points.team.temp run scoreboard players set collect.YellowYaks collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.GreenGoats collect.points.team.temp run scoreboard players set collect.GreenGoats collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.CyanCougars collect.points.team.temp run scoreboard players set collect.CyanCougars collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.PurplePenguins collect.points.team.temp run scoreboard players set collect.PurplePenguins collect.points.team.rank 8
execute if score $stmc.highest collect.points.team.temp = collect.BlueBears collect.points.team.temp run scoreboard players set collect.BlueBears collect.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add collect.points.indiv.temp dummy
execute as @a run scoreboard players operation @s collect.points.indiv.temp = @s collect.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s collect.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $collect.highest collect.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s collect.points.indiv.rank matches 1 run scoreboard players reset @s collect.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 2
execute as @a if score @s collect.points.indiv.rank matches 2 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 3
execute as @a if score @s collect.points.indiv.rank matches 3 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 4
execute as @a if score @s collect.points.indiv.rank matches 4 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 5
execute as @a if score @s collect.points.indiv.rank matches 5 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 6
execute as @a if score @s collect.points.indiv.rank matches 6 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 7
execute as @a if score @s collect.points.indiv.rank matches 7 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 8
execute as @a if score @s collect.points.indiv.rank matches 8 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 9
execute as @a if score @s collect.points.indiv.rank matches 9 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 10
execute as @a if score @s collect.points.indiv.rank matches 10 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 11
execute as @a if score @s collect.points.indiv.rank matches 11 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 12
execute as @a if score @s collect.points.indiv.rank matches 12 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 13
execute as @a if score @s collect.points.indiv.rank matches 13 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 14
execute as @a if score @s collect.points.indiv.rank matches 14 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 15
execute as @a if score @s collect.points.indiv.rank matches 15 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 16
execute as @a if score @s collect.points.indiv.rank matches 16 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 17
execute as @a if score @s collect.points.indiv.rank matches 17 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 18
execute as @a if score @s collect.points.indiv.rank matches 18 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 19
execute as @a if score @s collect.points.indiv.rank matches 19 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 20
execute as @a if score @s collect.points.indiv.rank matches 20 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 21
execute as @a if score @s collect.points.indiv.rank matches 21 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 22
execute as @a if score @s collect.points.indiv.rank matches 22 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 23
execute as @a if score @s collect.points.indiv.rank matches 23 run scoreboard players reset @s collect.points.indiv.temp

scoreboard players set $collect.highest collect.points.indiv.temp -1
execute as @a run scoreboard players operation $collect.highest collect.points.indiv.temp > @s collect.points.indiv.temp
execute as @a if score @s collect.points.indiv.temp = $collect.highest collect.points.indiv.temp unless score @s collect.points.indiv.rank matches 0.. run scoreboard players set @s collect.points.indiv.rank 24
execute as @a if score @s collect.points.indiv.rank matches 24 run scoreboard players reset @s collect.points.indiv.temp
