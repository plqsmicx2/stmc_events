# helper function that starts Sumo

# override pvp protections
execute as @a[team=RED_RACCOONS] if score team.RedRaccoons stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] if score team.OrangeOtters stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] if score team.PinkPikas stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] if score team.YellowYaks stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] if score team.GreenGoats stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] if score team.CyanCougars stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] if score team.PurplePenguins stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] if score team.BlueBears stats.points.team.rank matches 1..2 \
        run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# announce start
tellraw @a {text:"Go!",color:yellow}
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 2 2

# remove barrier [glass]
execute in stmc:finale run fill -3 82 -5 3 84 5 air replace tinted_glass

# standardize player values
scoreboard players set @a sumo.stats.alive 1
scoreboard players set @a sumo.stats.deaths 0

# prevent punching damage
effect give @a resistance infinite 10 true

# increment stage
scoreboard players set sumo.handler sumo.stage 3