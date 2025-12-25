# reset function for trials

# important resets
execute as @a run attribute @s max_health base set 22
clear @a
effect clear @a

# update trials points
execute as @a run scoreboard players set @s tr.points.indiv 0
execute as @a run scoreboard players operation @s tr.points.indiv += @s disco.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s replicate.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s spleef.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s towers.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s ascend.points.indiv

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
execute unless score stmc.handler event.stage matches 15 run function stmc:lobby/between/start
execute if score stmc.handler event.stage matches 15 run function stmc:lobby/final/start