# tick function for towers [TOWERS]

# this function runs every tick & manages the game

# stages:
# 0 - delay 1 (waiting for players)
# 1 - explanation
# 2 - delay 2
# 3 - game
# 4 - delay 3 (reset before tp)

# run load if not already loaded
execute unless score towers.handler towers.stage matches 0.. run function trials:towers/load

# runs every tick
function trials:towers/death_handler
function trials:towers/points_update
function trials:towers/sidebar

# if we're in stage 0, increment the timer
execute if score towers.handler towers.stage matches 0 run scoreboard players add towers.handler towers.timer.delay1 1
# reset world
execute in trials:towers if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 3 run clone -20 90 -20 20 92 20 -20 100 -20
# move to next stage after 20 seconds
execute if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 400.. run scoreboard players set towers.handler towers.stage 1

# if we're in stage 1, increment the timer & run the explanation function
execute if score towers.handler towers.stage matches 1 run scoreboard players add towers.handler towers.timer.explanation 1
execute if score towers.handler towers.stage matches 1 run function trials:towers/explanation
# move to next stage after 40 seconds
execute if score towers.handler towers.stage matches 1 if score towers.handler towers.timer.explanation matches 800.. run scoreboard players set towers.handler towers.stage 2

# if we're in stage 2, increment the timer & run countdown at 5 seconds
execute if score towers.handler towers.stage matches 2 run scoreboard players add towers.handler towers.timer.delay2 1
# countdown
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!","color":"aqua","bold":true}
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!","color":"aqua","bold":true}
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!","color":"aqua","bold":true}
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!","color":"aqua","bold":true}
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 380 run title @a actionbar {"text":"1 second!","color":"aqua","bold":true}
# move to next stage after 20 seconds
execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 400.. run scoreboard players set towers.handler towers.stage 3

# if we're in stage 3, increment the timer & run the game function
execute if score towers.handler towers.stage matches 3 run scoreboard players add towers.handler towers.timer.game 1
execute if score towers.handler towers.stage matches 3 run function trials:towers/game_tick

# if we're in stage 4, increment the timer & run reset
execute if score towers.handler towers.stage matches 4 run scoreboard players add towers.handler towers.timer.delay3 1
execute if score towers.handler towers.stage matches 4 if score towers.handler towers.timer.delay3 matches 3 run function trials:towers/reset
# move to next stage after 10 seconds
execute if score towers.handler towers.stage matches 4 if score towers.handler towers.timer.delay3 matches 200.. run scoreboard players add tr.handler tr.stage 1