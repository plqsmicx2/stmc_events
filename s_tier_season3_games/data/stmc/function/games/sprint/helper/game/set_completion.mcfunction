# helper function that handles when a player completes the whole course
# runs on @s

# set player to spectator
gamemode spectator @s

# record player's time
scoreboard players operation @s sprint.timer.game = sprint.handler sprint.timer.game

# set player to completed
scoreboard players set @s sprint.stats.completed 1

# announce player completion
tellraw @a [{selector:"@s"},{text:" completed the whole course!",color:dark_green}]