# support function that ranks teams & players based on scores
# stores these rankings either in tr.points.team.rank or tr.points.indiv.rank

# <===== PLAYER RANKINGS =====>


# first, store our data in a temporary place to work with
scoreboard objectives add tr.points.indiv.temp dummy
execute as @a run scoreboard players operation @s tr.points.indiv.temp = @s tr.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s tr.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest tr.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s tr.points.indiv.rank matches 1 run scoreboard players reset @s tr.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 2
execute as @a if score @s tr.points.indiv.rank matches 2 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 3
execute as @a if score @s tr.points.indiv.rank matches 3 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 4
execute as @a if score @s tr.points.indiv.rank matches 4 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 5
execute as @a if score @s tr.points.indiv.rank matches 5 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 6
execute as @a if score @s tr.points.indiv.rank matches 6 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 7
execute as @a if score @s tr.points.indiv.rank matches 7 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 8
execute as @a if score @s tr.points.indiv.rank matches 8 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 9
execute as @a if score @s tr.points.indiv.rank matches 9 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 10
execute as @a if score @s tr.points.indiv.rank matches 10 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 11
execute as @a if score @s tr.points.indiv.rank matches 11 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 12
execute as @a if score @s tr.points.indiv.rank matches 12 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 13
execute as @a if score @s tr.points.indiv.rank matches 13 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 14
execute as @a if score @s tr.points.indiv.rank matches 14 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 15
execute as @a if score @s tr.points.indiv.rank matches 15 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 16
execute as @a if score @s tr.points.indiv.rank matches 16 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 17
execute as @a if score @s tr.points.indiv.rank matches 17 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 18
execute as @a if score @s tr.points.indiv.rank matches 18 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 19
execute as @a if score @s tr.points.indiv.rank matches 19 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 20
execute as @a if score @s tr.points.indiv.rank matches 20 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 21
execute as @a if score @s tr.points.indiv.rank matches 21 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 22
execute as @a if score @s tr.points.indiv.rank matches 22 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 23
execute as @a if score @s tr.points.indiv.rank matches 23 run scoreboard players reset @s tr.points.indiv.temp

scoreboard players set $stmc.highest tr.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest tr.points.indiv.temp > @s tr.points.indiv.temp
execute as @a if score @s tr.points.indiv.temp = $stmc.highest tr.points.indiv.temp unless score @s tr.points.indiv.rank matches 0.. run scoreboard players set @s tr.points.indiv.rank 24
execute as @a if score @s tr.points.indiv.rank matches 24 run scoreboard players reset @s tr.points.indiv.temp

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add tr.points.temp dummy
scoreboard players operation tr.RedRaccoons tr.points.temp = tr.RedRaccoons tr.points.team
scoreboard players operation tr.OrangeOtters tr.points.temp = tr.OrangeOtters tr.points.team
scoreboard players operation tr.PinkPikas tr.points.temp = tr.PinkPikas tr.points.team
scoreboard players operation tr.GreenGoats tr.points.temp = tr.GreenGoats tr.points.team
scoreboard players operation tr.CyanCougars tr.points.temp = tr.CyanCougars tr.points.team
scoreboard players operation tr.PurplePenguins tr.points.temp = tr.PurplePenguins tr.points.team

# then reset ranks
scoreboard players set tr.RedRaccoons tr.points.team.rank -1
scoreboard players set tr.OrangeOtters tr.points.team.rank -1
scoreboard players set tr.PinkPikas tr.points.team.rank -1
scoreboard players set tr.GreenGoats tr.points.team.rank -1
scoreboard players set tr.CyanCougars tr.points.team.rank -1
scoreboard players set tr.PurplePenguins tr.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest tr.points.temp -1

# then determine the highest value of teams without a rank
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 1
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 1
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 1
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 1
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 1
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest tr.points.temp -1
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 2
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 2
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 2
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 2
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 2
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 2

scoreboard players set $stmc.highest tr.points.temp -1
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 3
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 3
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 3
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 3
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 3
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 3

scoreboard players set $stmc.highest tr.points.temp -1
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 4
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 4
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 4
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 4
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 4
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 4

scoreboard players set $stmc.highest tr.points.temp -1
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 5
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 5
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 5
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 5
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 5
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 5

scoreboard players set $stmc.highest tr.points.temp -1
execute unless score tr.RedRaccoons tr.points.team.rank matches 1.. if score tr.RedRaccoons tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp
execute unless score tr.OrangeOtters tr.points.team.rank matches 1.. if score tr.OrangeOtters tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp
execute unless score tr.PinkPikas tr.points.team.rank matches 1.. if score tr.PinkPikas tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp
execute unless score tr.GreenGoats tr.points.team.rank matches 1.. if score tr.GreenGoats tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp
execute unless score tr.CyanCougars tr.points.team.rank matches 1.. if score tr.CyanCougars tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp
execute unless score tr.PurplePenguins tr.points.team.rank matches 1.. if score tr.PurplePenguins tr.points.temp > $stmc.highest tr.points.temp run scoreboard players operation $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp
execute if score $stmc.highest tr.points.temp = tr.RedRaccoons tr.points.temp run scoreboard players set tr.RedRaccoons tr.points.team.rank 6
execute if score $stmc.highest tr.points.temp = tr.OrangeOtters tr.points.temp run scoreboard players set tr.OrangeOtters tr.points.team.rank 6
execute if score $stmc.highest tr.points.temp = tr.PinkPikas tr.points.temp run scoreboard players set tr.PinkPikas tr.points.team.rank 6
execute if score $stmc.highest tr.points.temp = tr.GreenGoats tr.points.temp run scoreboard players set tr.GreenGoats tr.points.team.rank 6
execute if score $stmc.highest tr.points.temp = tr.CyanCougars tr.points.temp run scoreboard players set tr.CyanCougars tr.points.team.rank 6
execute if score $stmc.highest tr.points.temp = tr.PurplePenguins tr.points.temp run scoreboard players set tr.PurplePenguins tr.points.team.rank 6
