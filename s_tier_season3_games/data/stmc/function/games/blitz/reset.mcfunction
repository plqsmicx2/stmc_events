# reset function for blitz

# handle important resets
effect clear @a
clear @a
execute in stmc:blitz run forceload remove -200 -200 0 0
execute in stmc:blitz run forceload remove 200 -200 0 0
execute in stmc:blitz run forceload remove -200 200 0 0
execute in stmc:blitz run forceload remove 200 200 0 0
gamerule keep_inventory false
gamerule show_death_messages true

# set player points
function stmc:games/blitz/points/points-update
execute as @a if score stmc.handler event.stage matches 1 run scoreboard players operation @s stats.points.indiv.g1 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 3 run scoreboard players operation @s stats.points.indiv.g2 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 5 run scoreboard players operation @s stats.points.indiv.g3 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 7 run scoreboard players operation @s stats.points.indiv.g4 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 9 run scoreboard players operation @s stats.points.indiv.g5 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 11 run scoreboard players operation @s stats.points.indiv.g6 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 13 run scoreboard players operation @s stats.points.indiv.g7 = @s blitz.points.indiv
execute as @a if score stmc.handler event.stage matches 15 run scoreboard players operation @s stats.points.indiv.g8 = @s blitz.points.indiv

# records
execute store result score #record blitz.points.indiv run data get storage stmc:records blitz.points.value 1
execute as @a if score @s blitz.points.indiv > #record blitz.points.indiv as @s run function stmc:games/blitz/helper/records/update_indiv

# move to next stage
execute unless score stmc.handler event.stage matches 15 run function stmc:lobby/between/start
execute if score stmc.handler event.stage matches 15 run function stmc:lobby/final/start