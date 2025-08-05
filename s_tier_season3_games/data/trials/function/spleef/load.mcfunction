# load function for spleef [SPLEEF]

# this function is called to initialize spleef

# teleport players
execute in trials:spleef run tp @a 0 152 0

# force gamemode
gamemode survival @a
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

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 10 1 true

# give effects
effect give @a night_vision infinite 0 true
effect give @a saturation infinite 0 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in trials:spleef run kill @e[type=!player]

# reset world
execute in trials:spleef run fill -15 103 -15 15 106 15 minecraft:chiseled_tuff_bricks replace minecraft:snow_block

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# scoreboard stuff
# timers
scoreboard objectives add spleef.timer.delay1 dummy
scoreboard objectives add spleef.timer.explanation dummy
scoreboard objectives add spleef.timer.delay2 dummy
scoreboard objectives add spleef.timer.game dummy
scoreboard objectives add spleef.timer.delay3 dummy
# stats
scoreboard objectives add spleef.players_alive dummy
scoreboard objectives add spleef.teams_alive dummy
scoreboard objectives add spleef.alive dummy
# points
scoreboard objectives add spleef.points.indiv dummy
scoreboard objectives add spleef.points.player.rank dummy
scoreboard objectives add spleef.points.team dummy
scoreboard objectives add spleef.points.team.rank dummy
# handlers
scoreboard objectives add spleef.deathThisTick dummy

# (re)set scoreboards
scoreboard players set spleef.handler spleef.stage 0

scoreboard players set spleef.handler spleef.timer.delay1 0
scoreboard players set spleef.handler spleef.timer.explanation 0
scoreboard players set spleef.handler spleef.timer.delay2 0
scoreboard players set spleef.handler spleef.timer.game 0
scoreboard players set spleef.handler spleef.timer.delay3 0

scoreboard players set @a[team=!SPECTATORS] spleef.alive 1

scoreboard players set @a spleef.points.indiv 0

scoreboard objectives remove spleef.sidebar