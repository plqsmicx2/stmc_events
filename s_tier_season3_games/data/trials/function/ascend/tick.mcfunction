# tick function for acscend

# the function handles game thread

# stages:
# 0- delay 20s, waiting for players, reset world
# 1- explanation
# 2- delay 20s, countdown at 5
# 3- game active
# 4- delay 20s, reset, increment trials stage

# run the load function to initialize the game
execute unless score ascend.handler ascend.stage matches 0.. run function trials:ascend/load

# update sidebar
function trials:ascend/points_update
function trials:ascend/sidebar

# STAGE ZERO:

# increment timer
execute if score ascend.handler ascend.stage matches 0 run \
        scoreboard players add ascend.handler ascend.timer.delay1 1

# reset world
execute if score ascend.handler ascend.timer.delay1 matches 1..50 run function trials:ascend/reset_world

# update stage
execute if score ascend.handler ascend.stage matches 0 if score ascend.handler ascend.timer.delay1 matches 400.. run \
        scoreboard players set ascend.handler ascend.stage 1

# STAGE ONE:

# increment timer
execute if score ascend.handler ascend.stage matches 1 run \
        scoreboard players add ascend.handler ascend.timer.explanation 1

# run explanation
execute if score ascend.handler ascend.stage matches 1 run function trials:ascend/explanation

# update stage
execute if score ascend.handler ascend.stage matches 1 if score ascend.handler ascend.timer.explanation matches 800.. run scoreboard players set ascend.handler ascend.stage 2

# STAGE TWO:

# increment timer
execute if score ascend.handler ascend.stage matches 2 run scoreboard players add ascend.handler ascend.timer.delay2 1

# 5 second countdown with sound effects
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 300 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 320 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 340 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 360 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 380 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold":true}
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 399 run title @a title {"text":"Go!", "color":"green"}

execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.1
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.2
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.3
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.4
execute as @a at @s if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# update stage
execute if score ascend.handler ascend.stage matches 2 if score ascend.handler ascend.timer.delay2 matches 400.. run scoreboard players set ascend.handler ascend.stage 3

# STAGE THREE:

# increment game timer
execute if score ascend.handler ascend.stage matches 3 run \
        scoreboard players add ascend.handler ascend.timer.game 1

# run game
execute if score ascend.handler ascend.stage matches 3 run function trials:ascend/game_tick

# STAGE FOUR:

# increment timer
execute if score ascend.handler ascend.stage matches 4 run \
        scoreboard players add ascend.handler ascend.timer.delay3 1

# end game for players
execute if score ascend.handler ascend.timer.delay3 matches 2 run \
        gamemode spectator @a

# announce performance
execute if score ascend.handler ascend.timer.delay3 matches 100 run \
        function trials:ascend/team_announcements

# reset & move to next trials stage
execute if score ascend.handler ascend.stage matches 4 if score ascend.handler ascend.timer.delay3 matches 400.. run \
        function trials:ascend/reset