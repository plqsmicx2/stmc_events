# helper function that sets all the stats for players in need of a respawn

# set player spawnpoints
execute as @a[team=RED_RACCOONS] in stmc:blitz run spawnpoint @s -36 107 100
execute as @a[team=ORANGE_OTTERS] in stmc:blitz run spawnpoint @s -36 107 -100
execute as @a[team=PINK_PIKAS] in stmc:blitz run spawnpoint @s 100 107 -36
execute as @a[team=YELLOW_YAKS] in stmc:blitz run spawnpoint @s 100 107 36
execute as @a[team=GREEN_GOATS] in stmc:blitz run spawnpoint @s 36 107 -100
execute as @a[team=CYAN_COUGARS] in stmc:blitz run spawnpoint @s -100 107 -36
execute as @a[team=PURPLE_PENGUINS] in stmc:blitz run spawnpoint @s -100 107 36
execute as @a[team=BLUE_BEARS] in stmc:blitz run spawnpoint @s 36 107 100

# set dead player to have a respawn cooldown
scoreboard players set @s blitz.stats.respawn 100

# reset players' dead status
gamemode spectator @s
scoreboard players set @s blitz.death 0

# and reset all players' temp kills
scoreboard players set @a blitz.tempkills 0