# tick function for race

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay4 (reset & point announcement)

# run load function if this is our first time here
execute unless score race.handler race.stage matches 0.. run function race:load

# run functions every tick
function race:points_update
function race:sidebar

# if we're in stage 0, increment timer
execute if score race.handler race.stage matches 0 run scoreboard players add race.handler race.timer.delay1 1
# reset world
execute in race:race if score race.handler race.timer.delay1 matches 3 run fill -15 106 10 -11 109 10 spruce_fence
execute if score race.handler race.stage matches 0 if score race.handler race.timer.delay1 matches 400.. run scoreboard players set race.handler race.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score race.handler race.stage matches 1 run scoreboard players add race.handler race.timer.explanation 1
execute if score race.handler race.stage matches 1 run function race:explanation
execute if score race.handler race.stage matches 1 if score race.handler race.timer.explanation matches 800.. run scoreboard players set race.handler race.stage 2

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score race.handler race.stage matches 2 run scoreboard players add race.handler race.timer.delay2 1
# invis
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 200 run effect give @a invisibility infinite 0 true
# countdown
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 380 run title @a actionbar {"text":"1 second!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 399 run title @a title {"text":"Go!", "color":"green"}

execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.1
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.2
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.3
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.4
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @a -13 105 15 1 2

execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 400.. run scoreboard players set race.handler race.stage 3

# if we're in stage 3, increment timer & run game
execute if score race.handler race.stage matches 3 run scoreboard players add race.handler race.timer.game 1
execute if score race.handler race.stage matches 3 run function race:game_tick

# if we're in stage 4, run reset & point announcement
execute if score race.handler race.stage matches 4 run scoreboard players add race.handler race.timer.delay3 1
execute if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 3 run function race:reset
execute if score race.handler race.stage matches 4 run function race:points_announcement
execute if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 400.. run scoreboard players add stmc.handler event.stage 1