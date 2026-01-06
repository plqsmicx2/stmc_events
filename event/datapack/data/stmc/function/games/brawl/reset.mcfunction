# reset function for brawl

# handle important resets
effect clear @a
clear @a
execute as @a run attribute @s block_break_speed base set 1
execute in stmc:brawl/main run forceload remove -25 -25 25 25

# set player points
function stmc:games/brawl/helper/points/points_update
execute as @a if score stmc.handler event.stage matches 1 run scoreboard players operation @s stats.points.indiv.g1 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 3 run scoreboard players operation @s stats.points.indiv.g2 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 5 run scoreboard players operation @s stats.points.indiv.g3 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 7 run scoreboard players operation @s stats.points.indiv.g4 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 9 run scoreboard players operation @s stats.points.indiv.g5 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 11 run scoreboard players operation @s stats.points.indiv.g6 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 13 run scoreboard players operation @s stats.points.indiv.g7 = @s brawl.points.indiv
execute as @a if score stmc.handler event.stage matches 15 run scoreboard players operation @s stats.points.indiv.g8 = @s brawl.points.indiv

# records
execute store result score #record brawl.points.indiv run data get storage stmc:records brawl.points.value 1
execute as @a if score @s brawl.points.indiv > #record brawl.points.indiv as @s run function stmc:games/brawl/helper/records/update_indiv

execute store result score #record brawl.kills run data get storage stmc:records brawl.kills.value 1
execute as @a if score @s brawl.kills > #record brawl.kills as @s run function stmc:games/brawl/helper/records/update_kills

# move to next stage
execute unless score stmc.handler event.stage matches 15 run function stmc:lobby/between/start
execute if score stmc.handler event.stage matches 15 run function stmc:lobby/final/start