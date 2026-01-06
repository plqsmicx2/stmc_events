# Helper function for calculate_rankings
# determines rankings for all builds overall

# Determine Rank #1:

# store values in a temporary place
scoreboard objectives add replicate.timer.overall.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.game
scoreboard players operation replicate.OrangeOtters replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.game
scoreboard players operation replicate.PinkPikas replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.game
scoreboard players operation replicate.YellowYaks replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.game
scoreboard players operation replicate.GreenGoats replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.game
scoreboard players operation replicate.CyanCougars replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.game
scoreboard players operation replicate.PurplePenguins replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.game
scoreboard players operation replicate.BlueBears replicate.timer.overall.temp = replicate.BlueBears replicate.timer.game

# then reset ranks
scoreboard players set replicate.RedRaccoons replicate.points.rank.overall -1
scoreboard players set replicate.OrangeOtters replicate.points.rank.overall -1
scoreboard players set replicate.PinkPikas replicate.points.rank.overall -1
scoreboard players set replicate.YellowYaks replicate.points.rank.overall -1
scoreboard players set replicate.GreenGoats replicate.points.rank.overall -1
scoreboard players set replicate.CyanCougars replicate.points.rank.overall -1
scoreboard players set replicate.PurplePenguins replicate.points.rank.overall -1
scoreboard players set replicate.BlueBears replicate.points.rank.overall -1

# if we haven't completed all builds, set incomplete
execute if score replicate.RedRaccoons replicate.stage matches ..5 run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 9
execute if score replicate.OrangeOtters replicate.stage matches ..5 run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 9
execute if score replicate.PinkPikas replicate.stage matches ..5 run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 9
execute if score replicate.YellowYaks replicate.stage matches ..5 run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 9
execute if score replicate.GreenGoats replicate.stage matches ..5 run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 9
execute if score replicate.CyanCougars replicate.stage matches ..5 run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 9
execute if score replicate.PurplePenguins replicate.stage matches ..5 run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 9
execute if score replicate.BlueBears replicate.stage matches ..5 run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 9

# if any values are 0, set them to the max
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 9 run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

# set our lowest value to the max time
scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801

# determine lowest value
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp

# determine which team has that lowest value & give them the next rank up
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 1
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 1

# and reset the time of whichever team was just awarded a rank (to ensure they don't get double ranked)
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

# and repeat for each rank 2-8
scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 2
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 2
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 3
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 3
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 4
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 4
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 5
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 5
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 6
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 6
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 7
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 7
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802

scoreboard players set $replicate.lowest replicate.timer.overall.temp 4801
execute if score replicate.RedRaccoons replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp
execute if score replicate.OrangeOtters replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp
execute if score replicate.PinkPikas replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp
execute if score replicate.YellowYaks replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp
execute if score replicate.GreenGoats replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp
execute if score replicate.CyanCougars replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp
execute if score replicate.PurplePenguins replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp
execute if score replicate.BlueBears replicate.timer.overall.temp < $replicate.lowest replicate.timer.overall.temp run \
        scoreboard players operation $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.RedRaccoons replicate.timer.overall.temp run \
        scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.OrangeOtters replicate.timer.overall.temp run \
        scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PinkPikas replicate.timer.overall.temp run \
        scoreboard players set replicate.PinkPikas replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.YellowYaks replicate.timer.overall.temp run \
        scoreboard players set replicate.YellowYaks replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.GreenGoats replicate.timer.overall.temp run \
        scoreboard players set replicate.GreenGoats replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.CyanCougars replicate.timer.overall.temp run \
        scoreboard players set replicate.CyanCougars replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.PurplePenguins replicate.timer.overall.temp run \
        scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 8
execute if score $replicate.lowest replicate.timer.overall.temp = replicate.BlueBears replicate.timer.overall.temp run \
        scoreboard players set replicate.BlueBears replicate.points.rank.overall 8
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.RedRaccoons replicate.timer.overall.temp 4802
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.OrangeOtters replicate.timer.overall.temp 4802
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PinkPikas replicate.timer.overall.temp 4802
execute if score replicate.YellowYaks replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.YellowYaks replicate.timer.overall.temp 4802
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.GreenGoats replicate.timer.overall.temp 4802
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.CyanCougars replicate.timer.overall.temp 4802
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.PurplePenguins replicate.timer.overall.temp 4802
execute if score replicate.BlueBears replicate.points.rank.overall matches 1.. run \
        scoreboard players set replicate.BlueBears replicate.timer.overall.temp 4802
