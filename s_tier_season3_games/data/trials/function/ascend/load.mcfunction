# load function for ascend

# this function is called as the game is starting to initialize everything

# teleport players
execute in trials:ascend run tp @a 0 78 0 180 0

# add forceload to ensure reset_world works
execute in trials:ascend run forceload add -150 -150 150 150

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# and attributes
execute as @a run attribute @s block_interaction_range base set 1

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation infinite 1 true
effect give @a mining_fatigue infinite 2 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in trials:ascend run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# scoreboard stuff
# timers
scoreboard objectives add ascend.timer.delay1 dummy
scoreboard objectives add ascend.timer.explanation dummy
scoreboard objectives add ascend.timer.delay2 dummy
scoreboard objectives add ascend.timer.game dummy
scoreboard objectives add ascend.timer.game.tempTimer dummy
scoreboard objectives add ascend.timer.game.secondsLeft dummy
scoreboard objectives add ascend.timer.game.minsLeft dummy
scoreboard objectives add ascend.timer.delay3 dummy
# game active scoreboards
# multi-use one: handler uses to test how many teams are done; teams use to store how many rooms are completed
scoreboard objectives add ascend.completed dummy
scoreboard objectives add ascend.playersCompleted dummy
# player points
scoreboard objectives add ascend.points.indiv dummy
scoreboard objectives add ascend.points.indiv.rank dummy
# team points
scoreboard objectives add ascend.points.team dummy
scoreboard objectives add ascend.points.team.rank dummy
# player count on team
scoreboard objectives add ascend.players dummy
# points

# reset some scoreboards
scoreboard players reset @a ascend.points.indiv
scoreboard players reset ascend.handler ascend.timer.delay1
scoreboard players reset ascend.handler ascend.timer.explanation
scoreboard players reset ascend.handler ascend.timer.delay2
scoreboard players reset ascend.handler ascend.timer.game
scoreboard players reset ascend.handler ascend.timer.game.tempTimer
scoreboard players set ascend.handler ascend.timer.game.secondsLeft 0
scoreboard players set ascend.handler ascend.timer.game.minsLeft 4
scoreboard players reset ascend.handler ascend.timer.delay3

# set stages to 0
scoreboard players set ascend.handler ascend.stage 0

scoreboard players set ascend.handler ascend.completed 0
scoreboard players set ascend.RedRaccoons ascend.completed 0
scoreboard players set ascend.OrangeOtters ascend.completed 0
scoreboard players set ascend.YellowYaks ascend.completed 0
scoreboard players set ascend.PinkPikas ascend.completed 0
scoreboard players set ascend.GreenGoats ascend.completed 0
scoreboard players set ascend.CyanCougars ascend.completed 0
scoreboard players set ascend.PurplePenguins ascend.completed 0
scoreboard players set ascend.BlueBears ascend.completed 0
