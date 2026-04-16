# this function starts a game of race for a target player

# the function is run as @s

# start music
execute in stmc:race/daveys_dream run playsound music_disc.5 record @s 0 10000 0 1000 1 1

# make sure checkpoint entities are present
execute in stmc:race/daveys_dream run function stmc:games/race/utils/spawn_checkpoints/daveys_dream

# set player to currently playing
scoreboard players set @s race.gameActive 3

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
execute in stmc:race/daveys_dream run tp @s -79.5 133.0 33.5 -95 5