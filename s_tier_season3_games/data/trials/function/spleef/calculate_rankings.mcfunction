# support function that ranks teams & players based on scores
# stores these rankings either in spleef.points.team.rank or spleef.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add spleef.points.spleef.temp dummy
scoreboard players operation spleef.RedRaccoons spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.team
scoreboard players operation spleef.OrangeOtters spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.team
scoreboard players operation spleef.PinkPikas spleef.points.spleef.temp = spleef.PinkPikas spleef.points.team
scoreboard players operation spleef.GreenGoats spleef.points.spleef.temp = spleef.GreenGoats spleef.points.team
scoreboard players operation spleef.CyanCougars spleef.points.spleef.temp = spleef.CyanCougars spleef.points.team
scoreboard players operation spleef.PurplePenguins spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.team

# then reset ranks
scoreboard players set spleef.RedRaccoons spleef.points.team.rank -1
scoreboard players set spleef.OrangeOtters spleef.points.team.rank -1
scoreboard players set spleef.PinkPikas spleef.points.team.rank -1
scoreboard players set spleef.GreenGoats spleef.points.team.rank -1
scoreboard players set spleef.CyanCougars spleef.points.team.rank -1
scoreboard players set spleef.PurplePenguins spleef.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest spleef.points.spleef.temp -1

# then determine the highest value of teams without a rank
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 1
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 1
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 1
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 1
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 1
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest spleef.points.spleef.temp -1
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 2
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 2
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 2
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 2
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 2
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 2

scoreboard players set $stmc.highest spleef.points.spleef.temp -1
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 3
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 3
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 3
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 3
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 3
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 3

scoreboard players set $stmc.highest spleef.points.spleef.temp -1
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 4
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 4
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 4
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 4
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 4
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 4

scoreboard players set $stmc.highest spleef.points.spleef.temp -1
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 5
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 5
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 5
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 5
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 5
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 5

scoreboard players set $stmc.highest spleef.points.spleef.temp -1
execute unless score spleef.RedRaccoons spleef.points.team.rank matches 1.. if score spleef.RedRaccoons spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp
execute unless score spleef.OrangeOtters spleef.points.team.rank matches 1.. if score spleef.OrangeOtters spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp
execute unless score spleef.PinkPikas spleef.points.team.rank matches 1.. if score spleef.PinkPikas spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp
execute unless score spleef.GreenGoats spleef.points.team.rank matches 1.. if score spleef.GreenGoats spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp
execute unless score spleef.CyanCougars spleef.points.team.rank matches 1.. if score spleef.CyanCougars spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp
execute unless score spleef.PurplePenguins spleef.points.team.rank matches 1.. if score spleef.PurplePenguins spleef.points.spleef.temp > $stmc.highest spleef.points.spleef.temp run scoreboard players operation $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp
execute if score $stmc.highest spleef.points.spleef.temp = spleef.RedRaccoons spleef.points.spleef.temp run scoreboard players set spleef.RedRaccoons spleef.points.team.rank 6
execute if score $stmc.highest spleef.points.spleef.temp = spleef.OrangeOtters spleef.points.spleef.temp run scoreboard players set spleef.OrangeOtters spleef.points.team.rank 6
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PinkPikas spleef.points.spleef.temp run scoreboard players set spleef.PinkPikas spleef.points.team.rank 6
execute if score $stmc.highest spleef.points.spleef.temp = spleef.GreenGoats spleef.points.spleef.temp run scoreboard players set spleef.GreenGoats spleef.points.team.rank 6
execute if score $stmc.highest spleef.points.spleef.temp = spleef.CyanCougars spleef.points.spleef.temp run scoreboard players set spleef.CyanCougars spleef.points.team.rank 6
execute if score $stmc.highest spleef.points.spleef.temp = spleef.PurplePenguins spleef.points.spleef.temp run scoreboard players set spleef.PurplePenguins spleef.points.team.rank 6
