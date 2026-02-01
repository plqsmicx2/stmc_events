# this function starts a game of race for a target player

# the function is run as @s

# set player to currently playing
scoreboard players set @s race.gameActive 1

# and track that a player is currently playing (if no one else was playing)
execute unless score race.handler race.gameActive matches 1 run \
        scoreboard players set race.handler race.gameActive 1

# set effects
effect give @a saturation infinite 0 true
effect give @a resistance infinite 10 true
effect give @a dolphins_grace infinite 1 true
effect give @a water_breathing infinite 0 true

# give protective boots
item replace entity @s armor.feet with minecraft:leather_boots[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# teleport player
execute in stmc:race/daveys_descent run tp @s -13 105.5 14 -180 0