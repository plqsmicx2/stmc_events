# reset function for Replicate

# handles all of point awards & some important resets

# determine placement of each team per build
# BUILD 1
scoreboard objectives add replicate.points.rank.build1 dummy

scoreboard players set $replicate.highest replicate.timer.build1 -1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.RedRaccoons replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.OrangeOtters replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PinkPikas replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.GreenGoats replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.CyanCougars replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PurplePenguins replicate.timer.build1
execute if score replicate.RedRaccoons replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 1
execute if score replicate.OrangeOtters replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 1
execute if score replicate.PinkPikas replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 1
execute if score replicate.GreenGoats replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 1
execute if score replicate.CyanCougars replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 1
execute if score replicate.PurplePenguins replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 1
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build1 -1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.RedRaccoons replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.OrangeOtters replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PinkPikas replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.GreenGoats replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.CyanCougars replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PurplePenguins replicate.timer.build1
execute if score replicate.RedRaccoons replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 2
execute if score replicate.OrangeOtters replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 2
execute if score replicate.PinkPikas replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 2
execute if score replicate.GreenGoats replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 2
execute if score replicate.CyanCougars replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 2
execute if score replicate.PurplePenguins replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 2
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build1 -1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.RedRaccoons replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.OrangeOtters replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PinkPikas replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.GreenGoats replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.CyanCougars replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PurplePenguins replicate.timer.build1
execute if score replicate.RedRaccoons replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 3
execute if score replicate.OrangeOtters replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 3
execute if score replicate.PinkPikas replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 3
execute if score replicate.GreenGoats replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 3
execute if score replicate.CyanCougars replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 3
execute if score replicate.PurplePenguins replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 3
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build1 -1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.RedRaccoons replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.OrangeOtters replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PinkPikas replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.GreenGoats replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.CyanCougars replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PurplePenguins replicate.timer.build1
execute if score replicate.RedRaccoons replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 4
execute if score replicate.OrangeOtters replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 4
execute if score replicate.PinkPikas replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 4
execute if score replicate.GreenGoats replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 4
execute if score replicate.CyanCougars replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 4
execute if score replicate.PurplePenguins replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 4
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build1 -1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.RedRaccoons replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.OrangeOtters replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PinkPikas replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.GreenGoats replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.CyanCougars replicate.timer.build1
scoreboard players operation $replicate.highest replicate.timer.build1 < replicate.PurplePenguins replicate.timer.build1
execute if score replicate.RedRaccoons replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 5
execute if score replicate.OrangeOtters replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 5
execute if score replicate.PinkPikas replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PinkPikas replicate.points.rank.build1 5
execute if score replicate.GreenGoats replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.GreenGoats replicate.points.rank.build1 5
execute if score replicate.CyanCougars replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.CyanCougars replicate.points.rank.build1 5
execute if score replicate.PurplePenguins replicate.timer.build1 = $replicate.highest replicate.timer.build1 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 5
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# BUILD 2
scoreboard objectives add replicate.points.rank.build2 dummy

scoreboard players set $replicate.highest replicate.timer.build2 -1
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.RedRaccoons replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.OrangeOtters replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PinkPikas replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.GreenGoats replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.CyanCougars replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PurplePenguins replicate.timer.build2
execute if score replicate.RedRaccoons replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 1
execute if score replicate.OrangeOtters replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 1
execute if score replicate.PinkPikas replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 1
execute if score replicate.GreenGoats replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 1
execute if score replicate.CyanCougars replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 1
execute if score replicate.PurplePenguins replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 1
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build2 -1
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.RedRaccoons replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.OrangeOtters replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PinkPikas replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.GreenGoats replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.CyanCougars replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PurplePenguins replicate.timer.build2
execute if score replicate.RedRaccoons replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 2
execute if score replicate.OrangeOtters replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 2
execute if score replicate.PinkPikas replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 2
execute if score replicate.GreenGoats replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 2
execute if score replicate.CyanCougars replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 2
execute if score replicate.PurplePenguins replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 2
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build2 -1
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.RedRaccoons replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.OrangeOtters replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PinkPikas replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.GreenGoats replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.CyanCougars replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PurplePenguins replicate.timer.build2
execute if score replicate.RedRaccoons replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 3
execute if score replicate.OrangeOtters replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 3
execute if score replicate.PinkPikas replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 3
execute if score replicate.GreenGoats replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 3
execute if score replicate.CyanCougars replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 3
execute if score replicate.PurplePenguins replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 3
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build2 -1
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.RedRaccoons replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.OrangeOtters replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PinkPikas replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.GreenGoats replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.CyanCougars replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PurplePenguins replicate.timer.build2
execute if score replicate.RedRaccoons replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 4
execute if score replicate.OrangeOtters replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 4
execute if score replicate.PinkPikas replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 4
execute if score replicate.GreenGoats replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 4
execute if score replicate.CyanCougars replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 4
execute if score replicate.PurplePenguins replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 4
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build2 -1
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.RedRaccoons replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.OrangeOtters replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PinkPikas replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.GreenGoats replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.CyanCougars replicate.timer.build2
scoreboard players operation $replicate.highest replicate.timer.build2 < replicate.PurplePenguins replicate.timer.build2
execute if score replicate.RedRaccoons replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 5
execute if score replicate.OrangeOtters replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 5
execute if score replicate.PinkPikas replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PinkPikas replicate.points.rank.build2 5
execute if score replicate.GreenGoats replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.GreenGoats replicate.points.rank.build2 5
execute if score replicate.CyanCougars replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.CyanCougars replicate.points.rank.build2 5
execute if score replicate.PurplePenguins replicate.timer.build2 = $replicate.highest replicate.timer.build2 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 5
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# BUILD 3
scoreboard objectives add replicate.points.rank.build3 dummy

scoreboard players set $replicate.highest replicate.timer.build3 -1
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.RedRaccoons replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.OrangeOtters replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PinkPikas replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.GreenGoats replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.CyanCougars replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PurplePenguins replicate.timer.build3
execute if score replicate.RedRaccoons replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 1
execute if score replicate.OrangeOtters replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 1
execute if score replicate.PinkPikas replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 1
execute if score replicate.GreenGoats replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 1
execute if score replicate.CyanCougars replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 1
execute if score replicate.PurplePenguins replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 1
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build3 -1
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.RedRaccoons replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.OrangeOtters replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PinkPikas replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.GreenGoats replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.CyanCougars replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PurplePenguins replicate.timer.build3
execute if score replicate.RedRaccoons replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 2
execute if score replicate.OrangeOtters replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 2
execute if score replicate.PinkPikas replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 2
execute if score replicate.GreenGoats replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 2
execute if score replicate.CyanCougars replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 2
execute if score replicate.PurplePenguins replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 2
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build3 -1
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.RedRaccoons replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.OrangeOtters replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PinkPikas replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.GreenGoats replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.CyanCougars replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PurplePenguins replicate.timer.build3
execute if score replicate.RedRaccoons replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 3
execute if score replicate.OrangeOtters replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 3
execute if score replicate.PinkPikas replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 3
execute if score replicate.GreenGoats replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 3
execute if score replicate.CyanCougars replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 3
execute if score replicate.PurplePenguins replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 3
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build3 -1
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.RedRaccoons replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.OrangeOtters replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PinkPikas replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.GreenGoats replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.CyanCougars replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PurplePenguins replicate.timer.build3
execute if score replicate.RedRaccoons replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 4
execute if score replicate.OrangeOtters replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 4
execute if score replicate.PinkPikas replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 4
execute if score replicate.GreenGoats replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 4
execute if score replicate.CyanCougars replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 4
execute if score replicate.PurplePenguins replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 4
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build3 -1
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.RedRaccoons replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.OrangeOtters replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PinkPikas replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.GreenGoats replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.CyanCougars replicate.timer.build3
scoreboard players operation $replicate.highest replicate.timer.build3 < replicate.PurplePenguins replicate.timer.build3
execute if score replicate.RedRaccoons replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 5
execute if score replicate.OrangeOtters replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 5
execute if score replicate.PinkPikas replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PinkPikas replicate.points.rank.build3 5
execute if score replicate.GreenGoats replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.GreenGoats replicate.points.rank.build3 5
execute if score replicate.CyanCougars replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.CyanCougars replicate.points.rank.build3 5
execute if score replicate.PurplePenguins replicate.timer.build3 = $replicate.highest replicate.timer.build3 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 5
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# BUILD 4
scoreboard objectives add replicate.points.rank.build4 dummy

scoreboard players set $replicate.highest replicate.timer.build4 -1
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.RedRaccoons replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.OrangeOtters replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PinkPikas replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.GreenGoats replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.CyanCougars replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PurplePenguins replicate.timer.build4
execute if score replicate.RedRaccoons replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 1
execute if score replicate.OrangeOtters replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 1
execute if score replicate.PinkPikas replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 1
execute if score replicate.GreenGoats replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 1
execute if score replicate.CyanCougars replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 1
execute if score replicate.PurplePenguins replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 1
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build4 -1
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.RedRaccoons replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.OrangeOtters replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PinkPikas replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.GreenGoats replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.CyanCougars replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PurplePenguins replicate.timer.build4
execute if score replicate.RedRaccoons replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 2
execute if score replicate.OrangeOtters replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 2
execute if score replicate.PinkPikas replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 2
execute if score replicate.GreenGoats replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 2
execute if score replicate.CyanCougars replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 2
execute if score replicate.PurplePenguins replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 2
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build4 -1
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.RedRaccoons replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.OrangeOtters replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PinkPikas replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.GreenGoats replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.CyanCougars replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PurplePenguins replicate.timer.build4
execute if score replicate.RedRaccoons replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 3
execute if score replicate.OrangeOtters replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 3
execute if score replicate.PinkPikas replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 3
execute if score replicate.GreenGoats replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 3
execute if score replicate.CyanCougars replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 3
execute if score replicate.PurplePenguins replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 3
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build4 -1
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.RedRaccoons replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.OrangeOtters replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PinkPikas replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.GreenGoats replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.CyanCougars replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PurplePenguins replicate.timer.build4
execute if score replicate.RedRaccoons replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 4
execute if score replicate.OrangeOtters replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 4
execute if score replicate.PinkPikas replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 4
execute if score replicate.GreenGoats replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 4
execute if score replicate.CyanCougars replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 4
execute if score replicate.PurplePenguins replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 4
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build4 -1
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.RedRaccoons replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.OrangeOtters replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PinkPikas replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.GreenGoats replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.CyanCougars replicate.timer.build4
scoreboard players operation $replicate.highest replicate.timer.build4 < replicate.PurplePenguins replicate.timer.build4
execute if score replicate.RedRaccoons replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 5
execute if score replicate.OrangeOtters replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 5
execute if score replicate.PinkPikas replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PinkPikas replicate.points.rank.build4 5
execute if score replicate.GreenGoats replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.GreenGoats replicate.points.rank.build4 5
execute if score replicate.CyanCougars replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.CyanCougars replicate.points.rank.build4 5
execute if score replicate.PurplePenguins replicate.timer.build4 = $replicate.highest replicate.timer.build4 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 5
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# BUILD 5
scoreboard objectives add replicate.points.rank.build5 dummy

scoreboard players set $replicate.highest replicate.timer.build5 -1
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.RedRaccoons replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.OrangeOtters replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PinkPikas replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.GreenGoats replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.CyanCougars replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PurplePenguins replicate.timer.build5
execute if score replicate.RedRaccoons replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 1
execute if score replicate.OrangeOtters replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 1
execute if score replicate.PinkPikas replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 1
execute if score replicate.GreenGoats replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 1
execute if score replicate.CyanCougars replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 1
execute if score replicate.PurplePenguins replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 1
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build5 -1
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.RedRaccoons replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.OrangeOtters replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PinkPikas replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.GreenGoats replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.CyanCougars replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PurplePenguins replicate.timer.build5
execute if score replicate.RedRaccoons replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 2
execute if score replicate.OrangeOtters replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 2
execute if score replicate.PinkPikas replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 2
execute if score replicate.GreenGoats replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 2
execute if score replicate.CyanCougars replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 2
execute if score replicate.PurplePenguins replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 2
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build5 -1
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.RedRaccoons replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.OrangeOtters replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PinkPikas replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.GreenGoats replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.CyanCougars replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PurplePenguins replicate.timer.build5
execute if score replicate.RedRaccoons replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 3
execute if score replicate.OrangeOtters replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 3
execute if score replicate.PinkPikas replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 3
execute if score replicate.GreenGoats replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 3
execute if score replicate.CyanCougars replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 3
execute if score replicate.PurplePenguins replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 3
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build5 -1
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.RedRaccoons replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.OrangeOtters replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PinkPikas replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.GreenGoats replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.CyanCougars replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PurplePenguins replicate.timer.build5
execute if score replicate.RedRaccoons replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 4
execute if score replicate.OrangeOtters replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 4
execute if score replicate.PinkPikas replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 4
execute if score replicate.GreenGoats replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 4
execute if score replicate.CyanCougars replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 4
execute if score replicate.PurplePenguins replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 4
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build5 -1
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.RedRaccoons replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.OrangeOtters replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PinkPikas replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.GreenGoats replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.CyanCougars replicate.timer.build5
scoreboard players operation $replicate.highest replicate.timer.build5 < replicate.PurplePenguins replicate.timer.build5
execute if score replicate.RedRaccoons replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 5
execute if score replicate.OrangeOtters replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 5
execute if score replicate.PinkPikas replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PinkPikas replicate.points.rank.build5 5
execute if score replicate.GreenGoats replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.GreenGoats replicate.points.rank.build5 5
execute if score replicate.CyanCougars replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.CyanCougars replicate.points.rank.build5 5
execute if score replicate.PurplePenguins replicate.timer.build5 = $replicate.highest replicate.timer.build5 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 5
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# BUILD 6
scoreboard objectives add replicate.points.rank.build6 dummy

scoreboard players set $replicate.highest replicate.timer.build6 -1
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.RedRaccoons replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.OrangeOtters replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PinkPikas replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.GreenGoats replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.CyanCougars replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PurplePenguins replicate.timer.build6
execute if score replicate.RedRaccoons replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 1
execute if score replicate.OrangeOtters replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 1
execute if score replicate.PinkPikas replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 1
execute if score replicate.GreenGoats replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 1
execute if score replicate.CyanCougars replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 1
execute if score replicate.PurplePenguins replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 1
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 1 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 1 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 1 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 1 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 1 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 1 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build6 -1
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.RedRaccoons replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.OrangeOtters replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PinkPikas replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.GreenGoats replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.CyanCougars replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PurplePenguins replicate.timer.build6
execute if score replicate.RedRaccoons replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 2
execute if score replicate.OrangeOtters replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 2
execute if score replicate.PinkPikas replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 2
execute if score replicate.GreenGoats replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 2
execute if score replicate.CyanCougars replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 2
execute if score replicate.PurplePenguins replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 2
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 2 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 2 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 2 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 2 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 2 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 2 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build6 -1
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.RedRaccoons replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.OrangeOtters replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PinkPikas replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.GreenGoats replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.CyanCougars replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PurplePenguins replicate.timer.build6
execute if score replicate.RedRaccoons replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 3
execute if score replicate.OrangeOtters replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 3
execute if score replicate.PinkPikas replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 3
execute if score replicate.GreenGoats replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 3
execute if score replicate.CyanCougars replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 3
execute if score replicate.PurplePenguins replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 3
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 3 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 3 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 3 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 3 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 3 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 3 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build6 -1
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.RedRaccoons replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.OrangeOtters replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PinkPikas replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.GreenGoats replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.CyanCougars replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PurplePenguins replicate.timer.build6
execute if score replicate.RedRaccoons replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 4
execute if score replicate.OrangeOtters replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 4
execute if score replicate.PinkPikas replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 4
execute if score replicate.GreenGoats replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 4
execute if score replicate.CyanCougars replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 4
execute if score replicate.PurplePenguins replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 4
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 4 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 4 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 4 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 4 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 4 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 4 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

scoreboard players set $replicate.highest replicate.timer.build6 -1
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.RedRaccoons replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.OrangeOtters replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PinkPikas replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.GreenGoats replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.CyanCougars replicate.timer.build6
scoreboard players operation $replicate.highest replicate.timer.build6 < replicate.PurplePenguins replicate.timer.build6
execute if score replicate.RedRaccoons replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 5
execute if score replicate.OrangeOtters replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 5
execute if score replicate.PinkPikas replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PinkPikas replicate.points.rank.build6 5
execute if score replicate.GreenGoats replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.GreenGoats replicate.points.rank.build6 5
execute if score replicate.CyanCougars replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.CyanCougars replicate.points.rank.build6 5
execute if score replicate.PurplePenguins replicate.timer.build6 = $replicate.highest replicate.timer.build6 run scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 5
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 5 run scoreboard players set replicate.RedRaccoons replicate.timer.builds 4800
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 5 run scoreboard players set replicate.OrangeOtters replicate.timer.builds 4800
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 5 run scoreboard players set replicate.PinkPikas replicate.timer.builds 4800
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 5 run scoreboard players set replicate.GreenGoats replicate.timer.builds 4800
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 5 run scoreboard players set replicate.CyanCougars replicate.timer.builds 4800
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 5 run scoreboard players set replicate.PurplePenguins replicate.timer.builds 4800

# <===== POINTS =====<

# overall placement
# 1st place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "1st.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 2nd place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.PinkPikas replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.GreenGoats replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.CyanCougars replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "2nd.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 3rd place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.PinkPikas replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.GreenGoats replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.CyanCougars replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "3rd.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 4th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.PinkPikas replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.GreenGoats replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.CyanCougars replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "4th.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 5th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.PinkPikas replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.GreenGoats replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.CyanCougars replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "5th.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 6th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 6 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 6 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 6 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 6 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 6 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 6 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "6th.", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# by build placement
tellraw @a " "
tellraw @a ["",{"text": "Build Placements", "color": "aqua"}]

# build 1
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 2
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 3
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 4
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 5
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 6
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2