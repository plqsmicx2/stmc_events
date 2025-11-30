# this function handles the whole thread for blitz

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- explanation of game
# 2- 20s delay with countdown at 5 seconds
# 3- round start; round_timer begins
# 4- round end; 15 second delay to announce winners before resetting & updating sg.stage to next round

# update points every tick (regardless of stage)
function blitz:points-update
function blitz:sidebar

# if we're in stage 0, we only need to increment our timer & check if 20 seconds have elapsed
# and then update our stage to 1
execute if score blitz.handler blitz.stage matches 0 run scoreboard players add blitz.handler blitz.timer.delay1 1
execute in blitz:blitz if score blitz.handler blitz.timer.delay1 matches 2 run function blitz:reset_world
execute if score blitz.handler blitz.stage matches 0 if score blitz.handler blitz.timer.delay1 matches 400.. run scoreboard players set blitz.handler blitz.stage 1

# if we're in stage 1, we need to increment the timer, call our explanation function, & check if 30 seconds have elapsed
execute if score blitz.handler blitz.stage matches 1 run scoreboard players add blitz.handler blitz.timer.explanation 1
execute if score blitz.handler blitz.stage matches 1 run function blitz:explanation
execute if score blitz.handler blitz.stage matches 1 if score blitz.handler blitz.timer.explanation matches 800.. run scoreboard players set blitz.handler blitz.stage 2

# if we're in stage 2, we just need to increment the timer & update the actionbar
execute if score blitz.handler blitz.stage matches 2 run scoreboard players add blitz.handler blitz.timer.delay2 1
# start game
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 380 run title @a actionbar {"text":"1 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 400.. run function blitz:start_game
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute as @a at @s if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# if we're in stage 3, we need to increment the timer & call the round_tick function (a lot happens in there)
# round_tick will automatically update the stage when the round ends
execute if score blitz.handler blitz.stage matches 3 run scoreboard players add blitz.handler blitz.timer.game 1
execute if score blitz.handler blitz.stage matches 3 run function blitz:game_tick

# if we're in stage 4, we just need to increment its timer [points are not announced after this round]
# and then update sg.stage to 1
execute if score blitz.handler blitz.stage matches 4 run scoreboard players add blitz.handler blitz.timer.delay3 1
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 100 run function blitz:player_announcements
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 300 run function blitz:team_announcements
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 400.. run function blitz:reset