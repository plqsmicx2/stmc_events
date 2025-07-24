# handle important resets
effect clear @a

clear @a

gamemode spectator @a

# set player points
execute as @a run scoreboard players operation @s stats.points.indiv.g3 = @s delve.points.indiv

# move to next stage
scoreboard players add stmc.handler event.stage 1