# reset function for Replicate

# important resets
effect clear @a
clear @a
execute in stmc:trials/replicate run forceload remove -80 -150 80 150
time set 4000

# move to next trials stage
scoreboard players add tr.handler tr.stage 1