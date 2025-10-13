# support function that ranks teams & players based on scores
# stores these rankings either in race.points.team.rank or race.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add race.points.team.temp dummy
scoreboard players operation race.RedRaccoons race.points.team.temp = race.RedRaccoons race.points.team
scoreboard players operation race.OrangeOtters race.points.team.temp = race.OrangeOtters race.points.team
scoreboard players operation race.PinkPikas race.points.team.temp = race.PinkPikas race.points.team
scoreboard players operation race.YellowYaks race.points.team.temp = race.YellowYaks race.points.team
scoreboard players operation race.GreenGoats race.points.team.temp = race.GreenGoats race.points.team
scoreboard players operation race.CyanCougars race.points.team.temp = race.CyanCougars race.points.team
scoreboard players operation race.PurplePenguins race.points.team.temp = race.PurplePenguins race.points.team
scoreboard players operation race.BlueBears race.points.team.temp = race.BlueBears race.points.team

# then reset ranks
scoreboard players set race.RedRaccoons race.points.team.rank -1
scoreboard players set race.OrangeOtters race.points.team.rank -1
scoreboard players set race.PinkPikas race.points.team.rank -1
scoreboard players set race.YellowYaks race.points.team.rank -1
scoreboard players set race.GreenGoats race.points.team.rank -1
scoreboard players set race.CyanCougars race.points.team.rank -1
scoreboard players set race.PurplePenguins race.points.team.rank -1
scoreboard players set race.BlueBears race.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest race.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 1
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 2
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 2

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 3
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 3

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 4
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 4

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 5
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 5

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 6
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 6

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 7
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 7

scoreboard players set $stmc.highest race.points.team.temp -1
execute unless score race.RedRaccoons race.points.team.rank matches 1.. if score race.RedRaccoons race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp
execute unless score race.OrangeOtters race.points.team.rank matches 1.. if score race.OrangeOtters race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp
execute unless score race.PinkPikas race.points.team.rank matches 1.. if score race.PinkPikas race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp
execute unless score race.YellowYaks race.points.team.rank matches 1.. if score race.YellowYaks race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp
execute unless score race.GreenGoats race.points.team.rank matches 1.. if score race.GreenGoats race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp
execute unless score race.CyanCougars race.points.team.rank matches 1.. if score race.CyanCougars race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp
execute unless score race.PurplePenguins race.points.team.rank matches 1.. if score race.PurplePenguins race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp
execute unless score race.BlueBears race.points.team.rank matches 1.. if score race.BlueBears race.points.team.temp > $stmc.highest race.points.team.temp run scoreboard players operation $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp
execute if score $stmc.highest race.points.team.temp = race.RedRaccoons race.points.team.temp run scoreboard players set race.RedRaccoons race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.OrangeOtters race.points.team.temp run scoreboard players set race.OrangeOtters race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.PinkPikas race.points.team.temp run scoreboard players set race.PinkPikas race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.YellowYaks race.points.team.temp run scoreboard players set race.YellowYaks race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.GreenGoats race.points.team.temp run scoreboard players set race.GreenGoats race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.CyanCougars race.points.team.temp run scoreboard players set race.CyanCougars race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.PurplePenguins race.points.team.temp run scoreboard players set race.PurplePenguins race.points.team.rank 8
execute if score $stmc.highest race.points.team.temp = race.BlueBears race.points.team.temp run scoreboard players set race.BlueBears race.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add race.points.indiv.temp dummy
execute as @a run scoreboard players operation @s race.points.indiv.temp = @s race.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s race.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $race.highest race.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s race.points.indiv.rank matches 1 run scoreboard players reset @s race.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 2
execute as @a if score @s race.points.indiv.rank matches 2 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 3
execute as @a if score @s race.points.indiv.rank matches 3 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 4
execute as @a if score @s race.points.indiv.rank matches 4 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 5
execute as @a if score @s race.points.indiv.rank matches 5 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 6
execute as @a if score @s race.points.indiv.rank matches 6 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 7
execute as @a if score @s race.points.indiv.rank matches 7 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 8
execute as @a if score @s race.points.indiv.rank matches 8 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 9
execute as @a if score @s race.points.indiv.rank matches 9 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 10
execute as @a if score @s race.points.indiv.rank matches 10 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 11
execute as @a if score @s race.points.indiv.rank matches 11 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 12
execute as @a if score @s race.points.indiv.rank matches 12 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 13
execute as @a if score @s race.points.indiv.rank matches 13 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 14
execute as @a if score @s race.points.indiv.rank matches 14 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 15
execute as @a if score @s race.points.indiv.rank matches 15 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 16
execute as @a if score @s race.points.indiv.rank matches 16 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 17
execute as @a if score @s race.points.indiv.rank matches 17 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 18
execute as @a if score @s race.points.indiv.rank matches 18 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 19
execute as @a if score @s race.points.indiv.rank matches 19 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 20
execute as @a if score @s race.points.indiv.rank matches 20 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 21
execute as @a if score @s race.points.indiv.rank matches 21 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 22
execute as @a if score @s race.points.indiv.rank matches 22 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 23
execute as @a if score @s race.points.indiv.rank matches 23 run scoreboard players reset @s race.points.indiv.temp

scoreboard players set $race.highest race.points.indiv.temp -1
execute as @a run scoreboard players operation $race.highest race.points.indiv.temp > @s race.points.indiv.temp
execute as @a if score @s race.points.indiv.temp = $race.highest race.points.indiv.temp unless score @s race.points.indiv.rank matches 0.. run scoreboard players set @s race.points.indiv.rank 24
execute as @a if score @s race.points.indiv.rank matches 24 run scoreboard players reset @s race.points.indiv.temp

# <===== FASTEST LAPS =====>

# calculate fastest laps for each player
scoreboard players set @a race.fastest_lap 4800
execute as @a if score @s race.laptime.1 matches 1.. if score @s race.fastest_lap > @s race.laptime.1 run scoreboard players operation @s race.fastest_lap = @s race.laptime.1
execute as @a if score @s race.laptime.2 matches 1.. if score @s race.fastest_lap > @s race.laptime.2 run scoreboard players operation @s race.fastest_lap = @s race.laptime.2
execute as @a if score @s race.laptime.3 matches 1.. if score @s race.fastest_lap > @s race.laptime.3 run scoreboard players operation @s race.fastest_lap = @s race.laptime.3
execute as @a if score @s race.laptime.4 matches 1.. if score @s race.fastest_lap > @s race.laptime.4 run scoreboard players operation @s race.fastest_lap = @s race.laptime.4

# reset ranks
execute as @a run scoreboard players set @s race.fastest_lap.rank -1

# first, store our data in a temporary place to work with
scoreboard objectives add race.fastest_lap.temp dummy
execute as @a at @s run scoreboard players operation @s race.fastest_lap.temp = @s race.fastest_lap

# set dummy player to -1
scoreboard players set $race.highest race.fastest_lap.temp 4800

# determine highest value
execute as @a unless score @s race.fastest_lap.rank matches 1.. run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp

# determine who has that highest value & assign them appropriate rank
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 1

# and repeat four more times
scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a unless score @s race.fastest_lap.rank matches 1.. run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 2

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a unless score @s race.fastest_lap.rank matches 1.. run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 3

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a unless score @s race.fastest_lap.rank matches 1.. run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 4

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a unless score @s race.fastest_lap.rank matches 1.. run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 5