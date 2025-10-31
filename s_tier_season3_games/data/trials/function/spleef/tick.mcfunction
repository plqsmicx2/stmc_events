# tick function for spleef [SPLEEF]

# This function is called every tick to handle the game logic for the spleef game mode.

# stages:
# 0- delay 20s, waiting for players
# 1- explanation
# 2- delay 20s, countdown at 5
# 3- game active
# 4- delay 20s, reset, increment trials stage

# run the load function to initialize the game
execute unless score spleef.handler spleef.stage matches 0.. run function trials:spleef/load

# check for deaths (before sidebar so it will reflect this tick's new points)
execute if score spleef.handler spleef.stage matches 3 run function trials:spleef/death_handler

# update sidebar
function trials:spleef/points_update
function trials:spleef/sidebar

# if we're in stage 0, wait 20 seconds
execute if score spleef.handler spleef.stage matches 0 run scoreboard players add spleef.handler spleef.timer.delay1 1
execute if score spleef.handler spleef.stage matches 0 if score spleef.handler spleef.timer.delay1 matches 400.. run scoreboard players set spleef.handler spleef.stage 1

# if we're in stage 1, run explanation (40s)
execute if score spleef.handler spleef.stage matches 1 run scoreboard players add spleef.handler spleef.timer.explanation 1
execute if score spleef.handler spleef.stage matches 1 run function trials:spleef/explanation
execute if score spleef.handler spleef.stage matches 1 if score spleef.handler spleef.timer.explanation matches 800.. run scoreboard players set spleef.handler spleef.stage 2

# if we're in stage 2, wait 20 seconds & countdown at 5
execute if score spleef.handler spleef.stage matches 2 run scoreboard players add spleef.handler spleef.timer.delay2 1
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 300 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 300 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.6
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 320 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 320 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.5 1.7
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 340 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 340 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.6 1.8
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 360 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 360 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.7 1.9
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 380 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 380 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.8 2.0
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 400.. run scoreboard players set spleef.handler spleef.stage 3
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 399 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.8 1.6

# if we're in stage 3, run the game
execute if score spleef.handler spleef.stage matches 3 run scoreboard players add spleef.handler spleef.timer.game 1
execute if score spleef.handler spleef.stage matches 3 run function trials:spleef/game_tick

# if we're in stage 4, wait 20 seconds & reset
execute if score spleef.handler spleef.stage matches 4 run scoreboard players add spleef.handler spleef.timer.delay3 1
execute if score spleef.handler spleef.stage matches 4 if score spleef.handler spleef.timer.delay3 matches 3 run function trials:spleef/reset
execute if score spleef.handler spleef.stage matches 4 if score spleef.handler spleef.timer.delay3 matches 200.. run scoreboard players add tr.handler tr.stage 1