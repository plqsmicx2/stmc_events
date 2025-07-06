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
function trials:replicate/sidebar

# if we're in stage 0, run the delay
execute if score replicate.handler replicate.stage matches 0 run scoreboard players add replicate.handler replicate.timer.delay1 1

# Red Raccoons
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# Orange Otters
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 8 112 21 12 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -12 112 21 -8 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -7 112 11 -3 112 15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 3 112 11 7 112 15 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 8 111 21 12 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -2 111 21 2 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -12 111 21 -8 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -7 111 11 -3 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 3 111 11 7 111 15 chiseled_tuff_bricks

# Pink Pikas
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -31 112 21 -27 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -51 112 21 -47 112 25 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -46 112 11 -42 112 15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -36 112 11 -32 112 15 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -31 111 21 -27 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -41 111 21 -37 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -51 111 21 -47 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -46 111 11 -42 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -36 111 11 -32 111 15 chiseled_tuff_bricks

# Green Goats
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -31 112 -15 -27 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -51 112 -15 -47 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -46 112 -25 -42 112 -21 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -36 112 -25 -32 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -31 111 -15 -27 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -41 111 -15 -37 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -51 111 -15 -47 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -46 111 -25 -42 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -36 111 -25 -32 111 -21 chiseled_tuff_bricks

# Cyan Cougars
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 8 112 -15 12 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -12 112 -15 -8 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -7 112 -25 -3 112 -21 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 3 112 -25 7 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 8 111 -15 12 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -2 111 -15 2 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -12 111 -15 -8 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -7 111 -25 -3 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 3 111 -25 7 111 -21 chiseled_tuff_bricks

# Purple Penguins
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# move to next stage
execute if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 400.. run scoreboard players set replicate.handler replicate.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score replicate.handler replicate.stage matches 1 run scoreboard players add replicate.handler replicate.timer.explanation 1
execute if score replicate.handler replicate.stage matches 1 run function trials:replicate/explanation
execute if score replicate.handler replicate.stage matches 1 if score replicate.handler replicate.timer.explanation matches 800.. run scoreboard players set replicate.handler replicate.stage 2

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score replicate.handler replicate.stage matches 2 run scoreboard players add replicate.handler replicate.timer.delay2 1
# 5 second countdown
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 300 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 320 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 340 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 360 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 380 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold":true}
execute if score replicate.handler replicate.stage matches 2 if score replicate.handler replicate.timer.delay2 matches 400.. run scoreboard players set replicate.handler replicate.stage 3

# if we're in stage 3, increment timer & run game
execute if score replicate.handler replicate.stage matches 3 run scoreboard players add replicate.handler replicate.timer.game 1
execute if score replicate.handler replicate.stage matches 3 run function trials:replicate/round_active/round

# if we're in stage 4, increment timer & reset
execute if score replicate.handler replicate.stage matches 4 run scoreboard players add replicate.handler replicate.timer.delay3 1
execute if score replicate.handler replicate.stage matches 4 if score replicate.handler replicate.timer.delay3 matches 3 run function trials:replicate/reset
execute if score replicate.handler replicate.stage matches 4 if score replicate.handler replicate.timer.delay3 matches 400.. run scoreboard players add tr.handler tr.stage 1