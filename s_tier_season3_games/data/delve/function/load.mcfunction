# load function for delve [DELVE]

# teleport players & set spawnpoints
execute in delve:delve as @a[team=RED_RACCOONS] run teleport @s 0 93 0
execute in delve:delve as @a[team=RED_RACCOONS] run spawnpoint @s 0 93 0
execute in delve:delve as @a[team=ORANGE_OTTERS] run teleport @s 0 123 0
execute in delve:delve as @a[team=ORANGE_OTTERS] run spawnpoint @s 0 123 0
execute in delve:delve as @a[team=PINK_PIKAS] run teleport @s 0 153 0
execute in delve:delve as @a[team=PINK_PIKAS] run spawnpoint @s 0 153 0
execute in delve:delve as @a[team=GREEN_GOATS] run teleport @s 0 183 0
execute in delve:delve as @a[team=GREEN_GOATS] run spawnpoint @s 0 183 0
execute in delve:delve as @a[team=CYAN_COUGARS] run teleport @s 0 213 0
execute in delve:delve as @a[team=CYAN_COUGARS] run spawnpoint @s 0 213 0
execute in delve:delve as @a[team=PURPLE_PENGUINS] run teleport @s 0 243 0
execute in delve:delve as @a[team=PURPLE_PENGUINS] run spawnpoint @s 0 243 0

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear effects
effect clear @a

# give effects
effect give @a regeneration 5 1
effect give @a saturation 2 2
effect give @a mining_fatigue infinite 2 true

# clear inventories
clear @a

# set xp
xp set @a 0

# set difficulty
difficulty normal

# set world protections
yawp dim delve:delve delete-all regions
yawp dim delve:delve create local delve-world Cuboid -120 0 -120 120 250 120
yawp local delve:delve delve-world add flag no-pvp Allowed
yawp local delve:delve delve-world add flag tools-secondary Denied

yawp dim delve:delve create local delve-red Cuboid -120 90 -120 120 90 120
yawp local delve:delve delve-red add flag tools-secondary Denied
yawp dim delve:delve create local delve-orange Cuboid -120 120 -120 120 120 120
yawp local delve:delve delve-orange add flag tools-secondary Denied
yawp dim delve:delve create local delve-pink Cuboid -120 150 -120 120 150 120
yawp local delve:delve delve-pink add flag tools-secondary Denied
yawp dim delve:delve create local delve-green Cuboid -120 180 -120 120 180 120
yawp local delve:delve delve-green add flag tools-secondary Denied
yawp dim delve:delve create local delve-cyan Cuboid -120 210 -120 120 210 120
yawp local delve:delve delve-cyan add flag tools-secondary Denied
yawp dim delve:delve create local delve-purple Cuboid -120 240 -120 120 240 120
yawp local delve:delve delve-purple add flag tools-secondary Denied

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add delve.timer.delay1 dummy
scoreboard objectives add delve.timer.explanation dummy
scoreboard objectives add delve.timer.delay2 dummy
scoreboard objectives add delve.timer.game dummy
scoreboard objectives add delve.timer.game.copperGateTimer dummy
scoreboard objectives add delve.timer.game.exposedGateTimer dummy
scoreboard objectives add delve.timer.game.weatheredGateTimer dummy
scoreboard objectives add delve.timer.game.oxidizedGateTimer dummy
scoreboard objectives add delve.timer.game.copperGateOpen dummy
scoreboard objectives add delve.timer.game.exposedGateOpen dummy
scoreboard objectives add delve.timer.game.weatheredGateOpen dummy
scoreboard objectives add delve.timer.game.oxidizedGateOpen dummy
scoreboard objectives add delve.timer.delay3 dummy
# stats
scoreboard objectives add delve.stats.diamondCount dummy
scoreboard objectives add delve.stats.copperCount dummy
scoreboard objectives add delve.stats.coalCount dummy
scoreboard objectives add delve.stats.players dummy
scoreboard objectives add delve.stats.game.axeUsage minecraft.used:stone_axe
scoreboard objectives add delve.teams_completed dummy
# points
scoreboard objectives add delve.points.indiv dummy
scoreboard objectives add delve.points.player.rank dummy
scoreboard objectives add delve.points.team dummy
scoreboard objectives add delve.points.team.rank dummy
scoreboard objectives add delve.points.item.coal dummy
scoreboard objectives add delve.points.item.copper dummy
scoreboard objectives add delve.points.item.diamond dummy
# game stuff
scoreboard objectives add delve.bossbar.coal.red dummy
scoreboard objectives add delve.stats.game.axeUsage minecraft.used:minecraft.stone_axe

# (re)set all necessary values
scoreboard players set delve.handler delve.stage 0

scoreboard players set delve.handler delve.timer.delay1 0
scoreboard players set delve.handler delve.timer.explanation 0
scoreboard players set delve.handler delve.timer.delay2 0
scoreboard players set delve.handler delve.timer.game 0
scoreboard players set delve.handler delve.timer.delay3 0

scoreboard players set delve.RedRaccoons delve.timer.game.copperGateTimer 0
scoreboard players set delve.RedRaccoons delve.timer.game.copperGateOpen 0
scoreboard players set delve.RedRaccoons delve.timer.game.exposedGateTimer 0
scoreboard players set delve.RedRaccoons delve.timer.game.exposedGateOpen 0
scoreboard players set delve.RedRaccoons delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.RedRaccoons delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.RedRaccoons delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.RedRaccoons delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.OrangeOtters delve.timer.game.copperGateTimer 0
scoreboard players set delve.OrangeOtters delve.timer.game.copperGateOpen 0
scoreboard players set delve.OrangeOtters delve.timer.game.exposedGateTimer 0
scoreboard players set delve.OrangeOtters delve.timer.game.exposedGateOpen 0
scoreboard players set delve.OrangeOtters delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.OrangeOtters delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.OrangeOtters delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.OrangeOtters delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.PinkPikas delve.timer.game.copperGateTimer 0
scoreboard players set delve.PinkPikas delve.timer.game.copperGateOpen 0
scoreboard players set delve.PinkPikas delve.timer.game.exposedGateTimer 0
scoreboard players set delve.PinkPikas delve.timer.game.exposedGateOpen 0
scoreboard players set delve.PinkPikas delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.PinkPikas delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.PinkPikas delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.PinkPikas delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.GreenGoats delve.timer.game.copperGateTimer 0
scoreboard players set delve.GreenGoats delve.timer.game.copperGateOpen 0
scoreboard players set delve.GreenGoats delve.timer.game.exposedGateTimer 0
scoreboard players set delve.GreenGoats delve.timer.game.exposedGateOpen 0
scoreboard players set delve.GreenGoats delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.GreenGoats delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.GreenGoats delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.GreenGoats delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.CyanCougars delve.timer.game.copperGateTimer 0
scoreboard players set delve.CyanCougars delve.timer.game.copperGateOpen 0
scoreboard players set delve.CyanCougars delve.timer.game.exposedGateTimer 0
scoreboard players set delve.CyanCougars delve.timer.game.exposedGateOpen 0
scoreboard players set delve.CyanCougars delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.CyanCougars delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.CyanCougars delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.CyanCougars delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.PurplePenguins delve.timer.game.copperGateTimer 0
scoreboard players set delve.PurplePenguins delve.timer.game.copperGateOpen 0
scoreboard players set delve.PurplePenguins delve.timer.game.exposedGateTimer 0
scoreboard players set delve.PurplePenguins delve.timer.game.exposedGateOpen 0
scoreboard players set delve.PurplePenguins delve.timer.game.weatheredGateTimer 0
scoreboard players set delve.PurplePenguins delve.timer.game.weatheredGateOpen 0
scoreboard players set delve.PurplePenguins delve.timer.game.oxidizedGateTimer 0
scoreboard players set delve.PurplePenguins delve.timer.game.oxidizedGateOpen 0

scoreboard players set delve.RedRaccoons delve.stats.diamondCount 0
scoreboard players set delve.RedRaccoons delve.stats.copperCount 0
scoreboard players set delve.RedRaccoons delve.stats.coalCount 0

scoreboard players set delve.OrangeOtters delve.stats.diamondCount 0
scoreboard players set delve.OrangeOtters delve.stats.copperCount 0
scoreboard players set delve.OrangeOtters delve.stats.coalCount 0

scoreboard players set delve.PinkPikas delve.stats.diamondCount 0
scoreboard players set delve.PinkPikas delve.stats.copperCount 0
scoreboard players set delve.PinkPikas delve.stats.coalCount 0

scoreboard players set delve.GreenGoats delve.stats.diamondCount 0
scoreboard players set delve.GreenGoats delve.stats.copperCount 0
scoreboard players set delve.GreenGoats delve.stats.coalCount 0

scoreboard players set delve.CyanCougars delve.stats.diamondCount 0
scoreboard players set delve.CyanCougars delve.stats.copperCount 0
scoreboard players set delve.CyanCougars delve.stats.coalCount 0

scoreboard players set delve.PurplePenguins delve.stats.diamondCount 0
scoreboard players set delve.PurplePenguins delve.stats.copperCount 0
scoreboard players set delve.PurplePenguins delve.stats.coalCount 0

scoreboard players set delve.handler delve.teams_completed 0

scoreboard players set @a delve.points.indiv 0
scoreboard players set delve.RedRaccoons delve.points.indiv 0
scoreboard players set delve.OrangeOtters delve.points.indiv 0
scoreboard players set delve.PinkPikas delve.points.indiv 0
scoreboard players set delve.GreenGoats delve.points.indiv 0
scoreboard players set delve.CyanCougars delve.points.indiv 0
scoreboard players set delve.PurplePenguins delve.points.indiv 0

scoreboard players set delve.RedRaccoons delve.teams_completed 0
scoreboard players set delve.OrangeOtters delve.teams_completed 0
scoreboard players set delve.PinkPikas delve.teams_completed 0
scoreboard players set delve.GreenGoats delve.teams_completed 0
scoreboard players set delve.CyanCougars delve.teams_completed 0
scoreboard players set delve.PurplePenguins delve.teams_completed 0

scoreboard players set delve.handler delve.points.item.coal 1
scoreboard players set delve.handler delve.points.item.copper 5
scoreboard players set delve.handler delve.points.item.diamond 30

scoreboard objectives remove delve.sidebar