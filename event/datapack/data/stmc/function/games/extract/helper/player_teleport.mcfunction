# helper function that teleports players based on which slot their team is in

# store macro data somewhere more useful
# this is done to ensure the function can be run without the parent build_world
scoreboard objectives add .slot1 dummy
scoreboard objectives add .slot2 dummy
scoreboard objectives add .slot3 dummy
scoreboard objectives add .slot4 dummy
scoreboard objectives add .slot5 dummy
scoreboard objectives add .slot6 dummy
scoreboard objectives add .slot7 dummy
scoreboard objectives add .slot8 dummy
scoreboard objectives add .time dummy
$scoreboard players set .extractData .slot1 $(slot1)
$scoreboard players set .extractData .slot2 $(slot2)
$scoreboard players set .extractData .slot3 $(slot3)
$scoreboard players set .extractData .slot4 $(slot4)
$scoreboard players set .extractData .slot5 $(slot5)
$scoreboard players set .extractData .slot6 $(slot6)
$scoreboard players set .extractData .slot7 $(slot7)
$scoreboard players set .extractData .slot8 $(slot8)
$scoreboard players set .extractData .time $(time)

# slot 1-1
execute in stmc:extract \
        if score .extractData .slot1 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 50
execute in stmc:extract \
        if score .extractData .slot1 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 50

# slot 1-2
execute in stmc:extract \
        if score .extractData .slot2 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 4
execute in stmc:extract \
        if score .extractData .slot2 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 4

# slot 2-1
execute in stmc:extract \
        if score .extractData .slot3 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 110
execute in stmc:extract \
        if score .extractData .slot3 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 110

# slot 2-2
execute in stmc:extract \
        if score .extractData .slot4 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 64
execute in stmc:extract \
        if score .extractData .slot4 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 64

# slot 3-1
execute in stmc:extract \
        if score .extractData .slot5 matches 1 as @a[team=RED_RACCOONS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 3 as @a[team=PINK_PIKAS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 4 as @a[team=YELLOW_YAKS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 5 as @a[team=GREEN_GOATS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 6 as @a[team=CYAN_COUGARS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 0 134 110
execute in stmc:extract \
        if score .extractData .slot5 matches 8 as @a[team=BLUE_BEARS] run tp @s 0 134 110

# slot 3-2
execute in stmc:extract \
        if score .extractData .slot6 matches 1 as @a[team=RED_RACCOONS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 3 as @a[team=PINK_PIKAS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 4 as @a[team=YELLOW_YAKS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 5 as @a[team=GREEN_GOATS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 6 as @a[team=CYAN_COUGARS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 0 134 64
execute in stmc:extract \
        if score .extractData .slot6 matches 8 as @a[team=BLUE_BEARS] run tp @s 0 134 64

# slot 4-1
execute in stmc:extract \
        if score .extractData .slot7 matches 1 as @a[team=RED_RACCOONS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 2 as @a[team=ORANGE_OTTERS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 3 as @a[team=PINK_PIKAS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 4 as @a[team=YELLOW_YAKS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 5 as @a[team=GREEN_GOATS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 6 as @a[team=CYAN_COUGARS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s -50 134 110
execute in stmc:extract \
        if score .extractData .slot7 matches 8 as @a[team=BLUE_BEARS] run tp @s -50 134 110

# slot 4-2
execute in stmc:extract \
        if score .extractData .slot8 matches 1 as @a[team=RED_RACCOONS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 2 as @a[team=ORANGE_OTTERS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 3 as @a[team=PINK_PIKAS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 4 as @a[team=YELLOW_YAKS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 5 as @a[team=GREEN_GOATS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 6 as @a[team=CYAN_COUGARS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s -50 134 64
execute in stmc:extract \
        if score .extractData .slot8 matches 8 as @a[team=BLUE_BEARS] run tp @s -50 134 64
