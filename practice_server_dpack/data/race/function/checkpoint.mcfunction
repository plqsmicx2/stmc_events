# Helper function for checkpoint_update
# runs every time a player crosses a checkpoint

# helper function that updates players' mid-race placement
# called whenever a player reaches a checkpoint

# function will be called as our target player [@s]

# playsound
execute as @s at @s if score @s race.soundThisTick matches 0.. run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.4
execute as @a if score @s race.soundThisTick matches 0.. run scoreboard players remove @s race.soundThisTick 1

# reset inventory
execute if score @s race.soundThisTick matches 0 as @s run clear @s
execute if score @s race.soundThisTick matches 0 run item replace entity @s armor.feet with minecraft:leather_boots[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]