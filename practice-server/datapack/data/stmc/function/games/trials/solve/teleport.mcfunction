# acts as the 'load' function for mystery
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:trials/solve run tp @s 0 101 0 0 0

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation infinite 0 true

xp set @s 0 levels
xp set @s 0 points

execute in stmc:trials/solve run spawnpoint @s 0 101 0