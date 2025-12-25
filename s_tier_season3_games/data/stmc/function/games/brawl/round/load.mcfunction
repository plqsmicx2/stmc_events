# load function for survival games round 1

# this function will handle all the typical stuff that happens at the beginning of a game
# excluding anything done in the parent load function

# teleport players to spawn platform
execute in stmc:brawl/main run tp @a 0 172 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
execute unless score brawl.handler brawl.roundsCompleted matches 2 run time set 12000
execute if score brawl.handler brawl.roundsCompleted matches 2 run time set 18000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn true

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
execute in stmc:brawl/main run kill @e[type=!player]

# failsafe spawn point
execute in stmc:brawl/main run spawnpoint @a 0 172 0

# set worldborder
worldborder center 0 0
worldborder set 300

# player immunities
execute as @a run attribute @s attack_damage base set 0.0
execute as @a run attribute @s knockback_resistance base set 10.0

# and wrap it up with some scoreboard stuff
# border timer
scoreboard objectives add brawl.timer.border dummy
# border stage
scoreboard objectives add brawl.borderStage dummy
# individual player death
scoreboard objectives add brawl.death deathCount
scoreboard players reset @a brawl.death
# points stuff
scoreboard objectives add brawl.round.points dummy
scoreboard objectives add brawl.round.kills playerKillCount
scoreboard objectives add brawl.round.killPoints dummy
scoreboard objectives add brawl.round.teamPlacementPoints dummy
scoreboard objectives add brawl.round.teamPlacement dummy
scoreboard objectives add brawl.currentPlacement dummy
# effects stuff
scoreboard objectives add brawl.round.killThisTick playerKillCount
scoreboard objectives add brawl.round.deathThisTick deathCount

# border
scoreboard players set @a brawl.borderDistance 200

# reset points
scoreboard players set @a brawl.round.points 0
scoreboard players set @a brawl.round.kills 0
scoreboard players set @a brawl.round.killPoints 0
scoreboard players set @a brawl.round.teamPlacementPoints 0
scoreboard players set brawl.RedRaccoons brawl.round.teamPlacement 0
scoreboard players set brawl.OrangeOtters brawl.round.teamPlacement 0
scoreboard players set brawl.PinkPikas brawl.round.teamPlacement 0
scoreboard players set brawl.YellowYaks brawl.round.teamPlacement 0
scoreboard players set brawl.GreenGoats brawl.round.teamPlacement 0
scoreboard players set brawl.CyanCougars brawl.round.teamPlacement 0
scoreboard players set brawl.PurplePenguins brawl.round.teamPlacement 0
scoreboard players set brawl.BlueBears brawl.round.teamPlacement 0

scoreboard players set @a brawl.round.killThisTick 0
scoreboard players set @a brawl.round.deathThisTick 0

# and reset timers
scoreboard players set brawl.handler brawl.timer.round 0
scoreboard players set brawl.handler brawl.timer.border 0

# reset players alive
execute as @a[team=!SPECTATORS] at @s run scoreboard players set @s brawl.alive 1
execute as @a[team=!SPECTATORS] at @s run scoreboard players set @s brawl.death 0
function stmc:games/brawl/round/helper/death_handler

# and reset borderStage
scoreboard players reset brawl.handler brawl.borderStage