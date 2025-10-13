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
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 54 41 106 58 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 70 41 106 74 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 67 51 106 71 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 57 51 106 61 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 54 41 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 104 62 41 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 34 106 62 34 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 70 41 105 74 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 67 51 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 57 51 105 61 chiseled_tuff_bricks

# Orange Otters
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 11 41 106 15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 14 51 106 18 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks

# Pink Pikas
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks

# Yellow Yaks
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks

# Blue Bears
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks

# Purple Penguins
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 11 -36 106 15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 27 -36 106 31 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 24 -46 106 28 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 14 -46 106 18 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 11 -36 105 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 104 19 -36 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -33 106 19 -33 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 27 -36 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 24 -46 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 14 -46 105 18 chiseled_tuff_bricks

# Cyan Cougars
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks

# Green Goats
# set tinted glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
# set chiseled tuff bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.handler replicate.stage matches 0 if score replicate.handler replicate.timer.delay1 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks

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