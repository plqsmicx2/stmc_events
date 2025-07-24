# support function that ranks teams & players based on scores
# stores these rankings either in solve.points.team.rank or solve.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add solve.points.team.temp dummy
scoreboard players operation solve.RedRaccoons solve.points.team.temp = solve.RedRaccoons solve.points.team
scoreboard players operation solve.OrangeOtters solve.points.team.temp = solve.OrangeOtters solve.points.team
scoreboard players operation solve.PinkPikas solve.points.team.temp = solve.PinkPikas solve.points.team
scoreboard players operation solve.GreenGoats solve.points.team.temp = solve.GreenGoats solve.points.team
scoreboard players operation solve.CyanCougars solve.points.team.temp = solve.CyanCougars solve.points.team
scoreboard players operation solve.PurplePenguins solve.points.team.temp = solve.PurplePenguins solve.points.team

# then reset ranks
scoreboard players set solve.RedRaccoons solve.points.team.rank -1
scoreboard players set solve.OrangeOtters solve.points.team.rank -1
scoreboard players set solve.PinkPikas solve.points.team.rank -1
scoreboard players set solve.GreenGoats solve.points.team.rank -1
scoreboard players set solve.CyanCougars solve.points.team.rank -1
scoreboard players set solve.PurplePenguins solve.points.team.rank -1

# set our highest value to -1
scoreboard players set $solve.highest solve.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 1
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 1
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 1
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 1
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 1
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $solve.highest solve.points.team.temp -1
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 2
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 2
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 2
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 2
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 2
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 2

scoreboard players set $solve.highest solve.points.team.temp -1
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 3
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 3
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 3
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 3
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 3
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 3

scoreboard players set $solve.highest solve.points.team.temp -1
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 4
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 4
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 4
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 4
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 4
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 4

scoreboard players set $solve.highest solve.points.team.temp -1
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 5
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 5
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 5
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 5
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 5
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 5

scoreboard players set $solve.highest solve.points.team.temp -1
execute unless score solve.RedRaccoons solve.points.team.rank matches 1.. if score solve.RedRaccoons solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp
execute unless score solve.OrangeOtters solve.points.team.rank matches 1.. if score solve.OrangeOtters solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp
execute unless score solve.PinkPikas solve.points.team.rank matches 1.. if score solve.PinkPikas solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp
execute unless score solve.GreenGoats solve.points.team.rank matches 1.. if score solve.GreenGoats solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp
execute unless score solve.CyanCougars solve.points.team.rank matches 1.. if score solve.CyanCougars solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp
execute unless score solve.PurplePenguins solve.points.team.rank matches 1.. if score solve.PurplePenguins solve.points.team.temp > $solve.highest solve.points.team.temp run scoreboard players operation $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp
execute if score $solve.highest solve.points.team.temp = solve.RedRaccoons solve.points.team.temp run scoreboard players set solve.RedRaccoons solve.points.team.rank 6
execute if score $solve.highest solve.points.team.temp = solve.OrangeOtters solve.points.team.temp run scoreboard players set solve.OrangeOtters solve.points.team.rank 6
execute if score $solve.highest solve.points.team.temp = solve.PinkPikas solve.points.team.temp run scoreboard players set solve.PinkPikas solve.points.team.rank 6
execute if score $solve.highest solve.points.team.temp = solve.GreenGoats solve.points.team.temp run scoreboard players set solve.GreenGoats solve.points.team.rank 6
execute if score $solve.highest solve.points.team.temp = solve.CyanCougars solve.points.team.temp run scoreboard players set solve.CyanCougars solve.points.team.rank 6
execute if score $solve.highest solve.points.team.temp = solve.PurplePenguins solve.points.team.temp run scoreboard players set solve.PurplePenguins solve.points.team.rank 6

# <===== ROOM TIME RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add solve.timer.game.room1.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1
scoreboard players operation solve.OrangeOtters solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1
scoreboard players operation solve.PinkPikas solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1
scoreboard players operation solve.GreenGoats solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1
scoreboard players operation solve.CyanCougars solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1
scoreboard players operation solve.PurplePenguins solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1

# then make sure values aren't zero
execute unless score solve.RedRaccoons solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.RedRaccoons solve.timer.game.room1.temp 14400
execute unless score solve.OrangeOtters solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.OrangeOtters solve.timer.game.room1.temp 14400
execute unless score solve.PinkPikas solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.PinkPikas solve.timer.game.room1.temp 14400
execute unless score solve.GreenGoats solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.GreenGoats solve.timer.game.room1.temp 14400
execute unless score solve.CyanCougars solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.CyanCougars solve.timer.game.room1.temp 14400
execute unless score solve.PurplePenguins solve.timer.game.room1.temp matches 1.. run scoreboard players set solve.PurplePenguins solve.timer.game.room1.temp 14400

# then reset ranks
scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.room1.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.room1.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.room1.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank -1

# set our highest value to the max time
scoreboard players set $solve.highest solve.timer.game.room1.temp 14401

# then determine the lowest value
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp

# then determine which team has that lowest value & give them the highest rank applicable
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 1
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 1
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 1
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 1
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 1
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $solve.highest solve.timer.game.room1.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 2
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 2
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 2
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 2
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 2
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 2

scoreboard players set $solve.highest solve.timer.game.room1.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 3
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 3
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 3
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 3
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 3
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 3

scoreboard players set $solve.highest solve.timer.game.room1.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 4
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 4
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 4
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 4
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 4
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 4

scoreboard players set $solve.highest solve.timer.game.room1.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 5
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 5
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 5
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 5
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 5
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 5

scoreboard players set $solve.highest solve.timer.game.room1.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room1.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp
execute unless score solve.OrangeOtters solve.timer.game.room1.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp
execute unless score solve.PinkPikas solve.timer.game.room1.rank matches 1.. if score solve.PinkPikas solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp
execute unless score solve.GreenGoats solve.timer.game.room1.rank matches 1.. if score solve.GreenGoats solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp
execute unless score solve.CyanCougars solve.timer.game.room1.rank matches 1.. if score solve.CyanCougars solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp
execute unless score solve.PurplePenguins solve.timer.game.room1.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room1.temp < $solve.highest solve.timer.game.room1.temp run scoreboard players operation $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp
execute if score $solve.highest solve.timer.game.room1.temp = solve.RedRaccoons solve.timer.game.room1.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room1.rank 6
execute if score $solve.highest solve.timer.game.room1.temp = solve.OrangeOtters solve.timer.game.room1.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room1.rank 6
execute if score $solve.highest solve.timer.game.room1.temp = solve.PinkPikas solve.timer.game.room1.temp run scoreboard players set solve.PinkPikas solve.timer.game.room1.rank 6
execute if score $solve.highest solve.timer.game.room1.temp = solve.GreenGoats solve.timer.game.room1.temp run scoreboard players set solve.GreenGoats solve.timer.game.room1.rank 6
execute if score $solve.highest solve.timer.game.room1.temp = solve.CyanCougars solve.timer.game.room1.temp run scoreboard players set solve.CyanCougars solve.timer.game.room1.rank 6
execute if score $solve.highest solve.timer.game.room1.temp = solve.PurplePenguins solve.timer.game.room1.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room1.rank 6

# and repeat for each room
scoreboard objectives add solve.timer.game.room2.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2
scoreboard players operation solve.OrangeOtters solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2
scoreboard players operation solve.PinkPikas solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2
scoreboard players operation solve.GreenGoats solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2
scoreboard players operation solve.CyanCougars solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2
scoreboard players operation solve.PurplePenguins solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2

execute unless score solve.RedRaccoons solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.RedRaccoons solve.timer.game.room2.temp 14400
execute unless score solve.OrangeOtters solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.OrangeOtters solve.timer.game.room2.temp 14400
execute unless score solve.PinkPikas solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.PinkPikas solve.timer.game.room2.temp 14400
execute unless score solve.GreenGoats solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.GreenGoats solve.timer.game.room2.temp 14400
execute unless score solve.CyanCougars solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.CyanCougars solve.timer.game.room2.temp 14400
execute unless score solve.PurplePenguins solve.timer.game.room2.temp matches 1.. run scoreboard players set solve.PurplePenguins solve.timer.game.room2.temp 14400

scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.room2.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.room2.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.room2.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank -1

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 1
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 1
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 1
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 1
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 1
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 1

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 2
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 2
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 2
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 2
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 2
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 2

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 3
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 3
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 3
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 3
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 3
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 3

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 4
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 4
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 4
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 4
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 4
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 4

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 5
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 5
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 5
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 5
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 5
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 5

scoreboard players set $solve.highest solve.timer.game.room2.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room2.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp
execute unless score solve.OrangeOtters solve.timer.game.room2.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp
execute unless score solve.PinkPikas solve.timer.game.room2.rank matches 1.. if score solve.PinkPikas solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp
execute unless score solve.GreenGoats solve.timer.game.room2.rank matches 1.. if score solve.GreenGoats solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp
execute unless score solve.CyanCougars solve.timer.game.room2.rank matches 1.. if score solve.CyanCougars solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp
execute unless score solve.PurplePenguins solve.timer.game.room2.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room2.temp < $solve.highest solve.timer.game.room2.temp run scoreboard players operation $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp
execute if score $solve.highest solve.timer.game.room2.temp = solve.RedRaccoons solve.timer.game.room2.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room2.rank 6
execute if score $solve.highest solve.timer.game.room2.temp = solve.OrangeOtters solve.timer.game.room2.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room2.rank 6
execute if score $solve.highest solve.timer.game.room2.temp = solve.PinkPikas solve.timer.game.room2.temp run scoreboard players set solve.PinkPikas solve.timer.game.room2.rank 6
execute if score $solve.highest solve.timer.game.room2.temp = solve.GreenGoats solve.timer.game.room2.temp run scoreboard players set solve.GreenGoats solve.timer.game.room2.rank 6
execute if score $solve.highest solve.timer.game.room2.temp = solve.CyanCougars solve.timer.game.room2.temp run scoreboard players set solve.CyanCougars solve.timer.game.room2.rank 6
execute if score $solve.highest solve.timer.game.room2.temp = solve.PurplePenguins solve.timer.game.room2.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room2.rank 6

scoreboard objectives add solve.timer.game.room3.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3
scoreboard players operation solve.OrangeOtters solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3
scoreboard players operation solve.PinkPikas solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3
scoreboard players operation solve.GreenGoats solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3
scoreboard players operation solve.CyanCougars solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3
scoreboard players operation solve.PurplePenguins solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3

execute unless score solve.RedRaccoons solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.RedRaccoons solve.timer.game.room3.temp 14400
execute unless score solve.OrangeOtters solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.OrangeOtters solve.timer.game.room3.temp 14400
execute unless score solve.PinkPikas solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.PinkPikas solve.timer.game.room3.temp 14400
execute unless score solve.GreenGoats solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.GreenGoats solve.timer.game.room3.temp 14400
execute unless score solve.CyanCougars solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.CyanCougars solve.timer.game.room3.temp 14400
execute unless score solve.PurplePenguins solve.timer.game.room3.temp matches 1.. run scoreboard players set solve.PurplePenguins solve.timer.game.room3.temp 14400

scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.room3.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.room3.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.room3.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank -1

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 1
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 1
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 1
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 1
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 1
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 1

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 2
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 2
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 2
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 2
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 2
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 2

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 3
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 3
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 3
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 3
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 3
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 3

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 4
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 4
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 4
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 4
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 4
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 4

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 5
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 5
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 5
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 5
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 5
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 5

scoreboard players set $solve.highest solve.timer.game.room3.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room3.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp
execute unless score solve.OrangeOtters solve.timer.game.room3.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp
execute unless score solve.PinkPikas solve.timer.game.room3.rank matches 1.. if score solve.PinkPikas solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp
execute unless score solve.GreenGoats solve.timer.game.room3.rank matches 1.. if score solve.GreenGoats solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp
execute unless score solve.CyanCougars solve.timer.game.room3.rank matches 1.. if score solve.CyanCougars solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp
execute unless score solve.PurplePenguins solve.timer.game.room3.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room3.temp < $solve.highest solve.timer.game.room3.temp run scoreboard players operation $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp
execute if score $solve.highest solve.timer.game.room3.temp = solve.RedRaccoons solve.timer.game.room3.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room3.rank 6
execute if score $solve.highest solve.timer.game.room3.temp = solve.OrangeOtters solve.timer.game.room3.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room3.rank 6
execute if score $solve.highest solve.timer.game.room3.temp = solve.PinkPikas solve.timer.game.room3.temp run scoreboard players set solve.PinkPikas solve.timer.game.room3.rank 6
execute if score $solve.highest solve.timer.game.room3.temp = solve.GreenGoats solve.timer.game.room3.temp run scoreboard players set solve.GreenGoats solve.timer.game.room3.rank 6
execute if score $solve.highest solve.timer.game.room3.temp = solve.CyanCougars solve.timer.game.room3.temp run scoreboard players set solve.CyanCougars solve.timer.game.room3.rank 6
execute if score $solve.highest solve.timer.game.room3.temp = solve.PurplePenguins solve.timer.game.room3.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room3.rank 6

scoreboard objectives add solve.timer.game.room4.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4
scoreboard players operation solve.OrangeOtters solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4
scoreboard players operation solve.PinkPikas solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4
scoreboard players operation solve.GreenGoats solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4
scoreboard players operation solve.CyanCougars solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4
scoreboard players operation solve.PurplePenguins solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4

execute unless score solve.RedRaccoons solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.RedRaccoons solve.timer.game.room4.temp 14400
execute unless score solve.OrangeOtters solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.OrangeOtters solve.timer.game.room4.temp 14400
execute unless score solve.PinkPikas solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.PinkPikas solve.timer.game.room4.temp 14400
execute unless score solve.GreenGoats solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.GreenGoats solve.timer.game.room4.temp 14400
execute unless score solve.CyanCougars solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.CyanCougars solve.timer.game.room4.temp 14400
execute unless score solve.PurplePenguins solve.timer.game.room4.temp matches 1.. run scoreboard players set solve.PurplePenguins solve.timer.game.room4.temp 14400

scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.room4.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.room4.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.room4.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank -1

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 1
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 1
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 1
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 1
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 1
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 1

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 2
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 2
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 2
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 2
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 2
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 2

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 3
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 3
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 3
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 3
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 3
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 3

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 4
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 4
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 4
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 4
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 4
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 4

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 5
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 5
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 5
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 5
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 5
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 5

scoreboard players set $solve.highest solve.timer.game.room4.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.room4.rank matches 1.. if score solve.RedRaccoons solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp
execute unless score solve.OrangeOtters solve.timer.game.room4.rank matches 1.. if score solve.OrangeOtters solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp
execute unless score solve.PinkPikas solve.timer.game.room4.rank matches 1.. if score solve.PinkPikas solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp
execute unless score solve.GreenGoats solve.timer.game.room4.rank matches 1.. if score solve.GreenGoats solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp
execute unless score solve.CyanCougars solve.timer.game.room4.rank matches 1.. if score solve.CyanCougars solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp
execute unless score solve.PurplePenguins solve.timer.game.room4.rank matches 1.. if score solve.PurplePenguins solve.timer.game.room4.temp < $solve.highest solve.timer.game.room4.temp run scoreboard players operation $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp
execute if score $solve.highest solve.timer.game.room4.temp = solve.RedRaccoons solve.timer.game.room4.temp run scoreboard players set solve.RedRaccoons solve.timer.game.room4.rank 6
execute if score $solve.highest solve.timer.game.room4.temp = solve.OrangeOtters solve.timer.game.room4.temp run scoreboard players set solve.OrangeOtters solve.timer.game.room4.rank 6
execute if score $solve.highest solve.timer.game.room4.temp = solve.PinkPikas solve.timer.game.room4.temp run scoreboard players set solve.PinkPikas solve.timer.game.room4.rank 6
execute if score $solve.highest solve.timer.game.room4.temp = solve.GreenGoats solve.timer.game.room4.temp run scoreboard players set solve.GreenGoats solve.timer.game.room4.rank 6
execute if score $solve.highest solve.timer.game.room4.temp = solve.CyanCougars solve.timer.game.room4.temp run scoreboard players set solve.CyanCougars solve.timer.game.room4.rank 6
execute if score $solve.highest solve.timer.game.room4.temp = solve.PurplePenguins solve.timer.game.room4.temp run scoreboard players set solve.PurplePenguins solve.timer.game.room4.rank 6

# overall rooms
scoreboard objectives add solve.timer.game.rooms.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms
scoreboard players operation solve.OrangeOtters solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms
scoreboard players operation solve.PinkPikas solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms
scoreboard players operation solve.GreenGoats solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms
scoreboard players operation solve.CyanCougars solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms
scoreboard players operation solve.PurplePenguins solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms

execute unless score solve.RedRaccoons solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.temp 14400
execute unless score solve.OrangeOtters solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.temp 14400
execute unless score solve.PinkPikas solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.PinkPikas solve.timer.game.rooms.temp 14400
execute unless score solve.GreenGoats solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.GreenGoats solve.timer.game.rooms.temp 14400
execute unless score solve.CyanCougars solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.CyanCougars solve.timer.game.rooms.temp 14400
execute unless score solve.PurplePenguins solve.timer.game.rooms.temp matches 1.. run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.temp 14400

scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank -1

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 1
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 1
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 1
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 1
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 1
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 1

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 2
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 2
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 2
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 2
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 2
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 2

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 3
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 3
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 3
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 3
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 3
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 3

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 4
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 4
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 4
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 4
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 4
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 4

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 5
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 5
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 5
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 5
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 5
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 5

scoreboard players set $solve.highest solve.timer.game.rooms.temp 14401
execute unless score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. if score solve.RedRaccoons solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp
execute unless score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. if score solve.OrangeOtters solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp
execute unless score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. if score solve.PinkPikas solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp
execute unless score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. if score solve.GreenGoats solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp
execute unless score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. if score solve.CyanCougars solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp
execute unless score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. if score solve.PurplePenguins solve.timer.game.rooms.temp < $solve.highest solve.timer.game.rooms.temp run scoreboard players operation $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp
execute if score $solve.highest solve.timer.game.rooms.temp = solve.RedRaccoons solve.timer.game.rooms.temp run scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 6
execute if score $solve.highest solve.timer.game.rooms.temp = solve.OrangeOtters solve.timer.game.rooms.temp run scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 6
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PinkPikas solve.timer.game.rooms.temp run scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 6
execute if score $solve.highest solve.timer.game.rooms.temp = solve.GreenGoats solve.timer.game.rooms.temp run scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 6
execute if score $solve.highest solve.timer.game.rooms.temp = solve.CyanCougars solve.timer.game.rooms.temp run scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 6
execute if score $solve.highest solve.timer.game.rooms.temp = solve.PurplePenguins solve.timer.game.rooms.temp run scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 6