# support function that ranks teams & players based on scores
# stores these rankings either in scramble.points.team.rank or scramble.points.player.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add scramble.points.team.temp dummy
scoreboard players operation scramble.RedRaccoons scramble.points.team.temp = scramble.RedRaccoons scramble.points.team
scoreboard players operation scramble.OrangeOtters scramble.points.team.temp = scramble.OrangeOtters scramble.points.team
scoreboard players operation scramble.PinkPikas scramble.points.team.temp = scramble.PinkPikas scramble.points.team
scoreboard players operation scramble.YellowYaks scramble.points.team.temp = scramble.YellowYaks scramble.points.team
scoreboard players operation scramble.GreenGoats scramble.points.team.temp = scramble.GreenGoats scramble.points.team
scoreboard players operation scramble.CyanCougars scramble.points.team.temp = scramble.CyanCougars scramble.points.team
scoreboard players operation scramble.PurplePenguins scramble.points.team.temp = scramble.PurplePenguins scramble.points.team
scoreboard players operation scramble.BlueBears scramble.points.team.temp = scramble.BlueBears scramble.points.team

# then reset ranks
scoreboard players set scramble.RedRaccoons scramble.points.team.rank -1
scoreboard players set scramble.OrangeOtters scramble.points.team.rank -1
scoreboard players set scramble.PinkPikas scramble.points.team.rank -1
scoreboard players set scramble.YellowYaks scramble.points.team.rank -1
scoreboard players set scramble.GreenGoats scramble.points.team.rank -1
scoreboard players set scramble.CyanCougars scramble.points.team.rank -1
scoreboard players set scramble.PurplePenguins scramble.points.team.rank -1
scoreboard players set scramble.BlueBears scramble.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest scramble.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 1
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 2
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 2

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 3
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 3

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 4
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 4

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 5
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 5

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 6
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 6

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 7
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 7

scoreboard players set $stmc.highest scramble.points.team.temp -1
execute unless score scramble.RedRaccoons scramble.points.team.rank matches 1.. if score scramble.RedRaccoons scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp
execute unless score scramble.OrangeOtters scramble.points.team.rank matches 1.. if score scramble.OrangeOtters scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp
execute unless score scramble.PinkPikas scramble.points.team.rank matches 1.. if score scramble.PinkPikas scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp
execute unless score scramble.YellowYaks scramble.points.team.rank matches 1.. if score scramble.YellowYaks scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp
execute unless score scramble.GreenGoats scramble.points.team.rank matches 1.. if score scramble.GreenGoats scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp
execute unless score scramble.CyanCougars scramble.points.team.rank matches 1.. if score scramble.CyanCougars scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp
execute unless score scramble.PurplePenguins scramble.points.team.rank matches 1.. if score scramble.PurplePenguins scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp
execute unless score scramble.BlueBears scramble.points.team.rank matches 1.. if score scramble.BlueBears scramble.points.team.temp > $stmc.highest scramble.points.team.temp run scoreboard players operation $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp
execute if score $stmc.highest scramble.points.team.temp = scramble.RedRaccoons scramble.points.team.temp run scoreboard players set scramble.RedRaccoons scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.OrangeOtters scramble.points.team.temp run scoreboard players set scramble.OrangeOtters scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.PinkPikas scramble.points.team.temp run scoreboard players set scramble.PinkPikas scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.YellowYaks scramble.points.team.temp run scoreboard players set scramble.YellowYaks scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.GreenGoats scramble.points.team.temp run scoreboard players set scramble.GreenGoats scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.CyanCougars scramble.points.team.temp run scoreboard players set scramble.CyanCougars scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.PurplePenguins scramble.points.team.temp run scoreboard players set scramble.PurplePenguins scramble.points.team.rank 8
execute if score $stmc.highest scramble.points.team.temp = scramble.BlueBears scramble.points.team.temp run scoreboard players set scramble.BlueBears scramble.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add scramble.points.indiv.temp dummy
execute as @a run scoreboard players operation @s scramble.points.indiv.temp = @s scramble.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s scramble.points.player.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest scramble.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s scramble.points.player.rank matches 1 run scoreboard players reset @s scramble.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 2
execute as @a if score @s scramble.points.player.rank matches 2 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 3
execute as @a if score @s scramble.points.player.rank matches 3 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 4
execute as @a if score @s scramble.points.player.rank matches 4 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 5
execute as @a if score @s scramble.points.player.rank matches 5 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 6
execute as @a if score @s scramble.points.player.rank matches 6 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 7
execute as @a if score @s scramble.points.player.rank matches 7 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 8
execute as @a if score @s scramble.points.player.rank matches 8 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 9
execute as @a if score @s scramble.points.player.rank matches 9 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 10
execute as @a if score @s scramble.points.player.rank matches 10 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 11
execute as @a if score @s scramble.points.player.rank matches 11 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 12
execute as @a if score @s scramble.points.player.rank matches 12 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 13
execute as @a if score @s scramble.points.player.rank matches 13 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 14
execute as @a if score @s scramble.points.player.rank matches 14 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 15
execute as @a if score @s scramble.points.player.rank matches 15 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 16
execute as @a if score @s scramble.points.player.rank matches 16 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 17
execute as @a if score @s scramble.points.player.rank matches 17 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 18
execute as @a if score @s scramble.points.player.rank matches 18 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 19
execute as @a if score @s scramble.points.player.rank matches 19 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 20
execute as @a if score @s scramble.points.player.rank matches 20 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 21
execute as @a if score @s scramble.points.player.rank matches 21 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 22
execute as @a if score @s scramble.points.player.rank matches 22 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 23
execute as @a if score @s scramble.points.player.rank matches 23 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 24
execute as @a if score @s scramble.points.player.rank matches 24 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 25
execute as @a if score @s scramble.points.player.rank matches 25 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 26
execute as @a if score @s scramble.points.player.rank matches 26 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 27
execute as @a if score @s scramble.points.player.rank matches 27 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 28
execute as @a if score @s scramble.points.player.rank matches 28 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 29
execute as @a if score @s scramble.points.player.rank matches 29 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 30
execute as @a if score @s scramble.points.player.rank matches 30 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 31
execute as @a if score @s scramble.points.player.rank matches 31 run scoreboard players reset @s scramble.points.indiv.temp

scoreboard players set $stmc.highest scramble.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest scramble.points.indiv.temp > @s scramble.points.indiv.temp
execute as @a if score @s scramble.points.indiv.temp = $stmc.highest scramble.points.indiv.temp unless score @s scramble.points.player.rank matches 0.. run scoreboard players set @s scramble.points.player.rank 32
execute as @a if score @s scramble.points.player.rank matches 32 run scoreboard players reset @s scramble.points.indiv.temp
