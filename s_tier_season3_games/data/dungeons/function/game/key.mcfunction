
#use key to break glass
execute as @a if items entity @s hotbar.* trial_key at @s store success score @s dungeons.glass run fill ~-20 ~-3 ~3 ~20 ~4 ~3 air replace tinted_glass
execute as @a[scores={dungeons.glass=1..}] if items entity @s hotbar.* trial_key at @s run playsound block.glass.break block @a ~ ~ ~3 .5 .9 0

execute as @a[scores={dungeons.glass=1..}] run clear @s trial_key 1

#progress room
execute as @a[scores={dungeons.glass=1..},team=BLUE_BEARS] run scoreboard players add BLUE_BEARS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=RED_RACCOONS] run scoreboard players add RED_RACCOONS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=CYAN_COUGARS] run scoreboard players add CYAN_COUGARS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=GREEN_GOATS] run scoreboard players add GREEN_GOATS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=PURPLE_PENGUINS] run scoreboard players add PURPLE_PENGUINS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=ORANGE_OTTERS] run scoreboard players add ORANGE_OTTERS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=YELLOW_YAKS] run scoreboard players add YELLOW_YAKS dungeons.room 1
execute as @a[scores={dungeons.glass=1..},team=PINK_PIKAS] run scoreboard players add PINK_PIKAS dungeons.room 1

#display progress
execute if entity @a[scores={dungeons.glass=1..}] run function dungeons/game/display/room_1
execute if entity @a[scores={dungeons.glass=1..}] run function dungeons/game/display/room_2
execute if entity @a[scores={dungeons.glass=1..}] run function dungeons/game/display/room_3
execute if entity @a[scores={dungeons.glass=1..}] run function dungeons/game/display/room_4
execute if entity @a[scores={dungeons.glass=1..}] run function dungeons/game/display/room_5
#room 6 in end

scoreboard players reset @a dungeons.glass