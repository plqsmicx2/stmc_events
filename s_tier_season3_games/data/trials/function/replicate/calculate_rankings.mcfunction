# $replicate.highest --> $replicate.highest
# solve.<team> --> replicate.<team>
# solve.timer.game.<room#>.temp --> replicate.timer.<build#>
# solve.timer.game.<room#>.rank --> replicate.points.rank.<build#>
# solve.timer.game.<room#> --> -

# <===== ROOM TIME RANKINGS =====>

# make sure values aren't zero
scoreboard objectives add replicate.timer.build1.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1
scoreboard players operation replicate.OrangeOtters replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1
scoreboard players operation replicate.PinkPikas replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1
scoreboard players operation replicate.GreenGoats replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1
scoreboard players operation replicate.CyanCougars replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1
scoreboard players operation replicate.PurplePenguins replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1

execute unless score replicate.RedRaccoons replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build1.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4800

# then reset ranks
scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build1 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build1 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build1 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 -1

# set our highest value to the max time
scoreboard players set $replicate.highest replicate.timer.build1.temp 4801

# then determine the lowest value
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp

# then determine which team has that lowest value & give them the highest rank applicable
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 1
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 1
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 1
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 1
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 1
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 1

# and then repeat the process until all teams have been ranked
scoreboard players set $replicate.highest replicate.timer.build1.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 2
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 2
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 2
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 2
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 2
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 2

scoreboard players set $replicate.highest replicate.timer.build1.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 3
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 3
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 3
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 3
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 3
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 3

scoreboard players set $replicate.highest replicate.timer.build1.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 4
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 4
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 4
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 4
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 4
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 4

scoreboard players set $replicate.highest replicate.timer.build1.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 5
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 5
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 5
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 5
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 5
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 5

scoreboard players set $replicate.highest replicate.timer.build1.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute unless score replicate.PinkPikas replicate.points.rank.build1 matches 1.. if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute unless score replicate.GreenGoats replicate.points.rank.build1 matches 1.. if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute unless score replicate.CyanCougars replicate.points.rank.build1 matches 1.. if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.highest replicate.timer.build1.temp run scoreboard players operation $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score $replicate.highest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 6
execute if score $replicate.highest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 6
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 6
execute if score $replicate.highest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 6
execute if score $replicate.highest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 6
execute if score $replicate.highest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 6

# and repeat for each room
scoreboard objectives add replicate.timer.build2.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2
scoreboard players operation replicate.OrangeOtters replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2
scoreboard players operation replicate.PinkPikas replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2
scoreboard players operation replicate.GreenGoats replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2
scoreboard players operation replicate.CyanCougars replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2
scoreboard players operation replicate.PurplePenguins replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2

execute unless score replicate.RedRaccoons replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build2.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build2.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build2.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build2.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build2.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build2.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build2.temp 4800

scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build2 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build2 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build2 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 -1

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801

execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp

execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 1
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 1
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 1
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 1
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 1
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 1

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp
execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 2
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 2
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 2
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 2
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 2
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 2

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp
execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 3
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 3
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 3
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 3
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 3
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 3

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp
execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 4
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 4
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 4
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 4
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 4
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 4

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp
execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 5
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 5
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 5
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 5
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 5
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 5

scoreboard players set $replicate.highest replicate.timer.build2.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build2 matches 1.. if score replicate.RedRaccoons replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build2 matches 1.. if score replicate.OrangeOtters replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp
execute unless score replicate.PinkPikas replicate.points.rank.build2 matches 1.. if score replicate.PinkPikas replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp
execute unless score replicate.GreenGoats replicate.points.rank.build2 matches 1.. if score replicate.GreenGoats replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp
execute unless score replicate.CyanCougars replicate.points.rank.build2 matches 1.. if score replicate.CyanCougars replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build2 matches 1.. if score replicate.PurplePenguins replicate.timer.build2.temp < $replicate.highest replicate.timer.build2.temp run scoreboard players operation $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp
execute if score $replicate.highest replicate.timer.build2.temp = replicate.RedRaccoons replicate.timer.build2.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 6
execute if score $replicate.highest replicate.timer.build2.temp = replicate.OrangeOtters replicate.timer.build2.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 6
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PinkPikas replicate.timer.build2.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 6
execute if score $replicate.highest replicate.timer.build2.temp = replicate.GreenGoats replicate.timer.build2.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 6
execute if score $replicate.highest replicate.timer.build2.temp = replicate.CyanCougars replicate.timer.build2.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 6
execute if score $replicate.highest replicate.timer.build2.temp = replicate.PurplePenguins replicate.timer.build2.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 6

scoreboard objectives add replicate.timer.build3.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3
scoreboard players operation replicate.OrangeOtters replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3
scoreboard players operation replicate.PinkPikas replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3
scoreboard players operation replicate.GreenGoats replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3
scoreboard players operation replicate.CyanCougars replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3
scoreboard players operation replicate.PurplePenguins replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3

execute unless score replicate.RedRaccoons replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build3.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build3.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build3.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build3.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build3.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build3.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build3.temp 4800

scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build3 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build3 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build3 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 -1

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801

execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp

execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 1
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 1
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 1
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 1
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 1
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 1

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp
execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 2
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 2
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 2
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 2
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 2
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 2

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp
execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 3
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 3
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 3
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 3
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 3
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 3

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp
execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 4
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 4
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 4
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 4
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 4
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 4

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp
execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 5
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 5
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 5
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 5
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 5
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 5

scoreboard players set $replicate.highest replicate.timer.build3.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build3 matches 1.. if score replicate.RedRaccoons replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build3 matches 1.. if score replicate.OrangeOtters replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp
execute unless score replicate.PinkPikas replicate.points.rank.build3 matches 1.. if score replicate.PinkPikas replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp
execute unless score replicate.GreenGoats replicate.points.rank.build3 matches 1.. if score replicate.GreenGoats replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp
execute unless score replicate.CyanCougars replicate.points.rank.build3 matches 1.. if score replicate.CyanCougars replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build3 matches 1.. if score replicate.PurplePenguins replicate.timer.build3.temp < $replicate.highest replicate.timer.build3.temp run scoreboard players operation $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp
execute if score $replicate.highest replicate.timer.build3.temp = replicate.RedRaccoons replicate.timer.build3.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 6
execute if score $replicate.highest replicate.timer.build3.temp = replicate.OrangeOtters replicate.timer.build3.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 6
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PinkPikas replicate.timer.build3.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 6
execute if score $replicate.highest replicate.timer.build3.temp = replicate.GreenGoats replicate.timer.build3.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 6
execute if score $replicate.highest replicate.timer.build3.temp = replicate.CyanCougars replicate.timer.build3.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 6
execute if score $replicate.highest replicate.timer.build3.temp = replicate.PurplePenguins replicate.timer.build3.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 6

scoreboard objectives add replicate.timer.build4.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4
scoreboard players operation replicate.OrangeOtters replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4
scoreboard players operation replicate.PinkPikas replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4
scoreboard players operation replicate.GreenGoats replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4
scoreboard players operation replicate.CyanCougars replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4
scoreboard players operation replicate.PurplePenguins replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4

execute unless score replicate.RedRaccoons replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build4.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build4.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build4.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build4.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build4.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build4.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build4.temp 4800

scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build4 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build4 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build4 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 -1

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801

execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp

execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 1
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 1
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 1
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 1
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 1
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 1

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp
execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 2
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 2
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 2
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 2
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 2
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 2

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp
execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 3
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 3
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 3
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 3
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 3
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 3

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp
execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 4
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 4
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 4
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 4
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 4
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 4

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp
execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 5
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 5
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 5
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 5
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 5
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 5

scoreboard players set $replicate.highest replicate.timer.build4.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build4 matches 1.. if score replicate.RedRaccoons replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build4 matches 1.. if score replicate.OrangeOtters replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp
execute unless score replicate.PinkPikas replicate.points.rank.build4 matches 1.. if score replicate.PinkPikas replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp
execute unless score replicate.GreenGoats replicate.points.rank.build4 matches 1.. if score replicate.GreenGoats replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp
execute unless score replicate.CyanCougars replicate.points.rank.build4 matches 1.. if score replicate.CyanCougars replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build4 matches 1.. if score replicate.PurplePenguins replicate.timer.build4.temp < $replicate.highest replicate.timer.build4.temp run scoreboard players operation $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp
execute if score $replicate.highest replicate.timer.build4.temp = replicate.RedRaccoons replicate.timer.build4.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 6
execute if score $replicate.highest replicate.timer.build4.temp = replicate.OrangeOtters replicate.timer.build4.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 6
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PinkPikas replicate.timer.build4.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 6
execute if score $replicate.highest replicate.timer.build4.temp = replicate.GreenGoats replicate.timer.build4.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 6
execute if score $replicate.highest replicate.timer.build4.temp = replicate.CyanCougars replicate.timer.build4.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 6
execute if score $replicate.highest replicate.timer.build4.temp = replicate.PurplePenguins replicate.timer.build4.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 6

scoreboard objectives add replicate.timer.build5.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5
scoreboard players operation replicate.OrangeOtters replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5
scoreboard players operation replicate.PinkPikas replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5
scoreboard players operation replicate.GreenGoats replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5
scoreboard players operation replicate.CyanCougars replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5
scoreboard players operation replicate.PurplePenguins replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5

execute unless score replicate.RedRaccoons replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build5.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build5.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build5.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build5.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build5.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build5.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build5.temp 4800

scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build5 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build5 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build5 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 -1

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801

execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp

execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 1
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 1
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 1
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 1
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 1
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 1

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp
execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 2
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 2
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 2
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 2
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 2
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 2

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp
execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 3
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 3
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 3
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 3
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 3
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 3

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp
execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 4
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 4
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 4
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 4
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 4
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 4

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp
execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 5
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 5
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 5
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 5
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 5
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 5

scoreboard players set $replicate.highest replicate.timer.build5.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build5 matches 1.. if score replicate.RedRaccoons replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build5 matches 1.. if score replicate.OrangeOtters replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp
execute unless score replicate.PinkPikas replicate.points.rank.build5 matches 1.. if score replicate.PinkPikas replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp
execute unless score replicate.GreenGoats replicate.points.rank.build5 matches 1.. if score replicate.GreenGoats replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp
execute unless score replicate.CyanCougars replicate.points.rank.build5 matches 1.. if score replicate.CyanCougars replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build5 matches 1.. if score replicate.PurplePenguins replicate.timer.build5.temp < $replicate.highest replicate.timer.build5.temp run scoreboard players operation $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp
execute if score $replicate.highest replicate.timer.build5.temp = replicate.RedRaccoons replicate.timer.build5.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 6
execute if score $replicate.highest replicate.timer.build5.temp = replicate.OrangeOtters replicate.timer.build5.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 6
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PinkPikas replicate.timer.build5.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 6
execute if score $replicate.highest replicate.timer.build5.temp = replicate.GreenGoats replicate.timer.build5.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 6
execute if score $replicate.highest replicate.timer.build5.temp = replicate.CyanCougars replicate.timer.build5.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 6
execute if score $replicate.highest replicate.timer.build5.temp = replicate.PurplePenguins replicate.timer.build5.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 6

scoreboard objectives add replicate.timer.build6.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6
scoreboard players operation replicate.OrangeOtters replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6
scoreboard players operation replicate.PinkPikas replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6
scoreboard players operation replicate.GreenGoats replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6
scoreboard players operation replicate.CyanCougars replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6
scoreboard players operation replicate.PurplePenguins replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6

execute unless score replicate.RedRaccoons replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.RedRaccoons replicate.timer.build6.temp 4800
execute unless score replicate.OrangeOtters replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.OrangeOtters replicate.timer.build6.temp 4800
execute unless score replicate.PinkPikas replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.PinkPikas replicate.timer.build6.temp 4800
execute unless score replicate.GreenGoats replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.GreenGoats replicate.timer.build6.temp 4800
execute unless score replicate.CyanCougars replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.CyanCougars replicate.timer.build6.temp 4800
execute unless score replicate.PurplePenguins replicate.timer.build6.temp matches 1.. run scoreboard players set replicate.PurplePenguins replicate.timer.build6.temp 4800

scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build6 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build6 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build6 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 -1

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801

execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp

execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 1
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 1
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 1
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 1
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 1
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 1

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp
execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 2
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 2
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 2
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 2
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 2
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 2

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp
execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 3
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 3
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 3
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 3
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 3
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 3

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp
execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 4
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 4
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 4
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 4
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 4
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 4

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp
execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 5
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 5
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 5
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 5
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 5
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 5

scoreboard players set $replicate.highest replicate.timer.build6.temp 4801
execute unless score replicate.RedRaccoons replicate.points.rank.build6 matches 1.. if score replicate.RedRaccoons replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp
execute unless score replicate.OrangeOtters replicate.points.rank.build6 matches 1.. if score replicate.OrangeOtters replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp
execute unless score replicate.PinkPikas replicate.points.rank.build6 matches 1.. if score replicate.PinkPikas replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp
execute unless score replicate.GreenGoats replicate.points.rank.build6 matches 1.. if score replicate.GreenGoats replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp
execute unless score replicate.CyanCougars replicate.points.rank.build6 matches 1.. if score replicate.CyanCougars replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp
execute unless score replicate.PurplePenguins replicate.points.rank.build6 matches 1.. if score replicate.PurplePenguins replicate.timer.build6.temp < $replicate.highest replicate.timer.build6.temp run scoreboard players operation $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp
execute if score $replicate.highest replicate.timer.build6.temp = replicate.RedRaccoons replicate.timer.build6.temp run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 6
execute if score $replicate.highest replicate.timer.build6.temp = replicate.OrangeOtters replicate.timer.build6.temp run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 6
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PinkPikas replicate.timer.build6.temp run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 6
execute if score $replicate.highest replicate.timer.build6.temp = replicate.GreenGoats replicate.timer.build6.temp run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 6
execute if score $replicate.highest replicate.timer.build6.temp = replicate.CyanCougars replicate.timer.build6.temp run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 6
execute if score $replicate.highest replicate.timer.build6.temp = replicate.PurplePenguins replicate.timer.build6.temp run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 6