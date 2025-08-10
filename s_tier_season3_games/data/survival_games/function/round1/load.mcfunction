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
effect give @a saturation 1 1 true
effect give @a regeneration 5 1 true
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
scoreboard objectives add sg.r1.timer.delay1 dummy
# explanation timer
scoreboard objectives add sg.r1.timer.explanation dummy
# post-explanation delay timer
scoreboard objectives add sg.r1.timer.delay2 dummy
# round timer (only used to control border)
scoreboard objectives add sg.r1.timer.round dummy
# post-round timer
scoreboard objectives add sg.r1.timer.delay3 dummy
# border stage
scoreboard objectives add sg.r1.borderStage dummy
# individual player death
scoreboard objectives add sg.r1.death deathCount
scoreboard players reset @a sg.r1.death
scoreboard objectives add sg.r1.deathThisTick dummy
# points stuff
scoreboard objectives add sg.r1.points dummy
scoreboard objectives add sg.r1.kills playerKillCount
scoreboard objectives add sg.r1.killPoints dummy
scoreboard objectives add sg.r1.indivPlacementPoints dummy
scoreboard objectives add sg.r1.teamPlacementPoints dummy
scoreboard objectives add sg.r1.teamPlacement dummy
scoreboard objectives add sg.r1.currentPlacement dummy

# reset points
scoreboard players set @a sg.r1.points 0
scoreboard players set @a sg.r1.kills 0
scoreboard players set @a sg.r1.killPoints 0
scoreboard players set @a sg.r1.indivPlacementPoints 0
scoreboard players set @a sg.r1.teamPlacementPoints 0
scoreboard players reset sg.RedRaccoons sg.r1.teamPlacement
scoreboard players reset sg.OrangeOtters sg.r1.teamPlacement
scoreboard players reset sg.PinkPikas sg.r1.teamPlacement
scoreboard players reset sg.GreenGoats sg.r1.teamPlacement
scoreboard players reset sg.CyanCougars sg.r1.teamPlacement
scoreboard players reset sg.PurplePenguins sg.r1.teamPlacement

# and reset timers
scoreboard players reset sg.r1.handler sg.r1.timer.delay1
scoreboard players reset sg.r1.handler sg.r1.timer.explanation
scoreboard players reset sg.r1.handler sg.r1.timer.delay2
scoreboard players reset sg.r1.handler sg.r1.timer.round
scoreboard players reset sg.r1.handler sg.r1.timer.delay3

# reset players alive
execute as @a[team=!SPECTATORS] at @s run scoreboard players set @s sg.alive 1
function survival_games:round1/death_handler

# randomize borderEnd
execute store result score sg.r1.handler sg.borderEnd run random value 1..4

# and reset borderStage
scoreboard players reset sg.r1.handler sg.r1.borderStage

# and reset beacons
execute in survival_games:sg1 run setblock -50 108 -50 minecraft:iron_block
execute in survival_games:sg1 run setblock 50 111 -50 minecraft:iron_block
execute in survival_games:sg1 run setblock -50 110 50 minecraft:iron_block
execute in survival_games:sg1 run setblock 50 107 50 minecraft:iron_block

# set stage to 0
scoreboard players set sg.r1.handler sg.r1.stage 0