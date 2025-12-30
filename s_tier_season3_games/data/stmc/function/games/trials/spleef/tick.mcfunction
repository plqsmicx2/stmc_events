# tick function for spleef [SPLEEF]

# This function is called every tick to handle the game logic for the spleef game mode.

# stages:
# 0- delay 20s, waiting for players
# 1- explanation
# 2- delay 20s, countdown at 5
# 3- game active
# 4- delay 20s, reset, increment trials stage

# run the load function to initialize the game
execute unless score spleef.handler spleef.stage matches 0.. run function stmc:games/trials/spleef/load

# update sidebar
function stmc:games/trials/spleef/points_update
function stmc:games/trials/spleef/sidebar with storage stmc:global

# run automatic pause
execute unless score spleef.handler spleef.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, wait 10 seconds
execute if score spleef.handler spleef.stage matches 0 run scoreboard players add spleef.handler spleef.timer.delay1 1
execute if score spleef.handler spleef.stage matches 0 if score spleef.handler spleef.timer.delay1 matches 200.. run scoreboard players set spleef.handler spleef.stage 1

# if we're in stage 1, run explanation (40s)
execute if score spleef.handler spleef.stage matches 1 run scoreboard players add spleef.handler spleef.timer.explanation 1
execute in stmc:trials/spleef if score spleef.handler spleef.stage matches 1 run function stmc:games/trials/spleef/explanation

# if we're in stage 2, wait 10 seconds & countdown at 5
execute if score spleef.handler spleef.stage matches 2 run scoreboard players add spleef.handler spleef.timer.delay2 1
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 100 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 100 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.6
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 120 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 120 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.5 1.7
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 140 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 140 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.6 1.8
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 160 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 160 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.7 1.9
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 180 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold": true}
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 180 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.8 2.0
execute if score spleef.handler spleef.stage matches 2 if score spleef.handler spleef.timer.delay2 matches 200.. run scoreboard players set spleef.handler spleef.stage 3
execute as @a at @s if score spleef.handler spleef.timer.delay2 matches 199 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.8 1.6

# if we're in stage 3, run the game
execute if score spleef.handler spleef.stage matches 3 run scoreboard players add spleef.handler spleef.timer.game 1
execute if score spleef.handler spleef.stage matches 3 run function stmc:games/trials/spleef/game_tick

# if we're in stage 4, wait 20 seconds & reset
execute if score spleef.handler spleef.stage matches 4 run scoreboard players add spleef.handler spleef.timer.delay3 1
execute if score spleef.handler spleef.stage matches 4 if score spleef.handler spleef.timer.delay3 matches 3 run function stmc:games/trials/spleef/reset
execute if score spleef.handler spleef.stage matches 4 if score spleef.handler spleef.timer.delay3 matches 200.. run scoreboard players add tr.handler tr.stage 1