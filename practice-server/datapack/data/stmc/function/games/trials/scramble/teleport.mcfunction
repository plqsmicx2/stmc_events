# acts as the 'load' function for scramble
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in stmc:trials/scramble run tp @s 0 101 0

execute in stmc:trials/scramble at @s positioned ~ ~ ~ run playsound block.portal.travel master @s ~ ~ ~ 0.1 1.1

gamemode adventure @s

clear @s
effect clear @s

effect give @a saturation infinite 1 true
effect give @a instant_health 1 110 true

# give protective boots
item replace entity @s armor.feet with minecraft:leather_boots[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

xp set @a 0 levels
xp set @a 0 points

# set default scoreboards
