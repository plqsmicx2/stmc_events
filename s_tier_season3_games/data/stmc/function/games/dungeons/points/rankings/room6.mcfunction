# Helper function for calculate_rankings
# determines rankings for room #1

# Determine Rank #1:

# store values in a temporary place
scoreboard objectives add dungeons.timer.8.temp dummy
scoreboard players operation RED_RACCOONS dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8
scoreboard players operation ORANGE_OTTERS dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8
scoreboard players operation PINK_PIKAS dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8
scoreboard players operation YELLOW_YAKS dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8
scoreboard players operation GREEN_GOATS dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8
scoreboard players operation CYAN_COUGARS dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8
scoreboard players operation PURPLE_PENGUINS dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8
scoreboard players operation BLUE_BEARS dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8

# then reset ranks
scoreboard players set RED_RACCOONS dungeons.timer.8.rank -1
scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank -1
scoreboard players set PINK_PIKAS dungeons.timer.8.rank -1
scoreboard players set YELLOW_YAKS dungeons.timer.8.rank -1
scoreboard players set GREEN_GOATS dungeons.timer.8.rank -1
scoreboard players set CYAN_COUGARS dungeons.timer.8.rank -1
scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank -1
scoreboard players set BLUE_BEARS dungeons.timer.8.rank -1

# if any values are 0, set them to the max
execute unless score RED_RACCOONS dungeons.roomdisplay matches 5.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute unless score ORANGE_OTTERS dungeons.roomdisplay matches 5.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute unless score PINK_PIKAS dungeons.roomdisplay matches 5.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute unless score YELLOW_YAKS dungeons.roomdisplay matches 5.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute unless score GREEN_GOATS dungeons.roomdisplay matches 5.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute unless score CYAN_COUGARS dungeons.roomdisplay matches 5.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute unless score PURPLE_PENGUINS dungeons.roomdisplay matches 5.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute unless score BLUE_BEARS dungeons.roomdisplay matches 5.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

# set our lowest value to the max time
scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001

# determine lowest value
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp

# determine which team has that lowest value & give them the next rank up
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 1
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 1

# and reset the time of whichever team was just awarded a rank (to ensure they don't get double ranked)
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

# and repeat for each rank 2-8
scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 2
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 2
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 3
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 3
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 4
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 4
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 5
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 5
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 6
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 6
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 7
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 7
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002

scoreboard players set $dungeons.lowest dungeons.timer.8.temp 18001
execute if score RED_RACCOONS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp
execute if score ORANGE_OTTERS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp
execute if score PINK_PIKAS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp
execute if score YELLOW_YAKS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp
execute if score GREEN_GOATS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp
execute if score CYAN_COUGARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp
execute if score PURPLE_PENGUINS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp
execute if score BLUE_BEARS dungeons.timer.8.temp < $dungeons.lowest dungeons.timer.8.temp run \
        scoreboard players operation $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp
execute if score $dungeons.lowest dungeons.timer.8.temp = RED_RACCOONS dungeons.timer.8.temp run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = ORANGE_OTTERS dungeons.timer.8.temp run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = PINK_PIKAS dungeons.timer.8.temp run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = YELLOW_YAKS dungeons.timer.8.temp run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = GREEN_GOATS dungeons.timer.8.temp run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = CYAN_COUGARS dungeons.timer.8.temp run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = PURPLE_PENGUINS dungeons.timer.8.temp run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.rank 8
execute if score $dungeons.lowest dungeons.timer.8.temp = BLUE_BEARS dungeons.timer.8.temp run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.rank 8
execute if score RED_RACCOONS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set RED_RACCOONS dungeons.timer.8.temp 18002
execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set ORANGE_OTTERS dungeons.timer.8.temp 18002
execute if score PINK_PIKAS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PINK_PIKAS dungeons.timer.8.temp 18002
execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set YELLOW_YAKS dungeons.timer.8.temp 18002
execute if score GREEN_GOATS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set GREEN_GOATS dungeons.timer.8.temp 18002
execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set CYAN_COUGARS dungeons.timer.8.temp 18002
execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set PURPLE_PENGUINS dungeons.timer.8.temp 18002
execute if score BLUE_BEARS dungeons.timer.8.rank matches 1.. run \
        scoreboard players set BLUE_BEARS dungeons.timer.8.temp 18002
