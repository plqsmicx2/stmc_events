# tick function for sprint

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay3 (reset & point announcement)

# run load function if this is our first time here
execute unless score sprint.handler sprint.stage matches 0.. run function stmc:games/sprint/load

# run functions every tick
function stmc:games/sprint/helper/points/points_update
function stmc:games/sprint/sidebar with storage stmc:global

# auto pause
execute unless score sprint.handler sprint.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment timer
execute if score sprint.handler sprint.stage matches 0 run scoreboard players add sprint.handler sprint.timer.delay1 1

# set spawn barrier
execute if score sprint.handler sprint.timer.delay1 matches 10 in stmc:sprint run fill -11 101 -2 -11 103 2 barrier

execute if score sprint.handler sprint.stage matches 0 if score sprint.handler sprint.timer.delay1 matches 200.. run scoreboard players set sprint.handler sprint.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score sprint.handler sprint.stage matches 1 run scoreboard players add sprint.handler sprint.timer.explanation 1
execute in stmc:sprint if score sprint.handler sprint.stage matches 1 run function stmc:games/sprint/explanation

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score sprint.handler sprint.stage matches 2 run scoreboard players add sprint.handler sprint.timer.delay2 1
# invis
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 1 run effect give @a invisibility infinite 0 true
# countdown
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 100 run title @a actionbar {"text":"5 seconds!", "color":"green"}
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 120 run title @a actionbar {"text":"4 seconds!", "color":"green"}
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 140 run title @a actionbar {"text":"3 seconds!", "color":"green"}
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 160 run title @a actionbar {"text":"2 seconds!", "color":"green"}
execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 180 run title @a actionbar {"text":"1 second!", "color":"green"}

execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 100 run playsound minecraft:block.note_block.pling master @a -2 102 0 0.8 1
execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 120 run playsound minecraft:block.note_block.pling master @a -2 102 0 0.8 1.1
execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 140 run playsound minecraft:block.note_block.pling master @a -2 102 0 0.8 1.2
execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 160 run playsound minecraft:block.note_block.pling master @a -2 102 0 0.8 1.3
execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 180 run playsound minecraft:block.note_block.pling master @a -2 102 0 0.8 1.4
execute as @a at @s if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 199 run playsound minecraft:block.note_block.pling master @a -2 102 0 1 2

execute if score sprint.handler sprint.stage matches 2 if score sprint.handler sprint.timer.delay2 matches 200.. run function stmc:games/sprint/helper/start_game

# if we're in stage 3, increment timer & run game
execute if score sprint.handler sprint.stage matches 3 run scoreboard players add sprint.handler sprint.timer.game 1
execute if score sprint.handler sprint.stage matches 3 run function stmc:games/sprint/game_tick with storage stmc:global

# if we're in stage 4, run reset & point announcement
execute if score sprint.handler sprint.stage matches 4 run scoreboard players add sprint.handler sprint.timer.delay3 1
execute if score sprint.handler sprint.stage matches 4 if score sprint.handler sprint.timer.delay3 matches 3 run gamemode spectator @a
execute if score sprint.handler sprint.timer.delay3 matches 100 run function stmc:games/sprint/announcements/individual
execute if score sprint.handler sprint.timer.delay3 matches 300 run function stmc:games/sprint/announcements/team with storage stmc:global
execute if score sprint.handler sprint.stage matches 4 if score sprint.handler sprint.timer.delay3 matches 400.. run function stmc:games/sprint/reset