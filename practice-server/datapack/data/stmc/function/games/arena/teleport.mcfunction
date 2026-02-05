# acts as the 'load' function for mystery
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:arena/main run tp @s 38 107 -19 0 0

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation infinite 0 true

xp set @s 0 levels
xp set @s 0 points

execute in stmc:arena/main run spawnpoint @s 38 107 -19

execute as @s run function stmc:games/arena/utils/set_inventory