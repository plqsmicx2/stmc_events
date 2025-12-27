# helper function that starts dungeons
# this function is run independently
# the function standardizes all values for players

# reset effects
effect clear @a
effect give @a saturation 1 255 true
effect give @a instant_health 1 110 true

# allow game to run
gamerule spawn_mobs true

# force gamemode
gamemode adventure @a

# give items
item replace entity @a hotbar.0 with wooden_sword[unbreakable={}]
item replace entity @a hotbar.8 with lantern

# clear mobs
execute in stmc:dungeons run kill @e[type=!player]

# announce start
title @a title {"text":"Go!", "color":"dark_red"}

# start games
scoreboard players set dungeons.handler dungeons.stage 3