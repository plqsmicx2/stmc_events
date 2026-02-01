# acts as the 'load' function for extract
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:extract/main run tp @s 0 101 -18 0 0

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation 1 1 true
effect give @s regeneration 5 1 true
effect give @s resistance infinite 4 true
effect give @s mining_fatigue infinite 4 true

xp set @s 0 levels
xp set @s 0 points

execute in stmc:extract/main run spawnpoint @s 0 101 -18

# set default stats
scoreboard players set @a extract.stats.kills 0
scoreboard players set @a extract.stats.diamondsMined 0
scoreboard players set @a extract.stats.goldMined 0