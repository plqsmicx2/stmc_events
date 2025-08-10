# load function for replicate [REPLICATE]

# this function is called as the game is starting to initialize everything

# teleport players
execute in trials:replicate as @a[team=RED_RACCOONS] run tp @s 39 113 18
execute in trials:replicate as @a[team=ORANGE_OTTERS] run tp @s 0 113 18
execute in trials:replicate as @a[team=PINK_PIKAS] run tp @s -39 113 18
execute in trials:replicate as @a[team=GREEN_GOATS] run tp @s -39 113 -18
execute in trials:replicate as @a[team=CYAN_COUGARS] run tp @s 0 113 -18
execute in trials:replicate as @a[team=PURPLE_PENGUINS] run tp @s 39 113 -18

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation infinite 1 true
effect give @a mining_fatigue infinite 2 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0

# kill all entities
execute in trials:replicate run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# scoreboard stuff
# timers
scoreboard objectives add replicate.timer.delay1 dummy
scoreboard objectives add replicate.timer.explanation dummy
scoreboard objectives add replicate.timer.delay2 dummy
scoreboard objectives add replicate.timer.game dummy
scoreboard objectives add replicate.timer.game.tempTimer dummy
scoreboard objectives add replicate.timer.game.secondsLeft dummy
scoreboard objectives add replicate.timer.game.minsLeft dummy
scoreboard objectives add replicate.timer.build1 dummy
scoreboard objectives add replicate.timer.build2 dummy
scoreboard objectives add replicate.timer.build3 dummy
scoreboard objectives add replicate.timer.build4 dummy
scoreboard objectives add replicate.timer.build5 dummy
scoreboard objectives add replicate.timer.build6 dummy
scoreboard objectives add replicate.timer.builds dummy
scoreboard objectives add replicate.timer.delay3 dummy
# game active scoreboards
# multi-use one: handler uses to test how many teams are done; teams use store if all builds are done; players use to test if the active build is done
scoreboard objectives add replicate.completed dummy
scoreboard objectives add replicate.playersCompleted dummy
# points stuff
scoreboard objectives add replicate.points.indiv dummy
scoreboard objectives add replicate.points.team dummy
scoreboard objectives add replicate.points.rank.overall dummy
scoreboard objectives add replicate.points.rank.build1 dummy
scoreboard objectives add replicate.points.rank.build2 dummy
scoreboard objectives add replicate.points.rank.build3 dummy
scoreboard objectives add replicate.points.rank.build4 dummy
scoreboard objectives add replicate.points.rank.build5 dummy
scoreboard objectives add replicate.points.rank.build6 dummy
scoreboard objectives add replicate.team.rank dummy

# reset some scoreboards
scoreboard players reset @a replicate.points.indiv
scoreboard players reset replicate.handler replicate.timer.delay1
scoreboard players reset replicate.handler replicate.timer.explanation
scoreboard players reset replicate.handler replicate.timer.delay2
scoreboard players reset replicate.handler replicate.timer.game
scoreboard players reset replicate.handler replicate.timer.game.tempTimer
scoreboard players set replicate.handler replicate.timer.game.secondsLeft 0
scoreboard players set replicate.handler replicate.timer.game.minsLeft 4
scoreboard players reset replicate.handler replicate.timer.delay3

scoreboard players reset replicate.RedRaccoons replicate.timer.build1
scoreboard players reset replicate.RedRaccoons replicate.timer.build2
scoreboard players reset replicate.RedRaccoons replicate.timer.build3
scoreboard players reset replicate.RedRaccoons replicate.timer.build4
scoreboard players reset replicate.RedRaccoons replicate.timer.build5
scoreboard players reset replicate.RedRaccoons replicate.timer.build6
scoreboard players reset replicate.RedRaccoons replicate.completed

scoreboard players reset replicate.OrangeOtters replicate.timer.build1
scoreboard players reset replicate.OrangeOtters replicate.timer.build2
scoreboard players reset replicate.OrangeOtters replicate.timer.build3
scoreboard players reset replicate.OrangeOtters replicate.timer.build4
scoreboard players reset replicate.OrangeOtters replicate.timer.build5
scoreboard players reset replicate.OrangeOtters replicate.timer.build6
scoreboard players reset replicate.OrangeOtters replicate.completed

scoreboard players reset replicate.PinkPikas replicate.timer.build1
scoreboard players reset replicate.PinkPikas replicate.timer.build2
scoreboard players reset replicate.PinkPikas replicate.timer.build3
scoreboard players reset replicate.PinkPikas replicate.timer.build4
scoreboard players reset replicate.PinkPikas replicate.timer.build5
scoreboard players reset replicate.PinkPikas replicate.timer.build6
scoreboard players reset replicate.PinkPikas replicate.completed

scoreboard players reset replicate.GreenGoats replicate.timer.build1
scoreboard players reset replicate.GreenGoats replicate.timer.build2
scoreboard players reset replicate.GreenGoats replicate.timer.build3
scoreboard players reset replicate.GreenGoats replicate.timer.build4
scoreboard players reset replicate.GreenGoats replicate.timer.build5
scoreboard players reset replicate.GreenGoats replicate.timer.build6
scoreboard players reset replicate.GreenGoats replicate.completed

scoreboard players reset replicate.CyanCougars replicate.timer.build1
scoreboard players reset replicate.CyanCougars replicate.timer.build2
scoreboard players reset replicate.CyanCougars replicate.timer.build3
scoreboard players reset replicate.CyanCougars replicate.timer.build4
scoreboard players reset replicate.CyanCougars replicate.timer.build5
scoreboard players reset replicate.CyanCougars replicate.timer.build6
scoreboard players reset replicate.CyanCougars replicate.completed

scoreboard players reset replicate.PurplePenguins replicate.timer.build1
scoreboard players reset replicate.PurplePenguins replicate.timer.build2
scoreboard players reset replicate.PurplePenguins replicate.timer.build3
scoreboard players reset replicate.PurplePenguins replicate.timer.build4
scoreboard players reset replicate.PurplePenguins replicate.timer.build5
scoreboard players reset replicate.PurplePenguins replicate.timer.build6
scoreboard players reset replicate.PurplePenguins replicate.completed

# and set stages to 0
scoreboard players set replicate.handler replicate.stage 0
scoreboard players set replicate.RedRaccoons replicate.stage 0
scoreboard players set replicate.OrangeOtters replicate.stage 0
scoreboard players set replicate.PinkPikas replicate.stage 0
scoreboard players set replicate.GreenGoats replicate.stage 0
scoreboard players set replicate.CyanCougars replicate.stage 0
scoreboard players set replicate.PurplePenguins replicate.stage 0