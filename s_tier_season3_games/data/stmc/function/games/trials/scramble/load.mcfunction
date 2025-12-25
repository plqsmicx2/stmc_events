# this function runs whenever beginning the scramble game

# teleport players to spawn platform
execute in stmc:trials/scramble run tp @a 0 117 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 12000

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
effect give @a saturation 1 1 true
effect give @a regeneration 5 1 true
effect give @a resistance infinite 10 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in stmc:trials/scramble run kill @e[type=!player]

# failsafe spawn point
execute in stmc:trials/scramble run spawnpoint @a 0 108 0

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify YELLOW_YAKS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never
team modify BLUE_BEARS collisionRule never

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add scramble.timer.delay1 dummy
scoreboard objectives add scramble.timer.explanation dummy
scoreboard objectives add scramble.timer.delay2 dummy
scoreboard objectives add scramble.timer.example dummy
scoreboard objectives add scramble.timer.delay3 dummy
scoreboard objectives add scramble.timer.game dummy
scoreboard objectives add scramble.timer.delay4 dummy
# stats
scoreboard objectives add scramble.rounds_played dummy
scoreboard objectives add scramble.example_rounds dummy
scoreboard objectives add scramble.players_alive dummy
scoreboard objectives add scramble.teams_alive dummy
scoreboard objectives add scramble.alive dummy
# points=
scoreboard objectives add scramble.points.indiv dummy
scoreboard objectives add scramble.points.placement dummy
scoreboard objectives add scramble.points.rounds dummy
scoreboard objectives add scramble.points.player.rank dummy
scoreboard objectives add scramble.points.team dummy
scoreboard objectives add scramble.points.team.rank dummy
# handlers
scoreboard objectives add scramble.current_round_length dummy
scoreboard objectives add scramble.current_round_length_delay dummy
scoreboard objectives add scramble.current_round_block dummy
scoreboard objectives add scramble.deathThisTick dummy

# (re)set all necessary values
scoreboard players set scramble.handler scramble.stage 0

scoreboard players set scramble.handler scramble.timer.delay1 0
scoreboard players set scramble.handler scramble.timer.explanation 0
scoreboard players set scramble.handler scramble.timer.delay2 0
scoreboard players set scramble.handler scramble.timer.example 0
scoreboard players set scramble.handler scramble.timer.delay3 0
scoreboard players set scramble.handler scramble.timer.game 0
scoreboard players set scramble.handler scramble.timer.delay4 0

scoreboard players set scramble.handler scramble.rounds_played 0
scoreboard players set scramble.handler scramble.example_rounds 0
scoreboard players set @a[team=!SPECTATORS] scramble.alive 1

scoreboard players set @a scramble.points.indiv 0
scoreboard players set @a scramble.points.rounds 0

scoreboard players set scramble.handler scramble.current_round_length 40
scoreboard players set scramble.handler scramble.current_round_length_delay 80
scoreboard players set scramble.handler scramble.current_round_block -1

scoreboard objectives remove scramble.sidebar
function stmc:games/trials/scramble/death_handler
scoreboard players set @a scramble.points.placement 32