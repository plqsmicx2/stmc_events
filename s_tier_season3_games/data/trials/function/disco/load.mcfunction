# this function runs whenever beginning the disco game

# teleport players to spawn platform
execute in trials:disco run tp @a 0 109 0

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
# timers
scoreboard objectives add disco.timer.delay1 dummy
scoreboard objectives add disco.timer.explanation dummy
scoreboard objectives add disco.timer.delay2 dummy
scoreboard objectives add disco.timer.example dummy
scoreboard objectives add disco.timer.delay3 dummy
scoreboard objectives add disco.timer.game dummy
scoreboard objectives add disco.timer.delay4 dummy
# stats
scoreboard objectives add disco.rounds_played dummy
scoreboard objectives add disco.example_rounds dummy
scoreboard objectives add disco.players_alive dummy
scoreboard objectives add disco.teams_alive dummy
scoreboard objectives add disco.alive dummy
# points=
scoreboard objectives add disco.points.indiv dummy
scoreboard objectives add disco.points.player.rank dummy
scoreboard objectives add disco.points.team dummy
scoreboard objectives add disco.points.team.rank dummy
# handlers
scoreboard objectives add disco.current_round_length dummy
scoreboard objectives add disco.current_round_length_delay dummy
scoreboard objectives add disco.current_round_block dummy
scoreboard objectives add disco.deathThisTick dummy

# (re)set all necessary values
scoreboard players set disco.handler disco.stage 0

scoreboard players set disco.handler disco.timer.delay1 0
scoreboard players set disco.handler disco.timer.explanation 0
scoreboard players set disco.handler disco.timer.delay2 0
scoreboard players set disco.handler disco.timer.example 0
scoreboard players set disco.handler disco.timer.delay3 0
scoreboard players set disco.handler disco.timer.game 0
scoreboard players set disco.handler disco.timer.delay4 0

scoreboard players set disco.handler disco.rounds_played 0
scoreboard players set disco.handler disco.example_rounds 0
scoreboard players set @a disco.alive 1

scoreboard players set @a disco.points.indiv 0

scoreboard players set disco.handler disco.current_round_length 40
scoreboard players set disco.handler disco.current_round_length_delay 80
scoreboard players set disco.handler disco.current_round_block -1

scoreboard objectives remove disco.sidebar