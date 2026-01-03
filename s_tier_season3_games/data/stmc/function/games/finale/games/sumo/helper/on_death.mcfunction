# helper function that runs whenever a player dies
# runs on @s in stmc:finale

# force gamemode
gamemode adventure @s

# return to spectator platform
execute in stmc:finale run teleport @s -10 88 0 -90 10

# record player's death
scoreboard players set @s sumo.stats.alive 0

# announce player's death
tellraw @a [{text:"💀: ",color:red},{selector:"@s"}]

# playsound
execute as @s at @s run playsound minecraft:entity.player.death player @s ~ ~ ~