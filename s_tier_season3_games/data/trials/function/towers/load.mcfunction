# load function for spleef [SPLEEF]

# this function is called to initialize spleef

# teleport players
execute in trials:towers run tp @a 0 104 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# set time
time set 18000

# clear inventories
clear @a

# clear effects
effect clear @a

# set max health
execute as @a run attribute @s minecraft:max_health base set 6

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 10 1 true

# give effects
effect give @a night_vision infinite 1 true
effect give @a invisibility infinite 1 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in trials:towers run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never

# scoreboard stuff
# timers
scoreboard objectives add towers.timer.delay1 dummy
scoreboard objectives add towers.timer.explanation dummy
scoreboard objectives add towers.timer.delay2 dummy
scoreboard objectives add towers.timer.game dummy
scoreboard objectives add towers.timer.game.summon dummy
scoreboard objectives add towers.timer.game.tickCounter dummy
scoreboard objectives add towers.timer.game.secondsElapsed dummy
scoreboard objectives add towers.timer.game.minsElapsed dummy
scoreboard objectives add towers.timer.delay3 dummy
# stats
scoreboard objectives add towers.players_alive dummy
scoreboard objectives add towers.teams_alive dummy
scoreboard objectives add towers.alive dummy
scoreboard objectives add towers.deathCounter deathCount
# points
scoreboard objectives add towers.points.indiv dummy
scoreboard objectives add towers.points.player.rank dummy
scoreboard objectives add towers.points.team dummy
scoreboard objectives add towers.points.team.rank dummy
# handlers
scoreboard objectives add towers.deathThisTick dummy

# (re)set scoreboards
scoreboard players set towers.handler towers.stage 0

scoreboard players set towers.handler towers.timer.delay1 0
scoreboard players set towers.handler towers.timer.explanation 0
scoreboard players set towers.handler towers.timer.delay2 0
scoreboard players set towers.handler towers.timer.game 0
scoreboard players set towers.handler towers.timer.game.summon 0
scoreboard players set towers.handler towers.timer.game.tickCounter 0
scoreboard players set towers.handler towers.timer.game.secondsElapsed 0
scoreboard players set towers.handler towers.timer.game.minsElapsed 0
scoreboard players set towers.handler towers.timer.delay3 0

scoreboard players set @a[team=!SPECTATORS] towers.alive 1
scoreboard players set @a towers.deathCounter 0

scoreboard players set @a towers.points.indiv 0

scoreboard objectives remove towers.sidebar
function trials:towers/death_handler