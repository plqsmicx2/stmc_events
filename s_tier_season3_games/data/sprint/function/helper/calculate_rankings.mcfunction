# support function that ranks teams & players based on scores
# stores these rankings either in sprint.points.team.rank or sprint.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add sprint.points.team.temp dummy
scoreboard players operation sprint.RedRaccoons sprint.points.team.temp = sprint.RedRaccoons sprint.points.team
scoreboard players operation sprint.OrangeOtters sprint.points.team.temp = sprint.OrangeOtters sprint.points.team
scoreboard players operation sprint.PinkPikas sprint.points.team.temp = sprint.PinkPikas sprint.points.team
scoreboard players operation sprint.YellowYaks sprint.points.team.temp = sprint.YellowYaks sprint.points.team
scoreboard players operation sprint.GreenGoats sprint.points.team.temp = sprint.GreenGoats sprint.points.team
scoreboard players operation sprint.CyanCougars sprint.points.team.temp = sprint.CyanCougars sprint.points.team
scoreboard players operation sprint.PurplePenguins sprint.points.team.temp = sprint.PurplePenguins sprint.points.team
scoreboard players operation sprint.BlueBears sprint.points.team.temp = sprint.BlueBears sprint.points.team

# then reset ranks
scoreboard players set sprint.RedRaccoons sprint.points.team.rank -1
scoreboard players set sprint.OrangeOtters sprint.points.team.rank -1
scoreboard players set sprint.PinkPikas sprint.points.team.rank -1
scoreboard players set sprint.YellowYaks sprint.points.team.rank -1
scoreboard players set sprint.GreenGoats sprint.points.team.rank -1
scoreboard players set sprint.CyanCougars sprint.points.team.rank -1
scoreboard players set sprint.PurplePenguins sprint.points.team.rank -1
scoreboard players set sprint.BlueBears sprint.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest sprint.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 1
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 2
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 2

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 3
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 3

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 4
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 4

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 5
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 5

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 6
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 6

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 7
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 7

scoreboard players set $stmc.highest sprint.points.team.temp -1
execute unless score sprint.RedRaccoons sprint.points.team.rank matches 1.. if score sprint.RedRaccoons sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp
execute unless score sprint.OrangeOtters sprint.points.team.rank matches 1.. if score sprint.OrangeOtters sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp
execute unless score sprint.PinkPikas sprint.points.team.rank matches 1.. if score sprint.PinkPikas sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp
execute unless score sprint.YellowYaks sprint.points.team.rank matches 1.. if score sprint.YellowYaks sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp
execute unless score sprint.GreenGoats sprint.points.team.rank matches 1.. if score sprint.GreenGoats sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp
execute unless score sprint.CyanCougars sprint.points.team.rank matches 1.. if score sprint.CyanCougars sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp
execute unless score sprint.PurplePenguins sprint.points.team.rank matches 1.. if score sprint.PurplePenguins sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp
execute unless score sprint.BlueBears sprint.points.team.rank matches 1.. if score sprint.BlueBears sprint.points.team.temp > $stmc.highest sprint.points.team.temp run scoreboard players operation $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp
execute if score $stmc.highest sprint.points.team.temp = sprint.RedRaccoons sprint.points.team.temp run scoreboard players set sprint.RedRaccoons sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.OrangeOtters sprint.points.team.temp run scoreboard players set sprint.OrangeOtters sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.PinkPikas sprint.points.team.temp run scoreboard players set sprint.PinkPikas sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.YellowYaks sprint.points.team.temp run scoreboard players set sprint.YellowYaks sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.GreenGoats sprint.points.team.temp run scoreboard players set sprint.GreenGoats sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.CyanCougars sprint.points.team.temp run scoreboard players set sprint.CyanCougars sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.PurplePenguins sprint.points.team.temp run scoreboard players set sprint.PurplePenguins sprint.points.team.rank 8
execute if score $stmc.highest sprint.points.team.temp = sprint.BlueBears sprint.points.team.temp run scoreboard players set sprint.BlueBears sprint.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add sprint.points.indiv.temp dummy
execute as @a run scoreboard players operation @s sprint.points.indiv.temp = @s sprint.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s sprint.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $sprint.highest sprint.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s sprint.points.indiv.rank matches 1 run scoreboard players reset @s sprint.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 2
execute as @a if score @s sprint.points.indiv.rank matches 2 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 3
execute as @a if score @s sprint.points.indiv.rank matches 3 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 4
execute as @a if score @s sprint.points.indiv.rank matches 4 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 5
execute as @a if score @s sprint.points.indiv.rank matches 5 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 6
execute as @a if score @s sprint.points.indiv.rank matches 6 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 7
execute as @a if score @s sprint.points.indiv.rank matches 7 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 8
execute as @a if score @s sprint.points.indiv.rank matches 8 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 9
execute as @a if score @s sprint.points.indiv.rank matches 9 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 10
execute as @a if score @s sprint.points.indiv.rank matches 10 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 11
execute as @a if score @s sprint.points.indiv.rank matches 11 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 12
execute as @a if score @s sprint.points.indiv.rank matches 12 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 13
execute as @a if score @s sprint.points.indiv.rank matches 13 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 14
execute as @a if score @s sprint.points.indiv.rank matches 14 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 15
execute as @a if score @s sprint.points.indiv.rank matches 15 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 16
execute as @a if score @s sprint.points.indiv.rank matches 16 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 17
execute as @a if score @s sprint.points.indiv.rank matches 17 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 18
execute as @a if score @s sprint.points.indiv.rank matches 18 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 19
execute as @a if score @s sprint.points.indiv.rank matches 19 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 20
execute as @a if score @s sprint.points.indiv.rank matches 20 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 21
execute as @a if score @s sprint.points.indiv.rank matches 21 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 22
execute as @a if score @s sprint.points.indiv.rank matches 22 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 23
execute as @a if score @s sprint.points.indiv.rank matches 23 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 24
execute as @a if score @s sprint.points.indiv.rank matches 24 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 25
execute as @a if score @s sprint.points.indiv.rank matches 25 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 26
execute as @a if score @s sprint.points.indiv.rank matches 26 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 27
execute as @a if score @s sprint.points.indiv.rank matches 27 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 28
execute as @a if score @s sprint.points.indiv.rank matches 28 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 29
execute as @a if score @s sprint.points.indiv.rank matches 29 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 30
execute as @a if score @s sprint.points.indiv.rank matches 30 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 31
execute as @a if score @s sprint.points.indiv.rank matches 31 run scoreboard players reset @s sprint.points.indiv.temp

scoreboard players set $sprint.highest sprint.points.indiv.temp -1
execute as @a run scoreboard players operation $sprint.highest sprint.points.indiv.temp > @s sprint.points.indiv.temp
execute as @a if score @s sprint.points.indiv.temp = $sprint.highest sprint.points.indiv.temp unless score @s sprint.points.indiv.rank matches 0.. run scoreboard players set @s sprint.points.indiv.rank 32
execute as @a if score @s sprint.points.indiv.rank matches 32 run scoreboard players reset @s sprint.points.indiv.temp
