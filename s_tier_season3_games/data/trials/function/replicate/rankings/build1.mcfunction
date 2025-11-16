# Helper function for calculate_rankings
# determines rankings for build #1

# Determine Rank #1:

# store values in a temporary place
scoreboard objectives add replicate.timer.build1.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1
scoreboard players operation replicate.OrangeOtters replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1
scoreboard players operation replicate.PinkPikas replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1
scoreboard players operation replicate.YellowYaks replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1
scoreboard players operation replicate.GreenGoats replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1
scoreboard players operation replicate.CyanCougars replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1
scoreboard players operation replicate.PurplePenguins replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1
scoreboard players operation replicate.BlueBears replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1

# then reset ranks
scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 -1
scoreboard players set replicate.PinkPikas replicate.points.rank.build1 -1
scoreboard players set replicate.YellowYaks replicate.points.rank.build1 -1
scoreboard players set replicate.GreenGoats replicate.points.rank.build1 -1
scoreboard players set replicate.CyanCougars replicate.points.rank.build1 -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 -1
scoreboard players set replicate.BlueBears replicate.points.rank.build1 -1

# if we haven't completed this build, set incomplete
execute unless score replicate.RedRaccoons replicate.stage matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 9
execute unless score replicate.OrangeOtters replicate.stage matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 9
execute unless score replicate.PinkPikas replicate.stage matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 9
execute unless score replicate.YellowYaks replicate.stage matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 9
execute unless score replicate.GreenGoats replicate.stage matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 9
execute unless score replicate.CyanCougars replicate.stage matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 9
execute unless score replicate.PurplePenguins replicate.stage matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 9
execute unless score replicate.BlueBears replicate.stage matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 9

# if any values are 0, set them to the max
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 9 run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

# set our lowest value to the max time
scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801

# determine lowest value
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp

# determine which team has that lowest value & give them the next rank up
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 1
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 1

# and reset the time of whichever team was just awarded a rank (to ensure they don't get double ranked)
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

# and repeat for each rank 2-8
scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 2
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 2
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 3
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 3
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 4
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 4
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 5
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 5
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 6
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 6
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 7
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 7
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802

scoreboard players set $replicate.lowest replicate.timer.build1.temp 4801
execute if score replicate.RedRaccoons replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp
execute if score replicate.OrangeOtters replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp
execute if score replicate.PinkPikas replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp
execute if score replicate.YellowYaks replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp
execute if score replicate.GreenGoats replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp
execute if score replicate.CyanCougars replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp
execute if score replicate.PurplePenguins replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp
execute if score replicate.BlueBears replicate.timer.build1.temp < $replicate.lowest replicate.timer.build1.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.RedRaccoons replicate.timer.build1.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.OrangeOtters replicate.timer.build1.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PinkPikas replicate.timer.build1.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.YellowYaks replicate.timer.build1.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.GreenGoats replicate.timer.build1.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.CyanCougars replicate.timer.build1.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.PurplePenguins replicate.timer.build1.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 8
execute if score $replicate.lowest replicate.timer.build1.temp = replicate.BlueBears replicate.timer.build1.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.build1 8
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.build1.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.build1.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.build1.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.build1.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.build1.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.build1.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.build1.temp 4802
execute if score replicate.BlueBears replicate.points.rank.build1 matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.build1.temp 4802
