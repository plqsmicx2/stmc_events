# acts as the 'load' function for race
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:race/daveys_descent run tp @s 0 100 197

execute in stmc:race/daveys_descent at @s positioned ~ ~ ~ run playsound block.portal.travel master @s ~ ~ ~ 0.1 1.1

gamemode adventure @s

clear @s
effect clear @s

effect give @s saturation 1 1 true
effect give @s instant_health 1 110 true

xp set @s 0 levels
xp set @s 0 points

# make sure checkpoint entities are present
execute in stmc:race/daveys_descent run function stmc:games/race/utils/spawn_checkpoints

# set default scoreboards
scoreboard players set @s race.laps_completed 0
scoreboard players set @s race.laptime.1 0
scoreboard players set @s race.laptime.2 0
scoreboard players set @s race.laptime.3 0
scoreboard players set @s race.laptime.4 0
scoreboard players set @s race.laptime.total 0
scoreboard players set @s race.laptime.tick 0
scoreboard players set @s race.laptime.seconds 0
scoreboard players set @s race.laptime.mins 0
scoreboard players set @s race.fastest_lap 0
scoreboard players set @s race.checkpoints_completed 0
scoreboard players set @s race.soundThisTick 0
scoreboard players set @s race.effectDelay 0

execute unless score @s race.daveysDivide.lap matches 0.. run \
        scoreboard players set @s race.daveysDivide.lap 14400
execute unless score @s race.daveysDivide.time matches 0.. run \
        scoreboard players set @s race.daveysDivide.lap 14400
execute unless score @s race.daveysDescent.lap matches 0.. run \
        scoreboard players set @s race.daveysDescent.lap 14400
execute unless score @s race.daveysDescent.time matches 0.. run \
        scoreboard players set @s race.daveysDescent.lap 14400