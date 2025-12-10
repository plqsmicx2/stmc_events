# load function for finale

# teleport players to spawn
execute in finale:finale run tp @a -11 152 0 -90 35

# manual spawn
execute in finale:finale run spawnpoint @a -11 152 0

# force gamemode
gamemode adventure @a

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule naturalRegeneration false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in finale:finale run kill @e[type=!player]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add finale.timer.delay1 dummy
scoreboard objectives add finale.timer.explanation dummy
scoreboard objectives add finale.timer.delay2 dummy
scoreboard objectives add finale.timer.game dummy
scoreboard objectives add finale.timer.delay3 dummy
# stats
scoreboard objectives add finale.stats.alive dummy
scoreboard objectives add finale.stats.deaths deathCount
# round stuff
scoreboard objectives add finale.round.stage dummy
scoreboard objectives add finale.round.completed dummy
scoreboard objectives add finale.round.timer dummy

# (re)set all necessary values
scoreboard players set finale.handler finale.stage 0

scoreboard players set finale.handler finale.timer.delay1 0
scoreboard players set finale.handler finale.timer.explanation 0
scoreboard players set finale.handler finale.timer.delay2 0
scoreboard players set finale.handler finale.timer.game 0
scoreboard players set finale.handler finale.timer.delay3 0

scoreboard players set @a finale.stats.deaths 0

scoreboard players set finale.handler finale.round.stage 0
scoreboard players set finale.handler finale.round.completed 0
scoreboard players set finale.handler finale.round.timer 0

# reset teams' win counts
scoreboard players set finale.RedRaccoons finale.round.completed 0
scoreboard players set finale.OrangeOtters finale.round.completed 0
scoreboard players set finale.PinkPikas finale.round.completed 0
scoreboard players set finale.YellowYaks finale.round.completed 0
scoreboard players set finale.GreenGoats finale.round.completed 0
scoreboard players set finale.CyanCougars finale.round.completed 0
scoreboard players set finale.PurplePenguins finale.round.completed 0
scoreboard players set finale.BlueBears finale.round.completed 0

# reset sidebar
scoreboard objectives remove lobby.sidebar