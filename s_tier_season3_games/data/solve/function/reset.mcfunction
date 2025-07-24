# reset function for extract [EXTRACT]

# important resets
clear @a
effect clear @a

# update points
execute as @a run scoreboard players operation @s stats.points.indiv.g1 = @s solve.points.indiv

# move to next stage
scoreboard players add stmc.handler event.stage 1