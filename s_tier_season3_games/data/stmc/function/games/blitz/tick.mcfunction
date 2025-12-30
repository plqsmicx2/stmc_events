# this function handles the whole thread for blitz

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- explanation of game
# 2- 20s delay with countdown at 5 seconds
# 3- round start; round_timer begins
# 4- round end; 15 second delay to announce winners before resetting & updating sg.stage to next round

# update points every tick (regardless of stage)
function stmc:games/blitz/points/points-update
function stmc:games/blitz/sidebar with storage stmc:global

# if we're in stage 0, we only need to increment our timer & check if 20 seconds have elapsed
# and then update our stage to 1
execute if score blitz.handler blitz.stage matches 0 run scoreboard players add blitz.handler blitz.timer.delay1 1
execute if score blitz.handler blitz.timer.delay1 matches 5 run function stmc:games/blitz/helper/reset/main
execute if score blitz.handler blitz.stage matches 0 if score blitz.handler blitz.timer.delay1 matches 200.. run scoreboard players set blitz.handler blitz.stage 1

# if we're in stage 1, we need to increment the timer, call our explanation function, & check if 30 seconds have elapsed
execute if score blitz.handler blitz.stage matches 1 run scoreboard players add blitz.handler blitz.timer.explanation 1
execute in stmc:blitz if score blitz.handler blitz.stage matches 1 run function stmc:games/blitz/helper/explanation

# if we're in stage 2, we just need to increment the timer & update the actionbar
execute if score blitz.handler blitz.stage matches 2 run scoreboard players add blitz.handler blitz.timer.delay2 1

# start game
execute if score blitz.handler blitz.timer.delay2 matches 200 run title @a actionbar {"text":"5 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.timer.delay2 matches 220 run title @a actionbar {"text":"4 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.timer.delay2 matches 240 run title @a actionbar {"text":"3 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.timer.delay2 matches 260 run title @a actionbar {"text":"2 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.timer.delay2 matches 280 run title @a actionbar {"text":"1 seconds!","bold":true,"color":"light_purple"}
execute if score blitz.handler blitz.stage matches 2 if score blitz.handler blitz.timer.delay2 matches 300.. run function stmc:games/blitz/start_game

execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 200 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 220 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 240 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 260 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 280 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute as @a at @s if score blitz.handler blitz.timer.delay2 matches 299 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# if we're in stage 3, we need to increment the timer & call the round_tick function (a lot happens in there)
# round_tick will automatically update the stage when the round ends
execute if score blitz.handler blitz.stage matches 3 run scoreboard players add blitz.handler blitz.timer.game 1
execute if score blitz.handler blitz.stage matches 3 run function stmc:games/blitz/game_tick

# if we're in stage 4, we just need to increment its timer [points are not announced after this round]
# and then move to next game
execute if score blitz.handler blitz.stage matches 4 run scoreboard players add blitz.handler blitz.timer.delay3 1
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 100 run function stmc:games/blitz/announcements/player
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 300 run function stmc:games/blitz/announcements/team with storage stmc:global
execute if score blitz.handler blitz.stage matches 4 if score blitz.handler blitz.timer.delay3 matches 400.. run function stmc:games/blitz/reset