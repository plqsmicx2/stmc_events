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

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 10 1 true
effect give @a mining_fatigue infinite 3 true

# set xp
xp set @a 0

# kill all entities
execute in trials:replicate run kill @e[type=!player]

# set world protections
yawp dim trials:replicate delete-all regions
yawp dim trials:replicate create local replicate-world Cuboid -50 100 -50 50 140 50
yawp local trials:replicate replicate-world add flag spawning-all Denied
yawp local trials:replicate replicate-world add flag fall-damage Denied
yawp local trials:replicate replicate-world add flag no-pvp Allowed
yawp local trials:replicate replicate-world add flag no-hunger Allowed
yawp local trials:replicate replicate-world add flag knockback-players Denied
yawp local trials:replicate replicate-world add flag item-drop Denied
yawp local trials:replicate replicate-world add flag item-pickup Denied

yawp dim trials:replicate create local red-build Cuboid 43 113 19 35 110 27
yawp local trials:replicate red-build add flag break-blocks Denied

yawp dim trials:replicate create local orange-build Cuboid 4 113 19 -4 110 27
yawp local trials:replicate orange-build add flag break-blocks Denied

yawp dim trials:replicate create local pink-build Cuboid -35 113 19 -43 110 27
yawp local trials:replicate pink-build add flag break-blocks Denied

yawp dim trials:replicate create local green-build Cuboid -35 113 -17 -43 110 -9
yawp local trials:replicate green-build add flag break-blocks Denied

yawp dim trials:replicate create local cyan-build Cuboid 4 113 -17 -4 110 -9
yawp local trials:replicate cyan-build add flag break-blocks Denied

yawp dim trials:replicate create local purple-build Cuboid 43 113 -17 35 110 -9
yawp local trials:replicate purple-build add flag break-blocks Denied

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