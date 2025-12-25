# support function that ranks teams & players based on scores
# stores these rankings either in brawl.points.team.rank or brawl.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add brawl.points.team.temp dummy
scoreboard players operation brawl.RedRaccoons brawl.points.team.temp = brawl.RedRaccoons brawl.points.team
scoreboard players operation brawl.OrangeOtters brawl.points.team.temp = brawl.OrangeOtters brawl.points.team
scoreboard players operation brawl.PinkPikas brawl.points.team.temp = brawl.PinkPikas brawl.points.team
scoreboard players operation brawl.YellowYaks brawl.points.team.temp = brawl.YellowYaks brawl.points.team
scoreboard players operation brawl.GreenGoats brawl.points.team.temp = brawl.GreenGoats brawl.points.team
scoreboard players operation brawl.CyanCougars brawl.points.team.temp = brawl.CyanCougars brawl.points.team
scoreboard players operation brawl.PurplePenguins brawl.points.team.temp = brawl.PurplePenguins brawl.points.team
scoreboard players operation brawl.BlueBears brawl.points.team.temp = brawl.BlueBears brawl.points.team

# then reset ranks
scoreboard players set brawl.RedRaccoons brawl.points.team.rank -1
scoreboard players set brawl.OrangeOtters brawl.points.team.rank -1
scoreboard players set brawl.PinkPikas brawl.points.team.rank -1
scoreboard players set brawl.YellowYaks brawl.points.team.rank -1
scoreboard players set brawl.GreenGoats brawl.points.team.rank -1
scoreboard players set brawl.CyanCougars brawl.points.team.rank -1
scoreboard players set brawl.PurplePenguins brawl.points.team.rank -1
scoreboard players set brawl.BlueBears brawl.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest brawl.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 1
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 2
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 2

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 3
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 3

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 4
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 4

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 5
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 5

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 6
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 6

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 7
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 7

scoreboard players set $stmc.highest brawl.points.team.temp -1
execute unless score brawl.RedRaccoons brawl.points.team.rank matches 1.. if score brawl.RedRaccoons brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp
execute unless score brawl.OrangeOtters brawl.points.team.rank matches 1.. if score brawl.OrangeOtters brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp
execute unless score brawl.PinkPikas brawl.points.team.rank matches 1.. if score brawl.PinkPikas brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp
execute unless score brawl.YellowYaks brawl.points.team.rank matches 1.. if score brawl.YellowYaks brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp
execute unless score brawl.GreenGoats brawl.points.team.rank matches 1.. if score brawl.GreenGoats brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp
execute unless score brawl.CyanCougars brawl.points.team.rank matches 1.. if score brawl.CyanCougars brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp
execute unless score brawl.PurplePenguins brawl.points.team.rank matches 1.. if score brawl.PurplePenguins brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp
execute unless score brawl.BlueBears brawl.points.team.rank matches 1.. if score brawl.BlueBears brawl.points.team.temp > $stmc.highest brawl.points.team.temp run scoreboard players operation $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp
execute if score $stmc.highest brawl.points.team.temp = brawl.RedRaccoons brawl.points.team.temp run scoreboard players set brawl.RedRaccoons brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.OrangeOtters brawl.points.team.temp run scoreboard players set brawl.OrangeOtters brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.PinkPikas brawl.points.team.temp run scoreboard players set brawl.PinkPikas brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.YellowYaks brawl.points.team.temp run scoreboard players set brawl.YellowYaks brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.GreenGoats brawl.points.team.temp run scoreboard players set brawl.GreenGoats brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.CyanCougars brawl.points.team.temp run scoreboard players set brawl.CyanCougars brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.PurplePenguins brawl.points.team.temp run scoreboard players set brawl.PurplePenguins brawl.points.team.rank 8
execute if score $stmc.highest brawl.points.team.temp = brawl.BlueBears brawl.points.team.temp run scoreboard players set brawl.BlueBears brawl.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add brawl.points.indiv.temp dummy
execute as @a run scoreboard players operation @s brawl.points.indiv.temp = @s brawl.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s brawl.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $brawl.highest brawl.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s brawl.points.indiv.rank matches 1 run scoreboard players reset @s brawl.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 2
execute as @a if score @s brawl.points.indiv.rank matches 2 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 3
execute as @a if score @s brawl.points.indiv.rank matches 3 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 4
execute as @a if score @s brawl.points.indiv.rank matches 4 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 5
execute as @a if score @s brawl.points.indiv.rank matches 5 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 6
execute as @a if score @s brawl.points.indiv.rank matches 6 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 7
execute as @a if score @s brawl.points.indiv.rank matches 7 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 8
execute as @a if score @s brawl.points.indiv.rank matches 8 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 9
execute as @a if score @s brawl.points.indiv.rank matches 9 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 10
execute as @a if score @s brawl.points.indiv.rank matches 10 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 11
execute as @a if score @s brawl.points.indiv.rank matches 11 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 12
execute as @a if score @s brawl.points.indiv.rank matches 12 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 13
execute as @a if score @s brawl.points.indiv.rank matches 13 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 14
execute as @a if score @s brawl.points.indiv.rank matches 14 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 15
execute as @a if score @s brawl.points.indiv.rank matches 15 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 16
execute as @a if score @s brawl.points.indiv.rank matches 16 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 17
execute as @a if score @s brawl.points.indiv.rank matches 17 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 18
execute as @a if score @s brawl.points.indiv.rank matches 18 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 19
execute as @a if score @s brawl.points.indiv.rank matches 19 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 20
execute as @a if score @s brawl.points.indiv.rank matches 20 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 21
execute as @a if score @s brawl.points.indiv.rank matches 21 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 22
execute as @a if score @s brawl.points.indiv.rank matches 22 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 23
execute as @a if score @s brawl.points.indiv.rank matches 23 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 24
execute as @a if score @s brawl.points.indiv.rank matches 24 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 25
execute as @a if score @s brawl.points.indiv.rank matches 25 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 26
execute as @a if score @s brawl.points.indiv.rank matches 26 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 27
execute as @a if score @s brawl.points.indiv.rank matches 27 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 28
execute as @a if score @s brawl.points.indiv.rank matches 28 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 29
execute as @a if score @s brawl.points.indiv.rank matches 29 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 30
execute as @a if score @s brawl.points.indiv.rank matches 30 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 31
execute as @a if score @s brawl.points.indiv.rank matches 31 run scoreboard players reset @s brawl.points.indiv.temp

scoreboard players set $brawl.highest brawl.points.indiv.temp -1
execute as @a run scoreboard players operation $brawl.highest brawl.points.indiv.temp > @s brawl.points.indiv.temp
execute as @a if score @s brawl.points.indiv.temp = $brawl.highest brawl.points.indiv.temp unless score @s brawl.points.indiv.rank matches 0.. run scoreboard players set @s brawl.points.indiv.rank 32
execute as @a if score @s brawl.points.indiv.rank matches 32 run scoreboard players reset @s brawl.points.indiv.temp

# <===== KILL RANKING =====>

# reset ranks
scoreboard objectives add brawl.kills.rank dummy
execute as @a run scoreboard players set @s brawl.kills.rank -1

# first, store our data in a temporary place to work with
scoreboard objectives add brawl.kills.temp dummy
execute as @a at @s run scoreboard players operation @s brawl.kills.temp = @s brawl.kills

# set dummy player to -1
scoreboard players set $brawl.highest brawl.kills.temp -1

# determine highest value
execute as @a unless score @s brawl.kills.rank matches 1.. run scoreboard players operation $brawl.highest brawl.kills.temp > @s brawl.kills.temp

# determine who has that highest value & assign them appropriate rank
execute as @a if score @s brawl.kills.temp = $brawl.highest brawl.kills.temp run scoreboard players set @s brawl.kills.rank 1

# then remove that player's value from consideration
execute as @a if score @s brawl.kills.rank matches 1 run scoreboard players reset @s brawl.kills.temp

# and repeat four more times
scoreboard players set $brawl.highest brawl.kills.temp -1
execute as @a unless score @s brawl.kills.rank matches 1.. run scoreboard players operation $brawl.highest brawl.kills.temp > @s brawl.kills.temp
execute as @a if score @s brawl.kills.temp = $brawl.highest brawl.kills.temp run scoreboard players set @s brawl.kills.rank 2
execute as @a if score @s brawl.kills.rank matches 2 run scoreboard players reset @s brawl.kills.temp

scoreboard players set $brawl.highest brawl.kills.temp -1
execute as @a unless score @s brawl.kills.rank matches 1.. run scoreboard players operation $brawl.highest brawl.kills.temp > @s brawl.kills.temp
execute as @a if score @s brawl.kills.temp = $brawl.highest brawl.kills.temp run scoreboard players set @s brawl.kills.rank 3
execute as @a if score @s brawl.kills.rank matches 3 run scoreboard players reset @s brawl.kills.temp

scoreboard players set $brawl.highest brawl.kills.temp -1
execute as @a unless score @s brawl.kills.rank matches 1.. run scoreboard players operation $brawl.highest brawl.kills.temp > @s brawl.kills.temp
execute as @a if score @s brawl.kills.temp = $brawl.highest brawl.kills.temp run scoreboard players set @s brawl.kills.rank 4
execute as @a if score @s brawl.kills.rank matches 4 run scoreboard players reset @s brawl.kills.temp

scoreboard players set $brawl.highest brawl.kills.temp -1
execute as @a unless score @s brawl.kills.rank matches 1.. run scoreboard players operation $brawl.highest brawl.kills.temp > @s brawl.kills.temp
execute as @a if score @s brawl.kills.temp = $brawl.highest brawl.kills.temp run scoreboard players set @s brawl.kills.rank 5
execute as @a if score @s brawl.kills.rank matches 5 run scoreboard players reset @s brawl.kills.temp