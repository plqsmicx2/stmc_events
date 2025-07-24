# load function for finale

# teleport players to spawn
execute in finale:finale run tp @a 0 107 23

execute if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run tp @a[team=RED_RACCOONS] 0 102 20
execute if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run tp @a[team=RED_RACCOONS] 0 102 -20

execute if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 102 20
execute if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 102 -20

execute if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run tp @a[team=PINK_PIKAS] 0 102 20
execute if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run tp @a[team=PINK_PIKAS] 0 102 -20

execute if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run tp @a[team=GREEN_GOATS] 0 102 20
execute if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run tp @a[team=GREEN_GOATS] 0 102 -20

execute if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run tp @a[team=CYAN_COUGARS] 0 102 20
execute if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run tp @a[team=CYAN_COUGARS] 0 102 -20

execute if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 102 20
execute if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 102 -20

# manual spawn
execute in finale:finale run spawnpoint @a 0 107 23

# force gamemode
gamemode survival @a

# set time
time set 4000

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
effect give @a instant_health 1 110 true

# set xp
xp set @a 0

# kill all entities
execute in finale:finale run kill @e[type=!player]

# set world protections
yawp dim finale:finale delete-all regions
yawp dim finale:finale create local finale-world Cuboid -30 100 -30 30 150 30
yawp local finale:finale finale-world add flag spawning-all Denied
yawp local finale:finale finale-world add flag break-blocks Denied
yawp local finale:finale finale-world add flag item-drop Denied
yawp local finale:finale finale-world add flag item-pickup Denied

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add finale.timer.delay1 dummy
scoreboard objectives add finale.timer.explanation dummy
scoreboard objectives add finale.timer.delay2 dummy
scoreboard objectives add finale.timer.game dummy
# stats
scoreboard objectives add finale.stats.alive dummy

# (re)set all necessary values
scoreboard players set finale.handler finale.stage 0

scoreboard players set finale.handler finale.timer.delay1 0
scoreboard players set finale.handler finale.timer.explanation 0
scoreboard players set finale.handler finale.timer.delay2 0
scoreboard players set finale.handler finale.timer.game 0

execute if score team.RedRaccoons stats.points.team.rank matches 1..2 run scoreboard players set @a[team=RED_RACCOONS] finale.stats.alive 1
execute if score team.OrangeOtters stats.points.team.rank matches 1..2 run scoreboard players set @a[team=ORANGE_OTTERS] finale.stats.alive 1
execute if score team.PinkPikas stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PINK_PIKAS] finale.stats.alive 1
execute if score team.GreenGoats stats.points.team.rank matches 1..2 run scoreboard players set @a[team=GREEN_GOATS] finale.stats.alive 1
execute if score team.CyanCougars stats.points.team.rank matches 1..2 run scoreboard players set @a[team=CYAN_COUGARS] finale.stats.alive 1
execute if score team.PurplePenguins stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PURPLE_PENGUINS] finale.stats.alive 1