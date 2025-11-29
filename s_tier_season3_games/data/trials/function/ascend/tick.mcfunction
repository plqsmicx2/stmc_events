# tick function for acscend

# the function handles game thread

# stages:
# 0- delay 20s, waiting for players, reset world
# 1- explanation
# 2- delay 20s, countdown at 5
# 3- game active
# 4- delay 20s, reset, increment trials stage

# run the load function to initialize the game
execute unless score ascend.handler ascend.stage matches 0.. run function trials:ascend/load

# check for players on team
scoreboard players set ascend.RedRaccoons ascend.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add ascend.RedRaccoons ascend.players 1
scoreboard players set ascend.OrangeOtters ascend.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add ascend.OrangeOtters ascend.players 1
scoreboard players set ascend.PinkPikas ascend.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add ascend.PinkPikas ascend.players 1
scoreboard players set ascend.YellowYaks ascend.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add ascend.YellowYaks ascend.players 1
scoreboard players set ascend.GreenGoats ascend.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add ascend.GreenGoats ascend.players 1
scoreboard players set ascend.CyanCougars ascend.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add ascend.CyanCougars ascend.players 1
scoreboard players set ascend.PurplePenguins ascend.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add ascend.PurplePenguins ascend.players 1
scoreboard players set ascend.BlueBears ascend.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add ascend.BlueBears ascend.players 1

# update sidebar
function trials:ascend/points_update
function trials:ascend/sidebar

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,attribute_modifiers=[{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# STAGE ZERO:

# increment timer
execute if score ascend.handler ascend.stage matches 0 run \
        scoreboard players add ascend.handler ascend.timer.delay1 1

# reset world
execute if score ascend.handler ascend.timer.delay1 matches 1..50 run function trials:ascend/reset_world

# clone builds
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 5 \
        run clone -49 90 -49 49 220 49 -149 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 10 \
        run clone -49 90 -49 49 220 49 -49 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 15 \
        run clone -49 90 -49 49 220 49 51 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 20 \
        run clone -49 90 -49 49 220 49 51 90 -49
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 25 \
        run clone -49 90 -49 49 220 49 51 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 30 \
        run clone -49 90 -49 49 220 49 -49 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 35 \
        run clone -49 90 -49 49 220 49 -149 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 40 \
        run clone -49 90 -49 49 220 49 -149 90 -49
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 45 \
        run clone -49 90 -49 49 220 49 -149 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 50 \
        run clone -49 90 -49 49 220 49 -49 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 55 \
        run clone -49 90 -49 49 220 49 51 90 -149
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 60 \
        run clone -49 90 -49 49 220 49 51 90 -49
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 65 \
        run clone -49 90 -49 49 220 49 51 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 70 \
        run clone -49 90 -49 49 220 49 -49 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 75 \
        run clone -49 90 -49 49 220 49 -149 90 51
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 80 \
        run clone -49 90 -49 49 220 49 -149 90 -49

# update stage
execute if score ascend.handler ascend.stage matches 0 if score ascend.handler ascend.timer.delay1 matches 400.. run \
        scoreboard players set ascend.handler ascend.stage 1

# STAGE ONE:

# increment timer
execute if score ascend.handler ascend.stage matches 1 run \
        scoreboard players add ascend.handler ascend.timer.explanation 1

# run explanation
execute if score ascend.handler ascend.stage matches 1 run function trials:ascend/explanation

# update stage
execute if score ascend.handler ascend.stage matches 1 if score ascend.handler ascend.timer.explanation matches 800.. run scoreboard players set ascend.handler ascend.stage 2

# STAGE TWO:

# increment timer
execute if score ascend.handler ascend.stage matches 2 run scoreboard players add ascend.handler ascend.timer.delay2 1

# 5 second countdown with sound effects
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 300 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 320 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 340 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 360 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 380 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 399 run title @a title {"text":"Go!", "color":"green"}

execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.1
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.2
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.3
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.4
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# update stage
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 400.. run function trials:ascend/start_game
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 400.. run scoreboard players set ascend.handler ascend.stage 3

# STAGE THREE:

# increment game timer
execute if score ascend.handler ascend.stage matches 3 run \
        scoreboard players add ascend.handler ascend.timer.game 1

# run game
execute if score ascend.handler ascend.stage matches 3 run function trials:ascend/game_tick

# STAGE FOUR:

# increment timer
execute if score ascend.handler ascend.stage matches 4 run \
        scoreboard players add ascend.handler ascend.timer.delay3 1

# end game for players
execute if score ascend.handler ascend.timer.delay3 matches 2 run \
        gamemode spectator @a

# announce performance
execute if score ascend.handler ascend.timer.delay3 matches 100 run \
        function trials:ascend/team_announcements

# reset & move to next trials stage
execute if score ascend.handler ascend.stage matches 4 if score ascend.handler ascend.timer.delay3 matches 200.. run \
        function trials:ascend/reset