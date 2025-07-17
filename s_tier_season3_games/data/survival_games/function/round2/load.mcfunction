# load function for survival games round 2

# this function will handle all the typical stuff that happens at the beginning of a game
# excluding anything done in the parent load function

# teleport players to spawn platform
execute in survival_games:sg2 run tp @a 0 178 0

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
effect give @a regeneration 10 1 true
effect give @a resistance infinite 10 true

# set xp
xp set @a 0

# kill all entities
execute in survival_games:sg2 run kill @e[type=!player]

# failsafe spawn point
execute in survival_games:sg2 run spawnpoint @a 0 178 0

# set world protections
yawp dim survival_games:sg2 delete-all regions
yawp dim survival_games:sg2 create local sg2-spawn Cuboid -10 174 -10 10 181 10
yawp local survival_games:sg2 sg2-spawn add flag no-pvp Allowed
yawp local survival_games:sg2 sg2-spawn add flag melee-players Denied
yawp local survival_games:sg2 sg2-spawn add flag no-hunger Allowed
yawp dim survival_games:sg2 create local sg2-world Cuboid -200 100 -200 200 200 200
yawp local survival_games:sg2 sg2-world add flag break-blocks Denied
yawp local survival_games:sg2 sg2-world add flag spawning-all Denied
yawp local survival_games:sg2 sg2-world add flag fall-damage Denied

# set worldborder
worldborder center 0 0
worldborder set 250

# assign elytra to players' chest slot
item replace entity @a armor.chest with minecraft:elytra

# and wrap it up with some scoreboard stuff
# initial delay timer
scoreboard objectives add sg.r2.timer.delay1 dummy
# post-explanation delay timer
scoreboard objectives add sg.r2.timer.delay2 dummy
# round timer (only used to control border)
scoreboard objectives add sg.r2.timer.round dummy
# post-round timer
scoreboard objectives add sg.r2.timer.delay3 dummy
# border stage
scoreboard objectives add sg.r2.borderStage dummy
# individual player death
scoreboard objectives add sg.r2.death deathCount
scoreboard players reset @a sg.r2.death
scoreboard objectives add sg.r2.deathThisTick dummy
# points stuff
scoreboard objectives add sg.r2.points dummy
scoreboard objectives add sg.r2.kills playerKillCount
scoreboard objectives add sg.r2.killPoints dummy
scoreboard objectives add sg.r2.indivPlacementPoints dummy
scoreboard objectives add sg.r2.teamPlacementPoints dummy
scoreboard objectives add sg.r2.teamPlacement dummy
scoreboard objectives add sg.r2.currentPlacement dummy

# reset points
scoreboard players set @a sg.r2.points 0
scoreboard players set @a sg.r2.kills 0
scoreboard players set @a sg.r2.killPoints 0
scoreboard players set @a sg.r2.indivPlacementPoints 0
scoreboard players set @a sg.r2.teamPlacementPoints 0
scoreboard players reset sg.RedRaccoons sg.r2.teamPlacement
scoreboard players reset sg.OrangeOtters sg.r2.teamPlacement
scoreboard players reset sg.PinkPikas sg.r2.teamPlacement
scoreboard players reset sg.GreenGoats sg.r2.teamPlacement
scoreboard players reset sg.CyanCougars sg.r2.teamPlacement
scoreboard players reset sg.PurplePenguins sg.r2.teamPlacement

# and reset timers
scoreboard players reset sg.r2.handler sg.r2.timer.delay1
scoreboard players reset sg.r2.handler sg.r2.timer.delay2
scoreboard players reset sg.r2.handler sg.r2.timer.round
scoreboard players reset sg.r2.handler sg.r2.timer.delay3

# reset players alive
execute as @a at @s run scoreboard players set @s sg.alive 1
function survival_games:round2/death_handler

# randomize borderEnd
execute store result score sg.r2.handler sg.borderEnd run random value 1..4

# and reset borderStage
scoreboard players reset sg.r2.handler sg.r2.borderStage

# and reset beacons
execute in survival_games:sg2 run setblock -50 108 -50 minecraft:iron_block
execute in survival_games:sg2 run setblock 50 111 -50 minecraft:iron_block
execute in survival_games:sg2 run setblock -50 110 50 minecraft:iron_block
execute in survival_games:sg2 run setblock 50 107 50 minecraft:iron_block

# set stage to 0
scoreboard players set sg.r2.handler sg.r2.stage 0