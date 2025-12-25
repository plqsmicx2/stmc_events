# helper function that sets all the stats for players who died without a core

# reset players' alive status
gamemode spectator @s
teleport @s 0 140 0
scoreboard players set @s blitz.alive 0

# award whoever got the kill a final kill
execute as @a if score @s blitz.tempkills matches 1.. run scoreboard players operation @s blitz.finalKills += @s blitz.tempkills

# and reset all players' temp kills
scoreboard players set @a blitz.tempkills 0