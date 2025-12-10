# reset function for solve

# handle important resets
effect clear @a
clear @a

# set player points
execute as @a if score stmc.handler event.stage matches 1 run scoreboard players operation @s stats.points.indiv.g1 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 3 run scoreboard players operation @s stats.points.indiv.g2 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 5 run scoreboard players operation @s stats.points.indiv.g3 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 7 run scoreboard players operation @s stats.points.indiv.g4 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 9 run scoreboard players operation @s stats.points.indiv.g5 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 11 run scoreboard players operation @s stats.points.indiv.g6 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 13 run scoreboard players operation @s stats.points.indiv.g7 = @s solve.points.indiv
execute as @a if score stmc.handler event.stage matches 15 run scoreboard players operation @s stats.points.indiv.g8 = @s solve.points.indiv

# move to next stage
execute unless score stmc.handler event.stage matches 15 run function lobby:between/start
execute if score stmc.handler event.stage matches 15 run function lobby:final/start