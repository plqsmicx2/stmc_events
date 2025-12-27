# Helper function for calculate_rankings
# determines rankings for all room overall

# Determine Rank #1:

function stmc:games/dungeons/points/rankings/sum_room_times

# store values in a temporary place
scoreboard objectives add dungeons.timer.overall.temp dummy
scoreboard players operation RED_RACCOONS dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall
scoreboard players operation ORANGE_OTTERS dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall
scoreboard players operation PINK_PIKAS dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall
scoreboard players operation YELLOW_YAKS dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall
scoreboard players operation GREEN_GOATS dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall
scoreboard players operation CYAN_COUGARS dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall
scoreboard players operation PURPLE_PENGUINS dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall
scoreboard players operation BLUE_BEARS dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall

# then reset ranks
scoreboard players set RED_RACCOONS dungeons.timer.overall.rank -1
scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank -1
scoreboard players set PINK_PIKAS dungeons.timer.overall.rank -1
scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank -1
scoreboard players set GREEN_GOATS dungeons.timer.overall.rank -1
scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank -1
scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank -1
scoreboard players set BLUE_BEARS dungeons.timer.overall.rank -1

# if we haven't completed all builds, set incomplete
execute if score RED_RACCOONS dungeons.roomdisplay matches ..5 run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 9
execute if score ORANGE_OTTERS dungeons.roomdisplay matches ..5 run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 9
execute if score PINK_PIKAS dungeons.roomdisplay matches ..5 run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 9
execute if score YELLOW_YAKS dungeons.roomdisplay matches ..5 run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 9
execute if score GREEN_GOATS dungeons.roomdisplay matches ..5 run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 9
execute if score CYAN_COUGARS dungeons.roomdisplay matches ..5 run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 9
execute if score PURPLE_PENGUINS dungeons.roomdisplay matches ..5 run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 9
execute if score BLUE_BEARS dungeons.roomdisplay matches ..5 run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 9

# if any values are 0, set them to the max
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 9 run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

# set our lowest value to the max time
scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401

# determine lowest value
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp

# determine which team has that lowest value & give them the next rank up
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 1
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 1

# and reset the time of whichever team was just awarded a rank (to ensure they don't get double ranked)
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

# and repeat for each rank 2-8
scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 2
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 2
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 3
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 3
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 4
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 4
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 5
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 5
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 6
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 6
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 7
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 7
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402

scoreboard players set $dungeons.lowest dungeons.timer.overall.temp 14401
execute if score RED_RACCOONS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp
execute if score ORANGE_OTTERS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp
execute if score PINK_PIKAS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp
execute if score YELLOW_YAKS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp
execute if score GREEN_GOATS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp
execute if score CYAN_COUGARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp
execute if score PURPLE_PENGUINS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp
execute if score BLUE_BEARS dungeons.timer.overall.temp < $dungeons.lowest dungeons.timer.overall.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp
execute if score $dungeons.lowest dungeons.timer.overall.temp = RED_RACCOONS dungeons.timer.overall.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = ORANGE_OTTERS dungeons.timer.overall.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = PINK_PIKAS dungeons.timer.overall.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = YELLOW_YAKS dungeons.timer.overall.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = GREEN_GOATS dungeons.timer.overall.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = CYAN_COUGARS dungeons.timer.overall.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = PURPLE_PENGUINS dungeons.timer.overall.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.rank 8
execute if score $dungeons.lowest dungeons.timer.overall.temp = BLUE_BEARS dungeons.timer.overall.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.rank 8
execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.overall.temp 14402
execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.overall.temp 14402
execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.overall.temp 14402
execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.overall.temp 14402
execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.overall.temp 14402
execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.overall.temp 14402
execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.overall.temp 14402
execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.overall.temp 14402
