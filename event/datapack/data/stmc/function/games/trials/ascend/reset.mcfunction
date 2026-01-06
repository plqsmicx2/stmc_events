# reset function for ascend

# important resets
effect clear @a
clear @a
execute in stmc:trials/ascend run forceload remove -200 -200 200 200
execute as @a run attribute @s block_interaction_range base reset

# move to next trials stage
scoreboard players add tr.handler tr.stage 1