# reset function for race

# handle important resets
effect clear @a

clear @a

gamemode spectator @a

# set player points
execute as @a run scoreboard players operation @s stats.points.indiv.g4 = @s race.points.indiv