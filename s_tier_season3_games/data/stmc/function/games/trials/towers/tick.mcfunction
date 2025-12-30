# tick function for towers [TOWERS]

# this function runs every tick & manages the game

# stages:
# 0 - delay 1 (waiting for players)
# 1 - explanation
# 2 - delay 2
# 3 - game
# 4 - delay 3 (reset before tp)

# run load if not already loaded
execute unless score towers.handler towers.stage matches 0.. run function stmc:games/trials/towers/load

# runs every tick
function stmc:games/trials/towers/points_update
function stmc:games/trials/towers/sidebar with storage stmc:global

# run automatic pause
execute unless score towers.handler towers.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment the timer
execute if score towers.handler towers.stage matches 0 run scoreboard players add towers.handler towers.timer.delay1 1
# reset world
execute in stmc:trials/towers if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 3 run clone -20 90 -20 20 92 20 -20 100 -20
execute in stmc:trials/towers if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 5 run fill -40 100 -40 40 120 40 air replace #concrete_powder
execute in stmc:trials/towers if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 7 run kill @e[type=!player]
# move to next stage after 20 seconds
execute if score towers.handler towers.stage matches 0 if score towers.handler towers.timer.delay1 matches 200.. run scoreboard players set towers.handler towers.stage 1

# if we're in stage 1, increment the timer & run the explanation function
execute if score towers.handler towers.stage matches 1 run scoreboard players add towers.handler towers.timer.explanation 1
execute in stmc:trials/towers if score towers.handler towers.stage matches 1 run function stmc:games/trials/towers/explanation

# if we're in stage 2, increment the timer & run countdown at 5 seconds
execute if score towers.handler towers.stage matches 2 run scoreboard players add towers.handler towers.timer.delay2 1

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 100 run title @a actionbar {"text": "5 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score towers.handler towers.timer.delay2 matches 100 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.6

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 120 run title @a actionbar {"text": "4 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score towers.handler towers.timer.delay2 matches 120 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.5 1.7

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 140 run title @a actionbar {"text": "3 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score towers.handler towers.timer.delay2 matches 140 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.6 1.8

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 160 run title @a actionbar {"text": "2 seconds!", "color": "aqua", "bold": true}
execute as @a at @s if score towers.handler towers.timer.delay2 matches 160 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.7 1.9

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 180 run title @a actionbar {"text": "1 second!", "color": "aqua", "bold": true}
execute as @a at @s if score towers.handler towers.timer.delay2 matches 180 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.8 2.0

execute if score towers.handler towers.stage matches 2 if score towers.handler towers.timer.delay2 matches 200.. run function stmc:games/trials/towers/start_game
execute as @a at @s if score towers.handler towers.timer.delay2 matches 199 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.8 1.6

# if we're in stage 3, increment the timer & run the game function
execute if score towers.handler towers.stage matches 3 run function stmc:games/trials/towers/game_tick

# if we're in stage 4, increment the timer & run reset
execute if score towers.handler towers.stage matches 4 run scoreboard players add towers.handler towers.timer.delay3 1
# move to next stage after 10 seconds
execute if score towers.handler towers.stage matches 4 if score towers.handler towers.timer.delay3 matches 200.. run function stmc:games/trials/towers/reset