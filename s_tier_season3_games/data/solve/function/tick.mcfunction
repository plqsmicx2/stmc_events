# tick function for solve

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay3 (reset & point announcement)

# run load function if this is our first time here
execute unless score solve.handler solve.stage matches 0.. run function solve:load

# run functions every tick
execute if score solve.handler solve.stage matches 3..4 run function solve:points_update
function solve:sidebar

# if we're in stage 0, increment timer
execute if score solve.handler solve.stage matches 0 run scoreboard players add solve.handler solve.timer.delay1 1

# reset world
execute in solve:solve if score solve.handler solve.timer.delay1 matches 3 run forceload add 0 0 120 120
execute in solve:solve if score solve.handler solve.timer.delay1 matches 3 run kill @e[type=item]
execute in solve:solve if score solve.handler solve.timer.delay1 matches 5 run clone 0 0 0 109 9 14 -1 91 -1
execute in solve:solve if score solve.handler solve.timer.delay1 matches 6 run clone 0 0 0 109 9 14 -1 91 19
execute in solve:solve if score solve.handler solve.timer.delay1 matches 7 run clone 0 0 0 109 9 14 -1 91 39
execute in solve:solve if score solve.handler solve.timer.delay1 matches 8 run clone 0 0 0 109 9 14 -1 91 59
execute in solve:solve if score solve.handler solve.timer.delay1 matches 9 run clone 0 0 0 109 9 14 -1 91 79
execute in solve:solve if score solve.handler solve.timer.delay1 matches 10 run clone 0 0 0 109 9 14 -1 91 99

execute if score solve.handler solve.stage matches 0 if score solve.handler solve.timer.delay1 matches 400.. run scoreboard players set solve.handler solve.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score solve.handler solve.stage matches 1 run scoreboard players add solve.handler solve.timer.explanation 1
execute if score solve.handler solve.stage matches 1 run function solve:explanation
execute if score solve.handler solve.stage matches 1 if score solve.handler solve.timer.explanation matches 800.. run scoreboard players set solve.handler solve.stage 2

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score solve.handler solve.stage matches 2 run scoreboard players add solve.handler solve.timer.delay2 1
# countdown
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!", "color":"yellow"}
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!", "color":"yellow"}
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!", "color":"yellow"}
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!", "color":"yellow"}
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 380 run title @a actionbar {"text":"1 second!", "color":"yellow"}
execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 399 run title @a title {"text":"Go!", "color":"yellow"}

execute if score solve.handler solve.stage matches 2 if score solve.handler solve.timer.delay2 matches 400.. run scoreboard players set solve.handler solve.stage 3

# if we're in stage 3, increment timer & run game
execute if score solve.handler solve.stage matches 3 run scoreboard players add solve.handler solve.timer.game 1
execute if score solve.handler solve.stage matches 3 run function solve:game_active/game_tick

# if we're in stage 4, run reset & point announcement
execute if score solve.handler solve.stage matches 4 run scoreboard players add solve.handler solve.timer.delay3 1
execute if score solve.handler solve.timer.delay3 matches 100 run function solve:room_announcements
execute if score solve.handler solve.timer.delay3 matches 300 run function solve:team_announcements
execute if score solve.handler solve.stage matches 4 if score solve.handler solve.timer.delay3 matches 400.. run function solve:reset