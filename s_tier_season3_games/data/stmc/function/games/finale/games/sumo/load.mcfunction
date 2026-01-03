# load function for finale

# teleport players to spawn
execute in stmc:finale run tp @a 10 87.5 0 90 10

# and each competing team to their spawns
execute in stmc:finale run tp @a[scores={finale.team1=1..}] 0 82 9 180 0
execute in stmc:finale run tp @a[scores={finale.team2=1..}] 0 82 -9 0 0

# manual spawn
execute in stmc:finale run spawnpoint @a 10 88 0

# set barriers
execute in stmc:finale run fill -3 82 -5 3 84 -5 tinted_glass
execute in stmc:finale run fill -3 82 5 3 84 5 tinted_glass

# force gamemode
gamemode adventure @a

# set time
time set 19000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn true
gamerule natural_health_regeneration false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true
effect give @a resistance 1 10 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in stmc:finale run kill @e[type=!player]

# reset attributes
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s attack_speed base reset
execute as @a run attribute @s knockback_resistance base reset
execute as @a run attribute @s fall_damage_multiplier base set 0

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add sumo.timer.delay1 dummy
scoreboard objectives add sumo.timer.explanation dummy
scoreboard objectives add sumo.timer.delay2 dummy
scoreboard objectives add sumo.timer.game dummy
scoreboard objectives add sumo.timer.delay3 dummy
# stats
scoreboard objectives add sumo.stats.alive dummy
scoreboard objectives add sumo.stats.deaths deathCount

# (re)set all necessary values
scoreboard players set sumo.handler sumo.stage 0

scoreboard players set sumo.handler sumo.timer.delay1 0
scoreboard players set sumo.handler sumo.timer.explanation 0
scoreboard players set sumo.handler sumo.timer.delay2 0
scoreboard players set sumo.handler sumo.timer.game 0
scoreboard players set sumo.handler sumo.timer.delay3 0

scoreboard players set @a sumo.stats.alive 0
scoreboard players set @a[scores={finale.competitor=1..}] sumo.stats.alive 1
scoreboard players set @a sumo.stats.deaths 0