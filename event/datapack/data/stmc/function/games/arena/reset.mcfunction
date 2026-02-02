# reset function for arena [arena]

# important resets
clear @a
effect clear @a
execute in stmc:arena run forceload remove 350 75 -20 0

# remove bossbar
#bossbar remove arena.timer

# update points
execute as @a if score stmc.handler event.stage matches 1 run scoreboard players operation @s stats.points.indiv.g1 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 3 run scoreboard players operation @s stats.points.indiv.g2 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 5 run scoreboard players operation @s stats.points.indiv.g3 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 7 run scoreboard players operation @s stats.points.indiv.g4 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 9 run scoreboard players operation @s stats.points.indiv.g5 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 11 run scoreboard players operation @s stats.points.indiv.g6 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 13 run scoreboard players operation @s stats.points.indiv.g7 = @s arena.points.indiv
execute as @a if score stmc.handler event.stage matches 15 run scoreboard players operation @s stats.points.indiv.g8 = @s arena.points.indiv

# move to next stage
execute unless score stmc.handler event.stage matches 15 run function stmc:lobby/between/start
execute if score stmc.handler event.stage matches 15 run function stmc:lobby/final/start