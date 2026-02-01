# acts as the 'load' function for the lobby
# teleports player to the dimension & sets lots of default values for them

gamemode adventure @s
execute in stmc:lobby/main run tp @s 0 100 0 0 0

clear @s
effect clear @s

effect give @s saturation infinite 1 true

execute in stmc:lobby/main run spawnpoint @s 0 100 0

scoreboard players set @s race.gameActive 0
scoreboard players set @s extract.gamesActive 0