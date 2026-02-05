# acts as the 'load' function for joust
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:joust/main run tp @s 16 105.5 100 -180 -13

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation infinite 0 true

xp set @s 0 levels
xp set @s 0 points

execute in stmc:joust/main run spawnpoint @s 16 106 100

# ensure kit armor stands are there
execute in stmc:joust/main run function stmc:games/joust/utils/spawn_kits

# reset scoreboards
scoreboard players set @s joustKillsPotion 0