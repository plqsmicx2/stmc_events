# this function delivers the explanation of how DISCO will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score disco.handler disco.timer.explanation matches 1 run gamemode spectator @a
execute in trials:disco if score disco.handler disco.timer.explanation matches 1 run tp @a -12 117 -12 -40 40
execute if score disco.handler disco.timer.explanation matches 1 run title @a title {text:"DISCO",color:"dark_aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"Disco is a fast-paced reaction focused game.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:"There will be one round.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score disco.handler disco.timer.explanation matches 160 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..16
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..16
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=upper_level] positioned as @s in trials:disco run clone ~ ~ ~ ~8 ~ ~8 -4 107 -4
execute if score disco.handler disco.timer.explanation matches 160 run kill @e[tag=upper_level]
execute if score disco.handler disco.timer.explanation matches 160 if score disco.handler disco.timer.game matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["lower_level"]}
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=lower_level] store result entity @s Pos[0] double 1 run random value -25..14
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=lower_level] store result entity @s Pos[1] double 1 run random value 20..70
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=lower_level] store result entity @s Pos[2] double 1 run random value -25..14
execute if score disco.handler disco.timer.explanation matches 160 as @e[tag=lower_level] positioned as @s in trials:disco run clone ~ ~ ~ ~10 ~ ~10 -5 103 -5
execute if score disco.handler disco.timer.explanation matches 160 run kill @e[tag=lower_level]

execute in trials:disco if score disco.handler disco.timer.explanation matches 160 run tp @a 0 120 0 0 90
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"When the game begins, the floor will randomize with multiple blocks.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"You will be given one of the random blocks on the floor.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:"Quickly maneuver so that you are standing on the block you are holding.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:black_concrete
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:stripped_dark_oak_wood
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:snow_block
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:moss_block
execute in trials:disco if score disco.handler disco.timer.explanation matches 320 run fill -5 103 -5 5 107 5 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:"As the game progresses, you will have less time.",color:"aqua"}
execute if score disco.handler disco.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in trials:disco if score disco.handler disco.timer.explanation matches 480 run tp @a -27 91 27 -135 5
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"You will earn +",color:"aqua"},{"text":"1 point","color":"red"},{"text":" each six rounds you survive.","color":"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"You will also earn the following placement points:",color:"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{"text":"Top 16: +","color":"aqua"},{"text":"1 point","color":"red"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{"text":"Top 8: +","color":"aqua"},{"text":"1 point","color":"red"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{"text":"Top 4: +","color":"aqua"},{"text":"1 point","color":"red"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{"text":"Top 2: +","color":"aqua"},{"text":"1 point","color":"red"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a ["",{text:"If you survive all 60 rounds, you will earn a bonus +",color:"aqua"},{"text":"2 points","color":"red"},{"text":".","color":"aqua"}]
execute if score disco.handler disco.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in trials:disco if score disco.handler disco.timer.explanation matches 640 run tp @a 0 110 0 0 30
execute in trials:disco if score disco.handler disco.timer.explanation matches 640 run fill 4 107 4 -4 107 -4 tinted_glass
execute in trials:disco if score disco.handler disco.timer.explanation matches 640 run fill 5 103 5 -5 103 -5 tinted_glass
execute if score disco.handler disco.timer.explanation matches 640 run gamemode adventure @a
execute if score disco.handler disco.timer.explanation matches 640 run gamemode spectator @a[team=SPECTATORS]
execute if score disco.handler disco.timer.explanation matches 640 run effect give @a minecraft:resistance infinite 10 true
execute if score disco.handler disco.timer.explanation matches 640 run effect give @a minecraft:saturation infinite 2 true
execute if score disco.handler disco.timer.explanation matches 640 run effect give @a minecraft:invisibility infinite 0 true
execute if score disco.handler disco.timer.explanation matches 640 run effect give @a minecraft:instant_health 1 110 true

execute if score disco.handler disco.timer.explanation matches 640 as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:"The round beings in 20 seconds!","color":"aqua"}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score disco.handler disco.timer.explanation matches 640 run tellraw @a {text:" "}