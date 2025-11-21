# acts as the 'load' function for the lobby
# teleports player to the dimension & sets lots of default values for them

gamemode adventure @s
execute in lobby:lobby run tp @s 0 100 0 0 0

clear @s
effect clear @s