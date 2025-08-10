# load function for survival games round 3

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
effect give @a resistance infinite 10 true

# set xp
xp set @a 0

# kill all entities
execute in survival_games:sg1 run kill @e[type=!player]

# failsafe spawn point
execute in survival_games:sg1 run spawnpoint @a 0 178 0

# set world protections
execute as @a run attribute @s block_break_speed base set 0.01

# set worldborder
worldborder center 0 0
worldborder set 250

# and wrap it up with some scoreboard stuff
# initial delay timer
scoreboard objectives add sg.r3.timer.delay1 dummy
# post-explanation delay timer
scoreboard objectives add sg.r3.timer.delay2 dummy
# round timer (only used to control border)
scoreboard objectives add sg.r3.timer.round dummy
# post-round timer
scoreboard objectives add sg.r3.timer.delay3 dummy
# border stage
scoreboard objectives add sg.r3.borderStage dummy
# individual player death
scoreboard objectives add sg.r3.death deathCount
scoreboard players reset @a sg.r3.death
scoreboard objectives add sg.r3.deathThisTick dummy
# points stuff
scoreboard objectives add sg.r3.points dummy
scoreboard objectives add sg.r3.kills playerKillCount
scoreboard objectives add sg.r3.killPoints dummy
scoreboard objectives add sg.r3.indivPlacementPoints dummy
scoreboard objectives add sg.r3.teamPlacementPoints dummy
scoreboard objectives add sg.r3.teamPlacement dummy
scoreboard objectives add sg.r3.currentPlacement dummy

# reset points
scoreboard players set @a sg.r3.points 0
scoreboard players set @a sg.r3.kills 0
scoreboard players set @a sg.r3.killPoints 0
scoreboard players set @a sg.r3.indivPlacementPoints 0
scoreboard players set @a sg.r3.teamPlacementPoints 0
scoreboard players set sg.RedRaccoons sg.r3.teamPlacement 0
scoreboard players set sg.OrangeOtters sg.r3.teamPlacement 0
scoreboard players set sg.PinkPikas sg.r3.teamPlacement 0
scoreboard players set sg.GreenGoats sg.r3.teamPlacement 0
scoreboard players set sg.CyanCougars sg.r3.teamPlacement 0
scoreboard players set sg.PurplePenguins sg.r3.teamPlacement 0

# and reset timers
scoreboard players set sg.r3.handler sg.r3.timer.delay1 0
scoreboard players set sg.r3.handler sg.r3.timer.delay2 0
scoreboard players set sg.r3.handler sg.r3.timer.round 0
scoreboard players set sg.r3.handler sg.r3.timer.delay3 0

# reset players alive
execute as @a[team=!SPECTATORS] at @s run scoreboard players set @s sg.alive 1
function survival_games:round3/death_handler

# randomize borderEnd
execute store result score sg.r3.handler sg.borderEnd run random value 1..4

# and reset borderStage
scoreboard players reset sg.r3.handler sg.r3.borderStage

# and reset beacons
execute in survival_games:sg1 run setblock -50 108 -50 minecraft:iron_block
execute in survival_games:sg1 run setblock 50 111 -50 minecraft:iron_block
execute in survival_games:sg1 run setblock -50 110 50 minecraft:iron_block
execute in survival_games:sg1 run setblock 50 107 50 minecraft:iron_block

# set stage to 0
scoreboard players set sg.r3.handler sg.r3.stage 0