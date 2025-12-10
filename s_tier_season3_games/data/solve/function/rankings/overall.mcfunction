# Helper function for calculate_rankings
# determines rankings for all room overall

# Determine Rank #1:

# store values in a temporary place
scoreboard objectives add solve.timer.overall.temp dummy
scoreboard players operation solve.RedRaccoons solve.timer.overall.temp = solve.RedRaccoons solve.timer.game
scoreboard players operation solve.OrangeOtters solve.timer.overall.temp = solve.OrangeOtters solve.timer.game
scoreboard players operation solve.PinkPikas solve.timer.overall.temp = solve.PinkPikas solve.timer.game
scoreboard players operation solve.YellowYaks solve.timer.overall.temp = solve.YellowYaks solve.timer.game
scoreboard players operation solve.GreenGoats solve.timer.overall.temp = solve.GreenGoats solve.timer.game
scoreboard players operation solve.CyanCougars solve.timer.overall.temp = solve.CyanCougars solve.timer.game
scoreboard players operation solve.PurplePenguins solve.timer.overall.temp = solve.PurplePenguins solve.timer.game
scoreboard players operation solve.BlueBears solve.timer.overall.temp = solve.BlueBears solve.timer.game

# then reset ranks
scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank -1
scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank -1
scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank -1
scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank -1
scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank -1
scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank -1
scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank -1
scoreboard players set solve.BlueBears solve.timer.game.rooms.rank -1

# if we haven't completed all builds, set incomplete
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 9
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 9
execute if score solve.PinkPikas solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 9
execute if score solve.YellowYaks solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 9
execute if score solve.GreenGoats solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 9
execute if score solve.CyanCougars solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 9
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 9
execute if score solve.BlueBears solve.stats.roomsCompleted matches ..3 run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 9

# if any values are 0, set them to the max
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 9 run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

# set our lowest value to the max time
scoreboard players set $solve.lowest solve.timer.overall.temp 14401

# determine lowest value
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp

# determine which team has that lowest value & give them the next rank up
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 1
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 1

# and reset the time of whichever team was just awarded a rank (to ensure they don't get double ranked)
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

# and repeat for each rank 2-8
scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 2
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 2
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 3
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 3
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 4
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 4
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 5
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 5
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 6
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 6
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 7
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 7
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402

scoreboard players set $solve.lowest solve.timer.overall.temp 14401
execute if score solve.RedRaccoons solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp
execute if score solve.OrangeOtters solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp
execute if score solve.PinkPikas solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp
execute if score solve.YellowYaks solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp
execute if score solve.GreenGoats solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp
execute if score solve.CyanCougars solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp
execute if score solve.PurplePenguins solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp
execute if score solve.BlueBears solve.timer.overall.temp < $solve.lowest solve.timer.overall.temp run \
        scoreboard players operation $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp
execute if score $solve.lowest solve.timer.overall.temp = solve.RedRaccoons solve.timer.overall.temp run \
        scoreboard players set solve.RedRaccoons solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.OrangeOtters solve.timer.overall.temp run \
        scoreboard players set solve.OrangeOtters solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.PinkPikas solve.timer.overall.temp run \
        scoreboard players set solve.PinkPikas solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.YellowYaks solve.timer.overall.temp run \
        scoreboard players set solve.YellowYaks solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.GreenGoats solve.timer.overall.temp run \
        scoreboard players set solve.GreenGoats solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.CyanCougars solve.timer.overall.temp run \
        scoreboard players set solve.CyanCougars solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.PurplePenguins solve.timer.overall.temp run \
        scoreboard players set solve.PurplePenguins solve.timer.game.rooms.rank 8
execute if score $solve.lowest solve.timer.overall.temp = solve.BlueBears solve.timer.overall.temp run \
        scoreboard players set solve.BlueBears solve.timer.game.rooms.rank 8
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.RedRaccoons solve.timer.overall.temp 14402
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.OrangeOtters solve.timer.overall.temp 14402
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PinkPikas solve.timer.overall.temp 14402
execute if score solve.YellowYaks solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.YellowYaks solve.timer.overall.temp 14402
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.GreenGoats solve.timer.overall.temp 14402
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.CyanCougars solve.timer.overall.temp 14402
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.PurplePenguins solve.timer.overall.temp 14402
execute if score solve.BlueBears solve.timer.game.rooms.rank matches 1.. run \
        scoreboard players set solve.BlueBears solve.timer.overall.temp 14402
