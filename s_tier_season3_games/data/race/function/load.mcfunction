# load function for race

# this function runs whenever beginning the race game

# teleport players to spawn
execute in race:race run tp @a -13 105 14

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 5 1 true

# give effects
effect give @a dolphins_grace infinite 0 true
effect give @a water_breathing infinite 0 true

# set xp
xp set @a 0

# kill all entities
execute in race:race run kill @e[type=!player]

# set world protections
yawp dim race:race delete-all regions
yawp dim race:race create local race-world Cuboid -100 100 -100 100 140 100
yawp local race:race race-world add flag break-blocks Denied
yawp local race:race race-world add flag spawning-all Denied
yawp local race:race race-world add flag fall-damage Denied
yawp local race:race race-world add flag no-pvp Allowed
yawp local race:race race-world add flag no-hunger Allowed
yawp local race:race race-world add flag knockback-players Denied
yawp local race:race race-world add flag item-drop Denied
yawp local race:race race-world add flag item-pickup Denied

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never

# give everyone leather boots
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add race.timer.delay1 dummy
scoreboard objectives add race.timer.explanation dummy
scoreboard objectives add race.timer.delay2 dummy
scoreboard objectives add race.timer.game dummy
scoreboard objectives add race.timer.delay3 dummy
# stats
scoreboard objectives add race.laps_completed dummy
scoreboard objectives add race.recentlyCompletedLap dummy
scoreboard objectives add race.recentCompletionDelay dummy
scoreboard objectives add race.players_completed dummy
scoreboard objectives add race.teams_completed dummy
scoreboard objectives add race.laptime.1 dummy
scoreboard objectives add race.laptime.2 dummy
scoreboard objectives add race.laptime.3 dummy
scoreboard objectives add race.laptime.4 dummy
scoreboard objectives add race.laptime.total dummy
scoreboard objectives add race.laptime.tick dummy
scoreboard objectives add race.laptime.seconds dummy
scoreboard objectives add race.laptime.mins dummy
scoreboard objectives add race.fastest_lap dummy
scoreboard objectives add race.fastest_lap.rank dummy
scoreboard objectives add race.completion.rank dummy
# points
scoreboard objectives add race.points.indiv dummy
scoreboard objectives add race.points.player.rank dummy
scoreboard objectives add race.points.team dummy
scoreboard objectives add race.points.team.rank dummy
# handlers
scoreboard objectives add race.current_round_length dummy
scoreboard objectives add race.current_round_length_delay dummy
scoreboard objectives add race.current_round_block dummy
scoreboard objectives add race.deathThisTick dummy

# (re)set all necessary values
scoreboard players set race.handler race.stage 0

scoreboard players set race.handler race.timer.delay1 0
scoreboard players set race.handler race.timer.explanation 0
scoreboard players set race.handler race.timer.delay2 0
scoreboard players set race.handler race.timer.game 0
scoreboard players set race.handler race.timer.delay3 0

scoreboard players set @a race.laps_completed 0
scoreboard players set @a race.recentlyCompletedLap 0
scoreboard players set @a race.recentCompletionDelay 0
scoreboard players set race.handler race.players_completed 0
scoreboard players set race.handler race.teams_completed 0
scoreboard players set @a race.laptime.1 0
scoreboard players set @a race.laptime.2 0
scoreboard players set @a race.laptime.3 0
scoreboard players set @a race.laptime.4 0
scoreboard players set @a race.laptime.total 0
scoreboard players set @a race.laptime.tick 0
scoreboard players set @a race.laptime.seconds 0
scoreboard players set @a race.laptime.mins 0
scoreboard players set @a race.fastest_lap 0
scoreboard players set @a race.fastest_lap.rank 0
scoreboard players set @a race.completion.rank 0
scoreboard players set race.RedRaccoons race.completion.rank 0
scoreboard players set race.OrangeOtters race.completion.rank 0
scoreboard players set race.PinkPikas race.completion.rank 0
scoreboard players set race.GreenGoats race.completion.rank 0
scoreboard players set race.CyanCougars race.completion.rank 0
scoreboard players set race.PurplePenguins race.completion.rank 0

scoreboard players set @a race.points.indiv 0

scoreboard players set race.handler race.current_round_length 40
scoreboard players set race.handler race.current_round_length_delay 80
scoreboard players set race.handler race.current_round_block -1

scoreboard objectives remove race.sidebar