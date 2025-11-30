# support function that ranks teams & players based on scores
# stores these rankings either in blitz.points.team.rank or blitz.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add blitz.points.team.temp dummy
scoreboard players operation blitz.RedRaccoons blitz.points.team.temp = blitz.RedRaccoons blitz.points.team
scoreboard players operation blitz.OrangeOtters blitz.points.team.temp = blitz.OrangeOtters blitz.points.team
scoreboard players operation blitz.PinkPikas blitz.points.team.temp = blitz.PinkPikas blitz.points.team
scoreboard players operation blitz.YellowYaks blitz.points.team.temp = blitz.YellowYaks blitz.points.team
scoreboard players operation blitz.GreenGoats blitz.points.team.temp = blitz.GreenGoats blitz.points.team
scoreboard players operation blitz.CyanCougars blitz.points.team.temp = blitz.CyanCougars blitz.points.team
scoreboard players operation blitz.PurplePenguins blitz.points.team.temp = blitz.PurplePenguins blitz.points.team
scoreboard players operation blitz.BlueBears blitz.points.team.temp = blitz.BlueBears blitz.points.team

# then reset ranks
scoreboard players set blitz.RedRaccoons blitz.points.team.rank -1
scoreboard players set blitz.OrangeOtters blitz.points.team.rank -1
scoreboard players set blitz.PinkPikas blitz.points.team.rank -1
scoreboard players set blitz.YellowYaks blitz.points.team.rank -1
scoreboard players set blitz.GreenGoats blitz.points.team.rank -1
scoreboard players set blitz.CyanCougars blitz.points.team.rank -1
scoreboard players set blitz.PurplePenguins blitz.points.team.rank -1
scoreboard players set blitz.BlueBears blitz.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest blitz.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 1
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 2
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 2

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 3
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 3

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 4
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 4

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 5
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 5

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 6
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 6

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 7
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 7

scoreboard players set $stmc.highest blitz.points.team.temp -1
execute unless score blitz.RedRaccoons blitz.points.team.rank matches 1.. if score blitz.RedRaccoons blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp
execute unless score blitz.OrangeOtters blitz.points.team.rank matches 1.. if score blitz.OrangeOtters blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp
execute unless score blitz.PinkPikas blitz.points.team.rank matches 1.. if score blitz.PinkPikas blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp
execute unless score blitz.YellowYaks blitz.points.team.rank matches 1.. if score blitz.YellowYaks blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp
execute unless score blitz.GreenGoats blitz.points.team.rank matches 1.. if score blitz.GreenGoats blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp
execute unless score blitz.CyanCougars blitz.points.team.rank matches 1.. if score blitz.CyanCougars blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp
execute unless score blitz.PurplePenguins blitz.points.team.rank matches 1.. if score blitz.PurplePenguins blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp
execute unless score blitz.BlueBears blitz.points.team.rank matches 1.. if score blitz.BlueBears blitz.points.team.temp > $stmc.highest blitz.points.team.temp run scoreboard players operation $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp
execute if score $stmc.highest blitz.points.team.temp = blitz.RedRaccoons blitz.points.team.temp run scoreboard players set blitz.RedRaccoons blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.OrangeOtters blitz.points.team.temp run scoreboard players set blitz.OrangeOtters blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.PinkPikas blitz.points.team.temp run scoreboard players set blitz.PinkPikas blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.YellowYaks blitz.points.team.temp run scoreboard players set blitz.YellowYaks blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.GreenGoats blitz.points.team.temp run scoreboard players set blitz.GreenGoats blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.CyanCougars blitz.points.team.temp run scoreboard players set blitz.CyanCougars blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.PurplePenguins blitz.points.team.temp run scoreboard players set blitz.PurplePenguins blitz.points.team.rank 8
execute if score $stmc.highest blitz.points.team.temp = blitz.BlueBears blitz.points.team.temp run scoreboard players set blitz.BlueBears blitz.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add blitz.points.indiv.temp dummy
execute as @a run scoreboard players operation @s blitz.points.indiv.temp = @s blitz.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s blitz.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $blitz.highest blitz.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s blitz.points.indiv.rank matches 1 run scoreboard players reset @s blitz.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 2
execute as @a if score @s blitz.points.indiv.rank matches 2 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 3
execute as @a if score @s blitz.points.indiv.rank matches 3 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 4
execute as @a if score @s blitz.points.indiv.rank matches 4 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 5
execute as @a if score @s blitz.points.indiv.rank matches 5 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 6
execute as @a if score @s blitz.points.indiv.rank matches 6 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 7
execute as @a if score @s blitz.points.indiv.rank matches 7 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 8
execute as @a if score @s blitz.points.indiv.rank matches 8 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 9
execute as @a if score @s blitz.points.indiv.rank matches 9 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 10
execute as @a if score @s blitz.points.indiv.rank matches 10 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 11
execute as @a if score @s blitz.points.indiv.rank matches 11 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 12
execute as @a if score @s blitz.points.indiv.rank matches 12 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 13
execute as @a if score @s blitz.points.indiv.rank matches 13 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 14
execute as @a if score @s blitz.points.indiv.rank matches 14 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 15
execute as @a if score @s blitz.points.indiv.rank matches 15 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 16
execute as @a if score @s blitz.points.indiv.rank matches 16 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 17
execute as @a if score @s blitz.points.indiv.rank matches 17 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 18
execute as @a if score @s blitz.points.indiv.rank matches 18 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 19
execute as @a if score @s blitz.points.indiv.rank matches 19 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 20
execute as @a if score @s blitz.points.indiv.rank matches 20 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 21
execute as @a if score @s blitz.points.indiv.rank matches 21 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 22
execute as @a if score @s blitz.points.indiv.rank matches 22 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 23
execute as @a if score @s blitz.points.indiv.rank matches 23 run scoreboard players reset @s blitz.points.indiv.temp

scoreboard players set $blitz.highest blitz.points.indiv.temp -1
execute as @a run scoreboard players operation $blitz.highest blitz.points.indiv.temp > @s blitz.points.indiv.temp
execute as @a if score @s blitz.points.indiv.temp = $blitz.highest blitz.points.indiv.temp unless score @s blitz.points.indiv.rank matches 0.. run scoreboard players set @s blitz.points.indiv.rank 24
execute as @a if score @s blitz.points.indiv.rank matches 24 run scoreboard players reset @s blitz.points.indiv.temp

# <===== KILL RANKING =====>

# reset ranks
scoreboard objectives add blitz.kills.rank dummy
execute as @a run scoreboard players set @s blitz.kills.rank -1

# first, store our data in a temporary place to work with
scoreboard objectives add blitz.kills.temp dummy
execute as @a at @s run scoreboard players operation @s blitz.kills.temp = @s blitz.kills

# set dummy player to -1
scoreboard players set $blitz.highest blitz.kills.temp -1

# determine highest value
execute as @a unless score @s blitz.kills.rank matches 1.. run scoreboard players operation $blitz.highest blitz.kills.temp > @s blitz.kills.temp

# determine who has that highest value & assign them appropriate rank
execute as @a if score @s blitz.kills.temp = $blitz.highest blitz.kills.temp run scoreboard players set @s blitz.kills.rank 1

# then remove that player's value from consideration
execute as @a if score @s blitz.kills.rank matches 1 run scoreboard players reset @s blitz.kills.temp

# and repeat four more times
scoreboard players set $blitz.highest blitz.kills.temp -1
execute as @a unless score @s blitz.kills.rank matches 1.. run scoreboard players operation $blitz.highest blitz.kills.temp > @s blitz.kills.temp
execute as @a if score @s blitz.kills.temp = $blitz.highest blitz.kills.temp run scoreboard players set @s blitz.kills.rank 2
execute as @a if score @s blitz.kills.rank matches 2 run scoreboard players reset @s blitz.kills.temp

scoreboard players set $blitz.highest blitz.kills.temp -1
execute as @a unless score @s blitz.kills.rank matches 1.. run scoreboard players operation $blitz.highest blitz.kills.temp > @s blitz.kills.temp
execute as @a if score @s blitz.kills.temp = $blitz.highest blitz.kills.temp run scoreboard players set @s blitz.kills.rank 3
execute as @a if score @s blitz.kills.rank matches 3 run scoreboard players reset @s blitz.kills.temp

scoreboard players set $blitz.highest blitz.kills.temp -1
execute as @a unless score @s blitz.kills.rank matches 1.. run scoreboard players operation $blitz.highest blitz.kills.temp > @s blitz.kills.temp
execute as @a if score @s blitz.kills.temp = $blitz.highest blitz.kills.temp run scoreboard players set @s blitz.kills.rank 4
execute as @a if score @s blitz.kills.rank matches 4 run scoreboard players reset @s blitz.kills.temp

scoreboard players set $blitz.highest blitz.kills.temp -1
execute as @a unless score @s blitz.kills.rank matches 1.. run scoreboard players operation $blitz.highest blitz.kills.temp > @s blitz.kills.temp
execute as @a if score @s blitz.kills.temp = $blitz.highest blitz.kills.temp run scoreboard players set @s blitz.kills.rank 5
execute as @a if score @s blitz.kills.rank matches 5 run scoreboard players reset @s blitz.kills.temp