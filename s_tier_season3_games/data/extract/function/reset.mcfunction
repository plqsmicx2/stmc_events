# reset function for extract [EXTRACT]

# important resets
clear @a
effect clear @a
execute in extract:extract run forceload remove 250 27 -20 -32

# remove bossbar
bossbar remove extract.timer

# update points
execute as @a run scoreboard players operation @s stats.points.indiv.g3 = @s extract.points.indiv

# move to next stage
scoreboard players add stmc.handler event.stage 1