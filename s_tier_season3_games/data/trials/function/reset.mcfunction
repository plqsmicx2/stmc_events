# reset function for trials

# important resets
execute as @a run attribute @s max_health base set 22
clear @a
effect clear @a

# record trial points globally
execute if score stmc.handler event.stage matches 1 as @a run scoreboard players operation @s stats.points.indiv.g1 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 3 as @a run scoreboard players operation @s stats.points.indiv.g2 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 5 as @a run scoreboard players operation @s stats.points.indiv.g3 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 7 as @a run scoreboard players operation @s stats.points.indiv.g4 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 9 as @a run scoreboard players operation @s stats.points.indiv.g5 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 11 as @a run scoreboard players operation @s stats.points.indiv.g6 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 13 as @a run scoreboard players operation @s stats.points.indiv.g7 = @s tr.points.indiv
execute if score stmc.handler event.stage matches 15 as @a run scoreboard players operation @s stats.points.indiv.g8 = @s tr.points.indiv

# update event stage
execute unless score stmc.handler event.stage matches 15 run function lobby:between/start
execute if score stmc.handler event.stage matches 15 run function lobby:final/start