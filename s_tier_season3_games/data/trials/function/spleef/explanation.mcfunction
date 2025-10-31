# this function delivers the explanation of how SPLEEF will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score spleef.handler spleef.timer.explanation matches 1 run gamemode spectator @a
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 1 run tp @a 20 128 -20 45 35
execute if score spleef.handler spleef.timer.explanation matches 1 run title @a title {text:"SPLEEF",color:"dark_aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:"Spleef is a very simple & traditional game.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:"There will be one round.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 160 run tp @a 25 140 25 135 33
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:"When the game begins, you will fall onto the arena below.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:"After ten seconds, you will be given tools to break blocks.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 320 run tp @a -21 104 20 -135 -15
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"There are three levels, each of which are smaller than the one above it.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"The bottom layer will be unbreakable until thirty seconds have passed.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:"The outer regions will begin decaying after a minute.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 480 run tp @a -21 104 20 -135 -15
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:"All points are determined by placement.",color:"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"Once there are only 16 players remaining, you will earn +",color:"aqua"},{"text":"1 point","color":"red"},{"text":" each time someone else dies.","color":"aqua"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"You may also earn the following bonuses:",color:"aqua"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"Top 24: +",color:"aqua"},{"text":"4 points","color":"red"},{text:" | Top 16: +",color:"aqua"},{"text":"1 point","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"Top 8: +",color:"aqua"},{"text":"1 point","color":"red"},{text:" | Top 4: +",color:"aqua"},{"text":"1 point","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a ["",{text:"Top 2: +",color:"aqua"},{"text":"1 point","color":"red"},{text:" | Top 1: +",color:"aqua"},{"text":"1 point","color":"red"}]
execute if score spleef.handler spleef.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 640 run tp @a 0 121 0 -180 90
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 640 run gamemode survival @a
execute in trials:spleef if score spleef.handler spleef.timer.explanation matches 640 run gamemode spectator @a[team=SPECTATORS]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:"The game begins in 20 seconds!","color":"aqua"}
execute if score spleef.handler spleef.timer.explanation matches 640 run tellraw @a {text:" "}