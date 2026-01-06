# tick function for fight [finale]

# stages:
# 0- 10s delay1
# 1- explanation
# 2- 10s delay2
# 3- game
# 4- 10s delay3

# run functions every tick
function stmc:games/finale/sidebar with storage stmc:global

# run load
execute unless score fight.handler fight.stage matches 0.. run function stmc:games/finale/games/fight/load

# run automatic pause
execute unless score fight.handler fight.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment timer
execute if score fight.handler fight.stage matches 0 run scoreboard players add fight.handler fight.timer.delay1 1
execute if score fight.handler fight.stage matches 0 if score fight.handler fight.timer.delay1 matches 200.. \
        run scoreboard players set fight.handler fight.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score fight.handler fight.stage matches 1 run scoreboard players add fight.handler fight.timer.explanation 1
execute in stmc:finale if score fight.handler fight.stage matches 1 run function stmc:games/finale/games/fight/helper/explanation

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score fight.handler fight.stage matches 2 run scoreboard players add fight.handler fight.timer.delay2 1
# countdown
execute if score fight.handler fight.timer.delay2 matches 100 run title @a actionbar {"text":"5 seconds!", "color":"red"}
execute if score fight.handler fight.timer.delay2 matches 120 run title @a actionbar {"text":"4 seconds!", "color":"red"}
execute if score fight.handler fight.timer.delay2 matches 140 run title @a actionbar {"text":"3 seconds!", "color":"red"}
execute if score fight.handler fight.timer.delay2 matches 160 run title @a actionbar {"text":"2 seconds!", "color":"red"}
execute if score fight.handler fight.timer.delay2 matches 180 run title @a actionbar {"text":"1 second!", "color":"red"}
execute if score fight.handler fight.timer.delay2 matches 100 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1
execute if score fight.handler fight.timer.delay2 matches 120 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.1
execute if score fight.handler fight.timer.delay2 matches 140 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.2
execute if score fight.handler fight.timer.delay2 matches 160 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.4
execute if score fight.handler fight.timer.delay2 matches 180 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.6

execute if score fight.handler fight.stage matches 2 if score fight.handler fight.timer.delay2 matches 200.. run function stmc:games/finale/games/fight/helper/game_start

# if we're in stage 3, increment timer & run game
execute if score fight.handler fight.stage matches 3 run scoreboard players add fight.handler fight.timer.game 1
execute if score fight.handler fight.stage matches 3 run function stmc:games/finale/games/fight/game_tick

# if we're in stage 4, delay for 10s
execute if score fight.handler fight.stage matches 4 run scoreboard players add fight.handler fight.timer.delay3 1
execute if score fight.handler fight.stage matches 4 if score fight.handler fight.timer.delay3 matches 200.. run \
        scoreboard players add finale.handler finale.round.stage 1