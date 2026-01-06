# helper function that updates players' mid-race placement
# called whenever a player reaches a checkpoint

# function will be called as our target player [@s]

# RANKING CALCULATIONS

# reset global currentPlacement
scoreboard players set race.helper race.currentPlacement 0
# and set our local variables
scoreboard players set race.helper race.laps_completed 0
scoreboard players operation race.helper race.laps_completed += @s race.laps_completed
scoreboard players set race.helper race.checkpoints_completed 0
scoreboard players operation race.helper race.checkpoints_completed += @s race.checkpoints_completed

# determine current global currentPlacement
execute as @a if score @s race.laps_completed > race.helper race.laps_completed run scoreboard players add race.helper race.currentPlacement 1
execute as @a if score @s race.laps_completed = race.helper race.laps_completed if score @s race.checkpoints_completed >= race.helper race.checkpoints_completed run scoreboard players add race.helper race.currentPlacement 1

# set the current placement of the player
scoreboard players set @s race.currentPlacement 0
scoreboard players operation @s race.currentPlacement = race.helper race.currentPlacement

# reset global currentPlacement
scoreboard players set race.helper race.currentPlacement 0

# MISC STUFF

# playsound
execute as @s at @s if score @s race.soundThisTick matches 0.. run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.4
execute as @a if score @s race.soundThisTick matches 0.. run scoreboard players remove @s race.soundThisTick 1