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

# announce player's death
scoreboard objectives add .kill dummy
scoreboard players set blitz.temp .kill 0
execute as @a if score @s blitz.tempkills matches 1.. run scoreboard players set blitz.temp .kill 1

# died to another player
execute if score blitz.temp .kill matches 1.. run tellraw @a \
        [{selector:"@a[scores={blitz.tempkills=1..}]"},\
        {text:" killed ",color:red},{selector:"@s"}]

# died otherwise
execute if score blitz.temp .kill matches 0 run tellraw @a \
        [{selector:"@s"},\
        {text:" died.",color:red}]

scoreboard objectives remove .kill

# set dead player to have a respawn cooldown
scoreboard players set @s blitz.stats.respawn 140

# clear players' ores
clear @s iron_ingot
clear @s gold_ingot
clear @s emerald

# reset players' dead status
gamemode spectator @s
scoreboard players set @s blitz.death 0

# and reset all players' temp kills
scoreboard players set @a blitz.tempkills 0