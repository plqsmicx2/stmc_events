# load function for replicate [REPLICATE]

# this function is called as the game is starting to initialize everything

# teleport players
execute in trials:replicate as @a[team=RED_RACCOONS] run tp @s 45 105 64 90 0
execute in trials:replicate as @a[team=ORANGE_OTTERS] run tp @s 45 105 21 90 0
execute in trials:replicate as @a[team=PINK_PIKAS] run tp @s 45 105 -22 90 0
execute in trials:replicate as @a[team=YELLOW_YAKS] run tp @s 45 105 -65 90 0
execute in trials:replicate as @a[team=GREEN_GOATS] run tp @s -45 105 -65 -90 0
execute in trials:replicate as @a[team=CYAN_COUGARS] run tp @s -45 105 -22 -90 0
execute in trials:replicate as @a[team=PURPLE_PENGUINS] run tp @s -45 105 21 -90 0
execute in trials:replicate as @a[team=BLUE_BEARS] run tp @s -45 105 64 -90 0

# force gamemode
gamemode adventure @a
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
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in trials:replicate run kill @e[type=!player]

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
# player points
scoreboard objectives add replicate.points.indiv dummy
scoreboard objectives add replicate.points.indiv.rank dummy
# team points
scoreboard objectives add replicate.points.team dummy
scoreboard objectives add replicate.points.team.rank dummy
# player count on team (for use in splitting team points)
scoreboard objectives add replicate.players dummy
# ranking overall & per build
scoreboard objectives add replicate.points.rank.overall dummy
scoreboard objectives add replicate.points.rank.build1 dummy
scoreboard objectives add replicate.points.rank.build2 dummy
scoreboard objectives add replicate.points.rank.build3 dummy
scoreboard objectives add replicate.points.rank.build4 dummy
scoreboard objectives add replicate.points.rank.build5 dummy
scoreboard objectives add replicate.points.rank.build6 dummy
# points overall & per build
scoreboard objectives add replicate.points.overall.rank1 dummy
scoreboard objectives add replicate.points.overall.rank2 dummy
scoreboard objectives add replicate.points.overall.rank3 dummy
scoreboard objectives add replicate.points.overall.rank4 dummy
scoreboard objectives add replicate.points.overall.rank5 dummy
scoreboard objectives add replicate.points.overall.rank6 dummy
scoreboard objectives add replicate.points.overall.rank7 dummy
scoreboard objectives add replicate.points.overall.rank8 dummy
scoreboard objectives add replicate.points.build.rank1 dummy
scoreboard objectives add replicate.points.build.rank2 dummy
scoreboard objectives add replicate.points.build.rank3 dummy
scoreboard objectives add replicate.points.build.rank4 dummy
scoreboard objectives add replicate.points.build.rank5 dummy
scoreboard objectives add replicate.points.build.rank6 dummy
scoreboard objectives add replicate.points.build.rank7 dummy
scoreboard objectives add replicate.points.build.rank8 dummy

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
scoreboard players reset replicate.RedRaccoons replicate.points.team.rank

scoreboard players reset replicate.OrangeOtters replicate.timer.build1
scoreboard players reset replicate.OrangeOtters replicate.timer.build2
scoreboard players reset replicate.OrangeOtters replicate.timer.build3
scoreboard players reset replicate.OrangeOtters replicate.timer.build4
scoreboard players reset replicate.OrangeOtters replicate.timer.build5
scoreboard players reset replicate.OrangeOtters replicate.timer.build6
scoreboard players reset replicate.OrangeOtters replicate.completed
scoreboard players reset replicate.OrangeOtters replicate.points.team.rank

scoreboard players reset replicate.PinkPikas replicate.timer.build1
scoreboard players reset replicate.PinkPikas replicate.timer.build2
scoreboard players reset replicate.PinkPikas replicate.timer.build3
scoreboard players reset replicate.PinkPikas replicate.timer.build4
scoreboard players reset replicate.PinkPikas replicate.timer.build5
scoreboard players reset replicate.PinkPikas replicate.timer.build6
scoreboard players reset replicate.PinkPikas replicate.completed
scoreboard players reset replicate.PinkPikas replicate.points.team.rank

scoreboard players reset replicate.YellowYaks replicate.timer.build1
scoreboard players reset replicate.YellowYaks replicate.timer.build2
scoreboard players reset replicate.YellowYaks replicate.timer.build3
scoreboard players reset replicate.YellowYaks replicate.timer.build4
scoreboard players reset replicate.YellowYaks replicate.timer.build5
scoreboard players reset replicate.YellowYaks replicate.timer.build6
scoreboard players reset replicate.YellowYaks replicate.completed
scoreboard players reset replicate.YellowYaks replicate.points.team.rank

scoreboard players reset replicate.GreenGoats replicate.timer.build1
scoreboard players reset replicate.GreenGoats replicate.timer.build2
scoreboard players reset replicate.GreenGoats replicate.timer.build3
scoreboard players reset replicate.GreenGoats replicate.timer.build4
scoreboard players reset replicate.GreenGoats replicate.timer.build5
scoreboard players reset replicate.GreenGoats replicate.timer.build6
scoreboard players reset replicate.GreenGoats replicate.completed
scoreboard players reset replicate.GreenGoats replicate.points.team.rank

scoreboard players reset replicate.CyanCougars replicate.timer.build1
scoreboard players reset replicate.CyanCougars replicate.timer.build2
scoreboard players reset replicate.CyanCougars replicate.timer.build3
scoreboard players reset replicate.CyanCougars replicate.timer.build4
scoreboard players reset replicate.CyanCougars replicate.timer.build5
scoreboard players reset replicate.CyanCougars replicate.timer.build6
scoreboard players reset replicate.CyanCougars replicate.completed
scoreboard players reset replicate.CyanCougars replicate.points.team.rank

scoreboard players reset replicate.PurplePenguins replicate.timer.build1
scoreboard players reset replicate.PurplePenguins replicate.timer.build2
scoreboard players reset replicate.PurplePenguins replicate.timer.build3
scoreboard players reset replicate.PurplePenguins replicate.timer.build4
scoreboard players reset replicate.PurplePenguins replicate.timer.build5
scoreboard players reset replicate.PurplePenguins replicate.timer.build6
scoreboard players reset replicate.PurplePenguins replicate.completed
scoreboard players reset replicate.PurplePenguins replicate.points.team.rank

scoreboard players reset replicate.BlueBears replicate.timer.build1
scoreboard players reset replicate.BlueBears replicate.timer.build2
scoreboard players reset replicate.BlueBears replicate.timer.build3
scoreboard players reset replicate.BlueBears replicate.timer.build4
scoreboard players reset replicate.BlueBears replicate.timer.build5
scoreboard players reset replicate.BlueBears replicate.timer.build6
scoreboard players reset replicate.BlueBears replicate.completed
scoreboard players reset replicate.BlueBears replicate.points.team.rank

# set stages to 0
scoreboard players set replicate.handler replicate.stage 0
scoreboard players set replicate.RedRaccoons replicate.stage 0
scoreboard players set replicate.OrangeOtters replicate.stage 0
scoreboard players set replicate.YellowYaks replicate.stage 0
scoreboard players set replicate.PinkPikas replicate.stage 0
scoreboard players set replicate.GreenGoats replicate.stage 0
scoreboard players set replicate.CyanCougars replicate.stage 0
scoreboard players set replicate.PurplePenguins replicate.stage 0
scoreboard players set replicate.BlueBears replicate.stage 0

# set completion rank to 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.overall 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.overall 0
scoreboard players set replicate.PinkPikas replicate.points.rank.overall 0
scoreboard players set replicate.YellowYaks replicate.points.rank.overall 0
scoreboard players set replicate.GreenGoats replicate.points.rank.overall 0
scoreboard players set replicate.CyanCougars replicate.points.rank.overall 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.overall 0
scoreboard players set replicate.BlueBears replicate.points.rank.overall 0

scoreboard players set replicate.RedRaccoons replicate.points.rank.build1 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build1 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build1 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build1 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build1 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build1 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build1 0
scoreboard players set replicate.BlueBears replicate.points.rank.build1 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.build2 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build2 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build2 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build2 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build2 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build2 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build2 0
scoreboard players set replicate.BlueBears replicate.points.rank.build2 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.build3 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build3 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build3 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build3 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build3 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build3 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build3 0
scoreboard players set replicate.BlueBears replicate.points.rank.build3 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.build4 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build4 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build4 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build4 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build4 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build4 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build4 0
scoreboard players set replicate.BlueBears replicate.points.rank.build4 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.build5 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build5 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build5 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build5 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build5 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build5 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build5 0
scoreboard players set replicate.BlueBears replicate.points.rank.build5 0
scoreboard players set replicate.RedRaccoons replicate.points.rank.build6 0
scoreboard players set replicate.OrangeOtters replicate.points.rank.build6 0
scoreboard players set replicate.PinkPikas replicate.points.rank.build6 0
scoreboard players set replicate.YellowYaks replicate.points.rank.build6 0
scoreboard players set replicate.GreenGoats replicate.points.rank.build6 0
scoreboard players set replicate.CyanCougars replicate.points.rank.build6 0
scoreboard players set replicate.PurplePenguins replicate.points.rank.build6 0
scoreboard players set replicate.BlueBears replicate.points.rank.build6 0

# set point values for ranking
scoreboard players set replicate.handler replicate.points.overall.rank1 32
scoreboard players set replicate.handler replicate.points.overall.rank2 24
scoreboard players set replicate.handler replicate.points.overall.rank3 16
scoreboard players set replicate.handler replicate.points.overall.rank4 8
scoreboard players set replicate.handler replicate.points.overall.rank5 4
scoreboard players set replicate.handler replicate.points.overall.rank6 0
scoreboard players set replicate.handler replicate.points.overall.rank7 4
scoreboard players set replicate.handler replicate.points.overall.rank8 0
scoreboard players set replicate.handler replicate.points.build.rank1 10
scoreboard players set replicate.handler replicate.points.build.rank2 8
scoreboard players set replicate.handler replicate.points.build.rank3 6
scoreboard players set replicate.handler replicate.points.build.rank4 4
scoreboard players set replicate.handler replicate.points.build.rank5 2
scoreboard players set replicate.handler replicate.points.build.rank6 0
scoreboard players set replicate.handler replicate.points.build.rank7 0
scoreboard players set replicate.handler replicate.points.build.rank8 0