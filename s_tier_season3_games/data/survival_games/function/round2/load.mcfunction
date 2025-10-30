# load function for survival games round 1

# this function will handle all the typical stuff that happens at the beginning of a game
# excluding anything done in the parent load function

# teleport players to spawn platform
execute in survival_games:sg1 run tp @a 0 178 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

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
effect give @a saturation 1 4 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0

# kill all entities
execute in survival_games:sg1 run kill @e[type=!player]

# failsafe spawn point
execute in survival_games:sg1 run spawnpoint @a 0 178 0

# set worldborder
worldborder center 0 0
worldborder set 300

# player immunities
execute as @a run attribute @s attack_damage base set 0.0
execute as @a run attribute @s knockback_resistance base set 10.0

# and wrap it up with some scoreboard stuff
# initial delay timer
scoreboard objectives add sg.r2.timer.delay1 dummy
# round timer
scoreboard objectives add sg.r2.timer.round dummy
# post-game delay timer
scoreboard objectives add sg.r2.timer.delay2 dummy
# border stage
scoreboard objectives add sg.r2.borderStage dummy
# individual player death
scoreboard objectives add sg.r2.death deathCount
scoreboard players reset @a sg.r2.death
# points stuff
scoreboard objectives add sg.r2.points dummy
scoreboard objectives add sg.r2.kills playerKillCount
scoreboard objectives add sg.r2.killPoints dummy
scoreboard objectives add sg.r2.teamPlacementPoints dummy
scoreboard objectives add sg.r2.teamPlacement dummy
scoreboard objectives add sg.r2.currentPlacement dummy

# border
scoreboard players set sg.handler sg.borderDistance 0
scoreboard players set @a sg.borderDistance 200

# reset points
scoreboard players set @a sg.r2.points 0
scoreboard players set @a sg.r2.kills 0
scoreboard players set @a sg.r2.killPoints 0
scoreboard players set @a sg.r2.teamPlacementPoints 0
scoreboard players set sg.RedRaccoons sg.r2.teamPlacement 0
scoreboard players set sg.OrangeOtters sg.r2.teamPlacement 0
scoreboard players set sg.PinkPikas sg.r2.teamPlacement 0
scoreboard players set sg.GreenGoats sg.r2.teamPlacement 0
scoreboard players set sg.CyanCougars sg.r2.teamPlacement 0
scoreboard players set sg.PurplePenguins sg.r2.teamPlacement 0

# and reset timers
scoreboard players reset sg.r2.handler sg.r2.timer.delay1
scoreboard players reset sg.r2.handler sg.r2.timer.round
scoreboard players reset sg.r2.handler sg.r2.timer.delay2

# reset players alive
execute as @a[team=!SPECTATORS] at @s run scoreboard players set @s sg.alive 1
function survival_games:round2/death_handler

# and reset borderStage
scoreboard players reset sg.r2.handler sg.r2.borderStage

# set stage to 0
scoreboard players set sg.r2.handler sg.r2.stage 0