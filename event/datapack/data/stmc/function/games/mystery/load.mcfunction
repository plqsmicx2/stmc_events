# load function for mystery

# teleport players to spawn platform
tp @a 0 64 -500

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# forceload area
#forceload add

# set time
time set 20000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn false
gamerule pvp true
gamerule show_death_messages false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 4 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
kill @e[type=!player]

# failsafe spawn point
spawnpoint @a 0 64 -500

# reset scoreboards
scoreboard objectives remove mystery.kills
scoreboard objectives remove mystery.died
scoreboard objectives remove mystery.survived
scoreboard objectives remove mystery.points.indiv
scoreboard objectives remove mystery.points.team
scoreboard objectives remove mystery.points.indiv.round1
scoreboard objectives remove mystery.points.indiv.round2
scoreboard objectives remove mystery.points.indiv.round3
scoreboard objectives remove mystery.rank
scoreboard objectives remove mystery.stage
scoreboard objectives remove mystery.roundsCompleted
scoreboard objectives remove mystery.timer.delay
scoreboard objectives remove mystery.timer.explanation
scoreboard objectives remove mystery.timer.round
scoreboard objectives remove mystery.timer.announcements
# create scoreboards
# points
scoreboard objectives add mystery.kills minecraft.custom:minecraft.player_kills
scoreboard objectives add mystery.died minecraft.custom:minecraft.deaths
scoreboard objectives add mystery.survived dummy
scoreboard objectives add mystery.points.indiv dummy
scoreboard objectives add mystery.points.team dummy
scoreboard objectives add mystery.points.indiv.round1 dummy
scoreboard objectives add mystery.points.indiv.round2 dummy
scoreboard objectives add mystery.points.indiv.round3 dummy
scoreboard objectives add mystery.rank dummy
#stages
scoreboard objectives add mystery.stage dummy
scoreboard objectives add mystery.roundsCompleted dummy
#timer
scoreboard objectives add mystery.timer.delay dummy
scoreboard objectives add mystery.timer.explanation dummy
scoreboard objectives add mystery.timer.round dummy
scoreboard objectives add mystery.timer.announcements dummy

# now, we set stage to 0
scoreboard players set mystery.handler mystery.stage 0
scoreboard players set mystery.handler mystery.roundsCompleted 0

# and set some necessary values for our players
scoreboard players set @a[team=SPECTATORS] mystery.died 2

# reset the sidebar
#scoreboard objectives remove brawl.sidebar