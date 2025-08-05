# this function runs whenever beginning the disco game

# teleport players to spawn platform
execute in trials:disco run tp @a 0 109 0

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
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in trials:disco run kill @e[type=!player]

# failsafe spawn point
execute in trials:disco run spawnpoint @a 0 108 0

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

# give everyone leather boots
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add disco.timer.delay1 dummy
scoreboard objectives add disco.timer.explanation dummy
scoreboard objectives add disco.timer.delay2 dummy
scoreboard objectives add disco.timer.example dummy
scoreboard objectives add disco.timer.delay3 dummy
scoreboard objectives add disco.timer.game dummy
scoreboard objectives add disco.timer.delay4 dummy
# stats
scoreboard objectives add disco.rounds_played dummy
scoreboard objectives add disco.example_rounds dummy
scoreboard objectives add disco.players_alive dummy
scoreboard objectives add disco.teams_alive dummy
scoreboard objectives add disco.alive dummy
# points=
scoreboard objectives add disco.points.indiv dummy
scoreboard objectives add disco.points.player.rank dummy
scoreboard objectives add disco.points.team dummy
scoreboard objectives add disco.points.team.rank dummy
# handlers
scoreboard objectives add disco.current_round_length dummy
scoreboard objectives add disco.current_round_length_delay dummy
scoreboard objectives add disco.current_round_block dummy
scoreboard objectives add disco.deathThisTick dummy

# (re)set all necessary values
scoreboard players set disco.handler disco.stage 0

scoreboard players set disco.handler disco.timer.delay1 0
scoreboard players set disco.handler disco.timer.explanation 0
scoreboard players set disco.handler disco.timer.delay2 0
scoreboard players set disco.handler disco.timer.example 0
scoreboard players set disco.handler disco.timer.delay3 0
scoreboard players set disco.handler disco.timer.game 0
scoreboard players set disco.handler disco.timer.delay4 0

scoreboard players set disco.handler disco.rounds_played 0
scoreboard players set disco.handler disco.example_rounds 0
scoreboard players set @a[team=!SPECTATORS] disco.alive 1

scoreboard players set @a disco.points.indiv 0

scoreboard players set disco.handler disco.current_round_length 40
scoreboard players set disco.handler disco.current_round_length_delay 80
scoreboard players set disco.handler disco.current_round_block -1

scoreboard objectives remove disco.sidebar