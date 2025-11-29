# support function that ranks teams & players based on scores
# stores these rankings either in ascend.points.team.rank or ascend.points.indiv.rank

# <===== PLAYER RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add ascend.points.indiv.temp dummy
execute as @a run scoreboard players operation @s ascend.points.indiv.temp = @s ascend.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s ascend.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest ascend.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s ascend.points.indiv.rank matches 1 run scoreboard players reset @s ascend.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 2
execute as @a if score @s ascend.points.indiv.rank matches 2 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 3
execute as @a if score @s ascend.points.indiv.rank matches 3 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 4
execute as @a if score @s ascend.points.indiv.rank matches 4 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 5
execute as @a if score @s ascend.points.indiv.rank matches 5 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 6
execute as @a if score @s ascend.points.indiv.rank matches 6 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 7
execute as @a if score @s ascend.points.indiv.rank matches 7 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 8
execute as @a if score @s ascend.points.indiv.rank matches 8 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 9
execute as @a if score @s ascend.points.indiv.rank matches 9 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 10
execute as @a if score @s ascend.points.indiv.rank matches 10 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 11
execute as @a if score @s ascend.points.indiv.rank matches 11 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 12
execute as @a if score @s ascend.points.indiv.rank matches 12 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 13
execute as @a if score @s ascend.points.indiv.rank matches 13 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 14
execute as @a if score @s ascend.points.indiv.rank matches 14 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 15
execute as @a if score @s ascend.points.indiv.rank matches 15 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 16
execute as @a if score @s ascend.points.indiv.rank matches 16 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 17
execute as @a if score @s ascend.points.indiv.rank matches 17 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 18
execute as @a if score @s ascend.points.indiv.rank matches 18 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 19
execute as @a if score @s ascend.points.indiv.rank matches 19 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 20
execute as @a if score @s ascend.points.indiv.rank matches 20 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 21
execute as @a if score @s ascend.points.indiv.rank matches 21 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 22
execute as @a if score @s ascend.points.indiv.rank matches 22 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 23
execute as @a if score @s ascend.points.indiv.rank matches 23 run scoreboard players reset @s ascend.points.indiv.temp

scoreboard players set $stmc.highest ascend.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest ascend.points.indiv.temp > @s ascend.points.indiv.temp
execute as @a if score @s ascend.points.indiv.temp = $stmc.highest ascend.points.indiv.temp unless score @s ascend.points.indiv.rank matches 0.. run scoreboard players set @s ascend.points.indiv.rank 24
execute as @a if score @s ascend.points.indiv.rank matches 24 run scoreboard players reset @s ascend.points.indiv.temp

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add ascend.points.team.temp dummy
scoreboard players operation ascend.RedRaccoons ascend.points.team.temp = ascend.RedRaccoons ascend.points.team
scoreboard players operation ascend.OrangeOtters ascend.points.team.temp = ascend.OrangeOtters ascend.points.team
scoreboard players operation ascend.PinkPikas ascend.points.team.temp = ascend.PinkPikas ascend.points.team
scoreboard players operation ascend.YellowYaks ascend.points.team.temp = ascend.YellowYaks ascend.points.team
scoreboard players operation ascend.GreenGoats ascend.points.team.temp = ascend.GreenGoats ascend.points.team
scoreboard players operation ascend.CyanCougars ascend.points.team.temp = ascend.CyanCougars ascend.points.team
scoreboard players operation ascend.PurplePenguins ascend.points.team.temp = ascend.PurplePenguins ascend.points.team
scoreboard players operation ascend.BlueBears ascend.points.team.temp = ascend.BlueBears ascend.points.team

# then reset ranks
scoreboard players set ascend.RedRaccoons ascend.points.team.rank -1
scoreboard players set ascend.OrangeOtters ascend.points.team.rank -1
scoreboard players set ascend.PinkPikas ascend.points.team.rank -1
scoreboard players set ascend.YellowYaks ascend.points.team.rank -1
scoreboard players set ascend.GreenGoats ascend.points.team.rank -1
scoreboard players set ascend.CyanCougars ascend.points.team.rank -1
scoreboard players set ascend.PurplePenguins ascend.points.team.rank -1
scoreboard players set ascend.BlueBears ascend.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest ascend.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 1
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 2
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 2

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 3
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 3

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 4
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 4

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 5
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 5

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 6
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 6

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 7
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 7

scoreboard players set $stmc.highest ascend.points.team.temp -1
execute unless score ascend.RedRaccoons ascend.points.team.rank matches 1.. if score ascend.RedRaccoons ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp
execute unless score ascend.OrangeOtters ascend.points.team.rank matches 1.. if score ascend.OrangeOtters ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp
execute unless score ascend.PinkPikas ascend.points.team.rank matches 1.. if score ascend.PinkPikas ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp
execute unless score ascend.YellowYaks ascend.points.team.rank matches 1.. if score ascend.YellowYaks ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp
execute unless score ascend.GreenGoats ascend.points.team.rank matches 1.. if score ascend.GreenGoats ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp
execute unless score ascend.CyanCougars ascend.points.team.rank matches 1.. if score ascend.CyanCougars ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp
execute unless score ascend.PurplePenguins ascend.points.team.rank matches 1.. if score ascend.PurplePenguins ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp
execute unless score ascend.BlueBears ascend.points.team.rank matches 1.. if score ascend.BlueBears ascend.points.team.temp > $stmc.highest ascend.points.team.temp run scoreboard players operation $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp
execute if score $stmc.highest ascend.points.team.temp = ascend.RedRaccoons ascend.points.team.temp run scoreboard players set ascend.RedRaccoons ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.OrangeOtters ascend.points.team.temp run scoreboard players set ascend.OrangeOtters ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.PinkPikas ascend.points.team.temp run scoreboard players set ascend.PinkPikas ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.YellowYaks ascend.points.team.temp run scoreboard players set ascend.YellowYaks ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.GreenGoats ascend.points.team.temp run scoreboard players set ascend.GreenGoats ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.CyanCougars ascend.points.team.temp run scoreboard players set ascend.CyanCougars ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.PurplePenguins ascend.points.team.temp run scoreboard players set ascend.PurplePenguins ascend.points.team.rank 8
execute if score $stmc.highest ascend.points.team.temp = ascend.BlueBears ascend.points.team.temp run scoreboard players set ascend.BlueBears ascend.points.team.rank 8