# this function runs whenever beginning the disco game

# teleport players to spawn platform
execute in trials:disco run tp @a 0 108 0

# force gamemode
gamemode survival @a

# set time
time set 12000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 5 1 true

# set xp
xp set @a 0

# kill all entities
execute in trials:disco run kill @e[type=!player]

# failsafe spawn point
execute in trials:disco run spawnpoint @a 0 108 0

# set world protections
yawp dim trials:disco delete-all regions
yawp dim trials:disco create local disco-world Cuboid -15 95 -15 15 115 15
yawp local trials:disco disco-world add flag break-blocks Denied
yawp local trials:disco disco-world add flag spawning-all Denied
yawp local trials:disco disco-world add flag fall-damage Denied
yawp local trials:disco disco-world add flag no-pvp Allowed
yawp local trials:disco disco-world add flag no-hunger Allowed
yawp local trials:disco disco-world add flag item-drop Denied
yawp local trials:disco disco-world add flag item-pickup Denied

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never

# give everyone leather boots
execute as @a[team=RED_RACCOONS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=11546150]
execute as @a[team=ORANGE_OTTERS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=16351261]
execute as @a[team=PINK_PIKAS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=15961002]
execute as @a[team=GREEN_GOATS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=6192150]
execute as @a[team=CYAN_COUGARS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=1481884]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @a armor.feet with minecraft:leather_boots[dyed_color=8991416]

# and wrap it up with some scoreboard stuff
