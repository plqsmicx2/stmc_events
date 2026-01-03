# load function for finale

# teleport players to spawn
execute in stmc:finale run tp @a 0 109.5 0

# and each competing team to their spawns
execute in stmc:finale run tp @a[scores={finale.team1=1..}] 0 102 27 180 0
execute in stmc:finale run tp @a[scores={finale.team2=1..}] 0 102 -28 0 0

# manual spawn
execute in stmc:finale run spawnpoint @a 0 110 0

# set barriers
execute in stmc:finale run fill -3 101 24 3 104 24 tinted_glass
execute in stmc:finale run fill -3 100 24 3 100 24 black_concrete
execute in stmc:finale run fill -3 101 -24 3 104 -24 tinted_glass
execute in stmc:finale run fill -3 100 -24 3 100 -24 black_concrete

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

# give inventory
execute as @a[scores={finale.competitor=1..}] run function stmc:games/finale/games/fight/helper/inventory

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add fight.timer.delay1 dummy
scoreboard objectives add fight.timer.explanation dummy
scoreboard objectives add fight.timer.delay2 dummy
scoreboard objectives add fight.timer.game dummy
scoreboard objectives add fight.timer.delay3 dummy
# stats
scoreboard objectives add fight.stats.alive dummy
scoreboard objectives add fight.stats.deaths deathCount

# (re)set all necessary values
scoreboard players set fight.handler fight.stage 0

scoreboard players set fight.handler fight.timer.delay1 0
scoreboard players set fight.handler fight.timer.explanation 0
scoreboard players set fight.handler fight.timer.delay2 0
scoreboard players set fight.handler fight.timer.game 0
scoreboard players set fight.handler fight.timer.delay3 0

scoreboard players set @a fight.stats.alive 0
scoreboard players set @a[scores={finale.competitor=1..}] fight.stats.alive 1
scoreboard players set @a fight.stats.deaths 0