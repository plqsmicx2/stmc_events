# tick function for replicate [REPLICATE]

# This function is called every tick to handle the game logic for the replicate game mode.

# stages:
# 0- delay 20s, waiting for players
# 1- explanation
# 2- delay 20s, countdown at 5
# 3- game active
# 4- delay 20s, reset, increment trials stage

# run the load function to initialize the game
execute unless score replicate.handler replicate.stage matches 0.. run function trials:replicate/load

# update sidebar
function trials:replicate/point_update
function trials:replicate/sidebar

# STAGE ZERO:

# increment timer
execute if score replicate.handler replicate.stage matches 0 run \
        scoreboard players add replicate.handler replicate.timer.delay1 1

# reset world
execute if score replicate.handler replicate.timer.delay1 matches 3 run function trials:replicate/reset_world

# update stage
execute if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 400.. run \
        scoreboard players set replicate.handler replicate.stage 1

# STAGE ONE:

# increment timer
execute if score replicate.handler replicate.stage matches 1 run \
        scoreboard players add replicate.handler replicate.timer.explanation 1

# run explanation
execute if score replicate.handler replicate.stage matches 1 run function trials:replicate/explanation

# update stage
execute if score replicate.handler replicate.stage matches 1 if score replicate.handler replicate.timer.explanation matches 800.. run scoreboard players set replicate.handler replicate.stage 2

# STAGE TWO:

# increment timer
execute if score replicate.handler replicate.stage matches 2 run scoreboard players add replicate.handler replicate.timer.delay2 1

# 5 second countdown with sound effects
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 300 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 320 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 340 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 360 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 380 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 399 run title @a title {"text":"Go!", "color":"green"}

execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1
execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.1
execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.2
execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.3
execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.4
execute as @a at @s if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# update stage
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 400.. run scoreboard players set replicate.handler replicate.stage 3

# STAGE THREE:

# increment game timer
execute if score replicate.handler replicate.stage matches 3 run \
        scoreboard players add replicate.handler replicate.timer.game 1

# run game
execute if score replicate.handler replicate.stage matches 3 run function trials:replicate/round_active/round

# STAGE FOUR:

# increment timer
execute if score replicate.handler replicate.stage matches 4 run \
        scoreboard players add replicate.handler replicate.timer.delay3 1

# end game for players
execute if score replicate.handler replicate.timer.delay3 matches 2 run \
        gamemode spectator @a

# announce performance
execute if score replicate.handler replicate.timer.delay3 matches 100 run \
        function trials:replicate/overall_announcements

# announce performance
execute if score replicate.handler replicate.timer.delay3 matches 300 run \
        function trials:replicate/room_announcements

# reset & move to next trials stage
execute if score replicate.handler replicate.stage matches 4 if score replicate.handler replicate.timer.delay3 matches 400.. run \
        function trials:replicate/reset