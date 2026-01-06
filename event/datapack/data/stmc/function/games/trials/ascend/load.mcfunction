# load function for ascend

# this function is called as the game is starting to initialize everything

# teleport players
execute in stmc:trials/ascend run tp @a 0 78 0 180 0

# add forceload to ensure reset_world works
execute in stmc:trials/ascend run forceload add -200 -200 200 200

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false

# and attributes
execute as @a run attribute @s block_interaction_range base set 2

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
execute in stmc:trials/ascend run kill @e[type=!player]

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
# multi-use one: handler uses to test how many teams are done; teams use to store how many rooms are completed; players to test if they are standing next to completed armor stands
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
# return to spawn
scoreboard objectives add ascend.return used:fishing_rod
# points
scoreboard objectives add ascend.points.roomCompletionValue dummy
scoreboard objectives add ascend.points.bonusCompletionValue dummy
scoreboard objectives add ascend.points.firstCompletion dummy

# reset some scoreboards
scoreboard players reset @a ascend.points.indiv
scoreboard players set ascend.handler ascend.timer.delay1 0
scoreboard players set ascend.handler ascend.timer.explanation 0
scoreboard players set ascend.handler ascend.timer.delay2 0
scoreboard players set ascend.handler ascend.timer.game 0
scoreboard players set ascend.handler ascend.timer.game.tempTimer 0
scoreboard players set ascend.handler ascend.timer.game.secondsLeft 0
scoreboard players set ascend.handler ascend.timer.game.minsLeft 4
scoreboard players reset ascend.handler ascend.timer.delay3

scoreboard players set ascend.handler ascend.points.roomCompletionValue 8
scoreboard players set ascend.handler ascend.points.bonusCompletionValue 10

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

scoreboard players set ascend.RedRaccoons ascend.points.firstCompletion 0
scoreboard players set ascend.OrangeOtters ascend.points.firstCompletion 0
scoreboard players set ascend.YellowYaks ascend.points.firstCompletion 0
scoreboard players set ascend.PinkPikas ascend.points.firstCompletion 0
scoreboard players set ascend.GreenGoats ascend.points.firstCompletion 0
scoreboard players set ascend.CyanCougars ascend.points.firstCompletion 0
scoreboard players set ascend.PurplePenguins ascend.points.firstCompletion 0
scoreboard players set ascend.BlueBears ascend.points.firstCompletion 0
