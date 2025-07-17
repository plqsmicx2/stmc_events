# load function for spleef [SPLEEF]

# this function is called to initialize spleef

# teleport players
execute in trials:spleef run tp @a 0 152 0

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# set time
time set 18000

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 10 1 true

# give effects
effect give @a night_vision infinite 1 true

# set xp
xp set @a 0

# kill all entities
execute in trials:spleef run kill @e[type=!player]

# reset world
execute in trials:spleef run fill -15 103 -15 15 106 15 minecraft:chiseled_tuff_bricks replace minecraft:snow_block

# set world protections
yawp dim trials:spleef delete-all regions
yawp dim trials:spleef create local spleef-main Cuboid -50 107 -50 50 150 50
yawp local trials:spleef spleef-main add flag break-blocks Allowed
yawp local trials:spleef spleef-main add flag spawning-all Denied
yawp local trials:spleef spleef-main add flag fall-damage Denied
yawp local trials:spleef spleef-main add flag no-pvp Allowed
yawp local trials:spleef spleef-main add flag no-hunger Allowed
yawp local trials:spleef spleef-main add flag knockback-players Denied
yawp local trials:spleef spleef-main add flag item-drop Denied
yawp local trials:spleef spleef-main add flag item-pickup Denied
yawp dim trials:spleef create local spleef-secondary Cuboid -50 90 -50 50 106 50
yawp local trials:spleef spleef-secondary add flag break-blocks Denied
yawp local trials:spleef spleef-secondary add flag spawning-all Denied
yawp local trials:spleef spleef-secondary add flag fall-damage Denied
yawp local trials:spleef spleef-secondary add flag no-pvp Allowed
yawp local trials:spleef spleef-secondary add flag no-hunger Allowed
yawp local trials:spleef spleef-secondary add flag knockback-players Denied
yawp local trials:spleef spleef-secondary add flag item-drop Denied
yawp local trials:spleef spleef-secondary add flag item-pickup Denied
yawp dim trials:spleef create local spleef-spawn Cuboid -50 90 -50 50 106 50
yawp local trials:spleef spleef-spawn add flag break-blocks Denied
yawp local trials:spleef spleef-spawn add flag spawning-all Denied
yawp local trials:spleef spleef-spawn add flag fall-damage Denied
yawp local trials:spleef spleef-spawn add flag no-pvp Allowed
yawp local trials:spleef spleef-spawn add flag no-hunger Allowed
yawp local trials:spleef spleef-spawn add flag knockback-players Denied
yawp local trials:spleef spleef-spawn add flag item-drop Denied
yawp local trials:spleef spleef-spawn add flag item-pickup Denied

# give everyone leather boots
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416]

# scoreboard stuff
# timers
scoreboard objectives add spleef.timer.delay1 dummy
scoreboard objectives add spleef.timer.explanation dummy
scoreboard objectives add spleef.timer.delay2 dummy
scoreboard objectives add spleef.timer.game dummy
scoreboard objectives add spleef.timer.delay3 dummy
# stats
scoreboard objectives add spleef.players_alive dummy
scoreboard objectives add spleef.teams_alive dummy
scoreboard objectives add spleef.alive dummy
# points
scoreboard objectives add spleef.points.indiv dummy
scoreboard objectives add spleef.points.player.rank dummy
scoreboard objectives add spleef.points.team dummy
scoreboard objectives add spleef.points.team.rank dummy
# handlers
scoreboard objectives add spleef.deathThisTick dummy

# (re)set scoreboards
scoreboard players set spleef.handler spleef.stage 0

scoreboard players set spleef.handler spleef.timer.delay1 0
scoreboard players set spleef.handler spleef.timer.explanation 0
scoreboard players set spleef.handler spleef.timer.delay2 0
scoreboard players set spleef.handler spleef.timer.game 0
scoreboard players set spleef.handler spleef.timer.delay3 0

scoreboard players set @a[team=!SPECTATORS] spleef.alive 1

scoreboard players set @a spleef.points.indiv 0

scoreboard objectives remove spleef.sidebar