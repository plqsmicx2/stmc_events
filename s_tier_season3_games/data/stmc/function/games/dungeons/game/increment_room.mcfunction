# helper function that increments the room of a team
# run independently

# Wither Skeleton [5] -> Wither [8]
execute as @a[team=RED_RACCOONS] if score @s dungeons.glass matches 1.. \
        if score RED_RACCOONS dungeons.room matches 5 run scoreboard players set RED_RACCOONS dungeons.room 8
execute as @a[team=ORANGE_OTTERS] if score @s dungeons.glass matches 1.. \
        if score ORANGE_OTTERS dungeons.room matches 5 run scoreboard players set ORANGE_OTTERS dungeons.room 8
execute as @a[team=PINK_PIKAS] if score @s dungeons.glass matches 1.. \
        if score PINK_PIKAS dungeons.room matches 5 run scoreboard players set PINK_PIKAS dungeons.room 8
execute as @a[team=YELLOW_YAKS] if score @s dungeons.glass matches 1.. \
        if score YELLOW_YAKS dungeons.room matches 5 run scoreboard players set YELLOW_YAKS dungeons.room 8
execute as @a[team=GREEN_GOATS] if score @s dungeons.glass matches 1.. \
        if score GREEN_GOATS dungeons.room matches 5 run scoreboard players set GREEN_GOATS dungeons.room 8
execute as @a[team=CYAN_COUGARS] if score @s dungeons.glass matches 1.. \
        if score CYAN_COUGARS dungeons.room matches 5 run scoreboard players set CYAN_COUGARS dungeons.room 8
execute as @a[team=PURPLE_PENGUINS] if score @s dungeons.glass matches 1.. \
        if score PURPLE_PENGUINS dungeons.room matches 5 run scoreboard players set PURPLE_PENGUINS dungeons.room 8
execute as @a[team=BLUE_BEARS] if score @s dungeons.glass matches 1.. \
        if score BLUE_BEARS dungeons.room matches 5 run scoreboard players set BLUE_BEARS dungeons.room 8

# Blaze [4] -> Wither Skeleton [5]
execute as @a[team=RED_RACCOONS] if score @s dungeons.glass matches 1.. \
        if score RED_RACCOONS dungeons.room matches 4 run scoreboard players set RED_RACCOONS dungeons.room 5
execute as @a[team=ORANGE_OTTERS] if score @s dungeons.glass matches 1.. \
        if score ORANGE_OTTERS dungeons.room matches 4 run scoreboard players set ORANGE_OTTERS dungeons.room 5
execute as @a[team=PINK_PIKAS] if score @s dungeons.glass matches 1.. \
        if score PINK_PIKAS dungeons.room matches 4 run scoreboard players set PINK_PIKAS dungeons.room 5
execute as @a[team=YELLOW_YAKS] if score @s dungeons.glass matches 1.. \
        if score YELLOW_YAKS dungeons.room matches 4 run scoreboard players set YELLOW_YAKS dungeons.room 5
execute as @a[team=GREEN_GOATS] if score @s dungeons.glass matches 1.. \
        if score GREEN_GOATS dungeons.room matches 4 run scoreboard players set GREEN_GOATS dungeons.room 5
execute as @a[team=CYAN_COUGARS] if score @s dungeons.glass matches 1.. \
        if score CYAN_COUGARS dungeons.room matches 4 run scoreboard players set CYAN_COUGARS dungeons.room 5
execute as @a[team=PURPLE_PENGUINS] if score @s dungeons.glass matches 1.. \
        if score PURPLE_PENGUINS dungeons.room matches 4 run scoreboard players set PURPLE_PENGUINS dungeons.room 5
execute as @a[team=BLUE_BEARS] if score @s dungeons.glass matches 1.. \
        if score BLUE_BEARS dungeons.room matches 4 run scoreboard players set BLUE_BEARS dungeons.room 5

# Cave Spider [3] -> Blaze [4]
execute as @a[team=RED_RACCOONS] if score @s dungeons.glass matches 1.. \
        if score RED_RACCOONS dungeons.room matches 3 run scoreboard players set RED_RACCOONS dungeons.room 4
execute as @a[team=ORANGE_OTTERS] if score @s dungeons.glass matches 1.. \
        if score ORANGE_OTTERS dungeons.room matches 3 run scoreboard players set ORANGE_OTTERS dungeons.room 4
execute as @a[team=PINK_PIKAS] if score @s dungeons.glass matches 1.. \
        if score PINK_PIKAS dungeons.room matches 3 run scoreboard players set PINK_PIKAS dungeons.room 4
execute as @a[team=YELLOW_YAKS] if score @s dungeons.glass matches 1.. \
        if score YELLOW_YAKS dungeons.room matches 3 run scoreboard players set YELLOW_YAKS dungeons.room 4
execute as @a[team=GREEN_GOATS] if score @s dungeons.glass matches 1.. \
        if score GREEN_GOATS dungeons.room matches 3 run scoreboard players set GREEN_GOATS dungeons.room 4
execute as @a[team=CYAN_COUGARS] if score @s dungeons.glass matches 1.. \
        if score CYAN_COUGARS dungeons.room matches 3 run scoreboard players set CYAN_COUGARS dungeons.room 4
execute as @a[team=PURPLE_PENGUINS] if score @s dungeons.glass matches 1.. \
        if score PURPLE_PENGUINS dungeons.room matches 3 run scoreboard players set PURPLE_PENGUINS dungeons.room 4
execute as @a[team=BLUE_BEARS] if score @s dungeons.glass matches 1.. \
        if score BLUE_BEARS dungeons.room matches 3 run scoreboard players set BLUE_BEARS dungeons.room 4

# Skeleton [1] -> Cave Spider [3]
execute as @a[team=RED_RACCOONS] if score @s dungeons.glass matches 1.. \
        if score RED_RACCOONS dungeons.room matches 1 run scoreboard players set RED_RACCOONS dungeons.room 3
execute as @a[team=ORANGE_OTTERS] if score @s dungeons.glass matches 1.. \
        if score ORANGE_OTTERS dungeons.room matches 1 run scoreboard players set ORANGE_OTTERS dungeons.room 3
execute as @a[team=PINK_PIKAS] if score @s dungeons.glass matches 1.. \
        if score PINK_PIKAS dungeons.room matches 1 run scoreboard players set PINK_PIKAS dungeons.room 3
execute as @a[team=YELLOW_YAKS] if score @s dungeons.glass matches 1.. \
        if score YELLOW_YAKS dungeons.room matches 1 run scoreboard players set YELLOW_YAKS dungeons.room 3
execute as @a[team=GREEN_GOATS] if score @s dungeons.glass matches 1.. \
        if score GREEN_GOATS dungeons.room matches 1 run scoreboard players set GREEN_GOATS dungeons.room 3
execute as @a[team=CYAN_COUGARS] if score @s dungeons.glass matches 1.. \
        if score CYAN_COUGARS dungeons.room matches 1 run scoreboard players set CYAN_COUGARS dungeons.room 3
execute as @a[team=PURPLE_PENGUINS] if score @s dungeons.glass matches 1.. \
        if score PURPLE_PENGUINS dungeons.room matches 1 run scoreboard players set PURPLE_PENGUINS dungeons.room 3
execute as @a[team=BLUE_BEARS] if score @s dungeons.glass matches 1.. \
        if score BLUE_BEARS dungeons.room matches 1 run scoreboard players set BLUE_BEARS dungeons.room 3

# Zombie [0] -> Skeleton [1]
execute as @a[team=RED_RACCOONS] if score @s dungeons.glass matches 1.. \
        if score RED_RACCOONS dungeons.room matches 0 run scoreboard players set RED_RACCOONS dungeons.room 1
execute as @a[team=ORANGE_OTTERS] if score @s dungeons.glass matches 1.. \
        if score ORANGE_OTTERS dungeons.room matches 0 run scoreboard players set ORANGE_OTTERS dungeons.room 1
execute as @a[team=PINK_PIKAS] if score @s dungeons.glass matches 1.. \
        if score PINK_PIKAS dungeons.room matches 0 run scoreboard players set PINK_PIKAS dungeons.room 1
execute as @a[team=YELLOW_YAKS] if score @s dungeons.glass matches 1.. \
        if score YELLOW_YAKS dungeons.room matches 0 run scoreboard players set YELLOW_YAKS dungeons.room 1
execute as @a[team=GREEN_GOATS] if score @s dungeons.glass matches 1.. \
        if score GREEN_GOATS dungeons.room matches 0 run scoreboard players set GREEN_GOATS dungeons.room 1
execute as @a[team=CYAN_COUGARS] if score @s dungeons.glass matches 1.. \
        if score CYAN_COUGARS dungeons.room matches 0 run scoreboard players set CYAN_COUGARS dungeons.room 1
execute as @a[team=PURPLE_PENGUINS] if score @s dungeons.glass matches 1.. \
        if score PURPLE_PENGUINS dungeons.room matches 0 run scoreboard players set PURPLE_PENGUINS dungeons.room 1
execute as @a[team=BLUE_BEARS] if score @s dungeons.glass matches 1.. \
        if score BLUE_BEARS dungeons.room matches 0 run scoreboard players set BLUE_BEARS dungeons.room 1
