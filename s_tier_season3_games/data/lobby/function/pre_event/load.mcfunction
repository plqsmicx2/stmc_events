# force gamemode
gamemode adventure @a

# do some clears
clear @a
effect clear @a

# set spawn point
execute in lobby:lobby run spawnpoint @a 0 101 0

# give some effects
effect give @a minecraft:mining_fatigue infinite 2 true
effect give @a minecraft:instant_health 1 110 true
effect give @a minecraft:saturation 1 110 true

# scoreboard stuff
scoreboard objectives add pre.timer dummy

# reset sidebar
scoreboard objectives remove lobby.sidebar