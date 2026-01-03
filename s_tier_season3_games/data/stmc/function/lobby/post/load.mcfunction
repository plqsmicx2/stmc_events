# load function for lobbies between games

# this function runs whenever instantiating a lobby

# teleport players to spawn
execute as @a in stmc:lobby/main run tp @s 0 100 0

# spawnpoint players
execute as @a in stmc:lobby/main run spawnpoint @s 0 100 0 0 0

# force gamemode
gamemode adventure @a

# set time
time set 22000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule keep_inventory true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all
effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

# set attributes
execute as @a run attribute @s attack_damage base set 0
execute as @a run attribute @s knockback_resistance base set 1000

# set xp
xp set @a 0 levels
xp set @a 0 points

scoreboard objectives remove lobby.sidebar