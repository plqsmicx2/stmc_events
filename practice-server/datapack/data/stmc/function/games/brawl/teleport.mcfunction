# acts as the 'load' function for mystery
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:brawl/manor run tp @s -31 114.5 -42.5 -180 -13

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation infinite 0 true

xp set @s 0 levels
xp set @s 0 points

execute in stmc:brawl/manor run spawnpoint @s -31 115 -43