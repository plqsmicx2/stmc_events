# load function for extract

# this function runs whenever beginning the extract game

# teleport players to spawn
execute in solve:solve run tp @a 5 100 50
execute in solve:solve run tp @a[team=RED_RACCOONS] 5 94 6
execute in solve:solve run tp @a[team=ORANGE_OTTERS] 5 94 26
execute in solve:solve run tp @a[team=PINK_PIKAS] 5 94 46
execute in solve:solve run tp @a[team=GREEN_GOATS] 5 94 66
execute in solve:solve run tp @a[team=CYAN_COUGARS] 5 94 86
execute in solve:solve run tp @a[team=PURPLE_PENGUINS] 5 94 106

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 0 true
effect give @a regeneration 5 1 true
effect give @a resistance infinite 4 true
effect give @a mining_fatigue infinite 4 true

# set xp
xp set @a 0

# kill all entities
execute in solve:solve run kill @e[type=!player]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add solve.timer.delay1 dummy
scoreboard objectives add solve.timer.explanation dummy
scoreboard objectives add solve.timer.delay2 dummy
scoreboard objectives add solve.timer.game dummy
scoreboard objectives add solve.timer.game.room1 dummy
scoreboard objectives add solve.timer.game.room2 dummy
scoreboard objectives add solve.timer.game.room3 dummy
scoreboard objectives add solve.timer.game.room4 dummy
scoreboard objectives add solve.timer.game.rooms dummy
scoreboard objectives add solve.timer.game.room1.rank dummy
scoreboard objectives add solve.timer.game.room2.rank dummy
scoreboard objectives add solve.timer.game.room3.rank dummy
scoreboard objectives add solve.timer.game.room4.rank dummy
scoreboard objectives add solve.timer.game.rooms.rank dummy
scoreboard objectives add solve.timer.delay3 dummy
# stats
scoreboard objectives add solve.stats.players dummy
scoreboard objectives add solve.stats.roomsCompleted dummy
scoreboard objectives add solve.stats.playersCompleted dummy
# points
scoreboard objectives add solve.points.indiv dummy
scoreboard objectives add solve.points.indiv.rank dummy
scoreboard objectives add solve.points.team dummy
scoreboard objectives add solve.points.team.rank dummy
scoreboard objectives add solve.points.team.roomPoints dummy
scoreboard objectives add solve.points.roomValue dummy

# (re)set all necessary values
scoreboard players set solve.handler solve.stage 0

scoreboard players set solve.handler solve.timer.delay1 0
scoreboard players set solve.handler solve.timer.explanation 0
scoreboard players set solve.handler solve.timer.delay2 0
scoreboard players set solve.handler solve.timer.game 0
scoreboard players set solve.handler solve.timer.delay3 0

scoreboard players set solve.RedRaccoons solve.timer.game.room1 0
scoreboard players set solve.RedRaccoons solve.timer.game.room2 0
scoreboard players set solve.RedRaccoons solve.timer.game.room3 0
scoreboard players set solve.RedRaccoons solve.timer.game.room4 0
scoreboard players set solve.RedRaccoons solve.timer.game.rooms 0
scoreboard players set solve.OrangeOtters solve.timer.game.room1 0
scoreboard players set solve.OrangeOtters solve.timer.game.room2 0
scoreboard players set solve.OrangeOtters solve.timer.game.room3 0
scoreboard players set solve.OrangeOtters solve.timer.game.room4 0
scoreboard players set solve.OrangeOtters solve.timer.game.rooms 0
scoreboard players set solve.PinkPikas solve.timer.game.room1 0
scoreboard players set solve.PinkPikas solve.timer.game.room2 0
scoreboard players set solve.PinkPikas solve.timer.game.room3 0
scoreboard players set solve.PinkPikas solve.timer.game.room4 0
scoreboard players set solve.PinkPikas solve.timer.game.rooms 0
scoreboard players set solve.GreenGoats solve.timer.game.room1 0
scoreboard players set solve.GreenGoats solve.timer.game.room2 0
scoreboard players set solve.GreenGoats solve.timer.game.room3 0
scoreboard players set solve.GreenGoats solve.timer.game.room4 0
scoreboard players set solve.GreenGoats solve.timer.game.rooms 0
scoreboard players set solve.CyanCougars solve.timer.game.room1 0
scoreboard players set solve.CyanCougars solve.timer.game.room2 0
scoreboard players set solve.CyanCougars solve.timer.game.room3 0
scoreboard players set solve.CyanCougars solve.timer.game.room4 0
scoreboard players set solve.CyanCougars solve.timer.game.rooms 0
scoreboard players set solve.PurplePenguins solve.timer.game.room1 0
scoreboard players set solve.PurplePenguins solve.timer.game.room2 0
scoreboard players set solve.PurplePenguins solve.timer.game.room3 0
scoreboard players set solve.PurplePenguins solve.timer.game.room4 0
scoreboard players set solve.PurplePenguins solve.timer.game.rooms 0

scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 0
scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 0
scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 0
scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 0
scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 0
scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 0
scoreboard players set @a solve.stats.roomsCompleted 0

scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
scoreboard players set @a solve.stats.playersCompleted 0

scoreboard players set @a solve.points.indiv 0
scoreboard players set solve.handler solve.points.roomValue 125
function solve:points_update

scoreboard objectives remove solve.sidebar