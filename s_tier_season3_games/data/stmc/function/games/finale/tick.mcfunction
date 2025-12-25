# tick function for finale

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game

# run load function if this is our first time here
execute unless score finale.handler finale.stage matches 0.. run function stmc:games/finale/load

function stmc:lobby/final/sidebar with storage stmc:global

# reset attributes
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s attack_speed base reset
execute as @a run attribute @s knockback_resistance base reset

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# if we're in stage 0, increment timer
execute if score finale.handler finale.stage matches 0 run scoreboard players add finale.handler finale.timer.delay1 1
execute if score finale.handler finale.stage matches 0 if score finale.handler finale.timer.delay1 matches 400.. run scoreboard players set finale.handler finale.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score finale.handler finale.stage matches 1 run scoreboard players add finale.handler finale.timer.explanation 1
execute if score finale.handler finale.stage matches 1 run function stmc:games/finale/explanation
execute if score finale.handler finale.stage matches 1 if score finale.handler finale.timer.explanation matches 480.. run scoreboard players set finale.handler finale.stage 2

# if we're in stage 2, increment timer & run game
execute if score finale.handler finale.stage matches 2 run scoreboard players add finale.handler finale.timer.game 1
execute if score finale.handler finale.stage matches 2 run function stmc:games/finale/game_tick

# if we're in stage 3, increment timer & reset
execute if score finale.handler finale.stage matches 3 run scoreboard players add finale.handler finale.timer.delay2 1
execute if score finale.handler finale.stage matches 3 if score finale.handler finale.timer.delay2 matches 5 run function stmc:games/finale/announce_winner
execute if score finale.handler finale.stage matches 3 if score finale.handler finale.timer.delay2 matches 60.. run function stmc:games/finale/reset