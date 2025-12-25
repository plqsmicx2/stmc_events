# this function handles the scramble game

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- description of game
# 2- 10s delay
# 3- 3 example rounds [announce at start]
# 4- 20s delay with countdown at 5 seconds [also reset player alive & location]
# 5- game in progress [tpa back to top]
# 6- announce scores, /reset, stage++

# runs every tick
function stmc:games/trials/scramble/points_update
function stmc:games/trials/scramble/sidebar with storage stmc:global
execute if score scramble.handler scramble.stage matches 3 run function stmc:games/trials/scramble/death_handler

# run automatic pause
execute unless score scramble.handler scramble.stage matches 3 run function stmc:thread/helper/automatic_pause

# first, we call our load function if this is the first time we're here
execute unless score scramble.handler scramble.stage matches 0.. run function stmc:games/trials/scramble/load

# if we're in stage 0, increment the timer & reset the platform
execute if score scramble.handler scramble.stage matches 0 run scoreboard players add scramble.handler scramble.timer.delay1 1
execute if score scramble.handler scramble.stage matches 0 in stmc:trials/scramble if score scramble.handler scramble.timer.delay1 matches 3 run fill -7 116 -7 7 116 7 tinted_glass
# move to next stage after 20 seconds
execute if score scramble.handler scramble.stage matches 0 if score scramble.handler scramble.timer.delay1 matches 200.. run scoreboard players set scramble.handler scramble.stage 1

# if we're in stage 1, increment the timer & run the explanation function
execute if score scramble.handler scramble.stage matches 1 run scoreboard players add scramble.handler scramble.timer.explanation 1
execute if score scramble.handler scramble.stage matches 1 run function stmc:games/trials/scramble/explanation
# move to next stage after 32 seconds
execute if score scramble.handler scramble.stage matches 1 if score scramble.handler scramble.timer.explanation matches 640.. run scoreboard players set scramble.handler scramble.stage 2

# if we're in stage 2, increment the timer, & reset player alive & location
execute if score scramble.handler scramble.stage matches 2 run scoreboard players add scramble.handler scramble.timer.delay2 1
# countdown at last 5 seconds
execute if score scramble.handler scramble.timer.delay2 matches 100 run title @a actionbar {"text":"Starting in 5!","color":"dark_aqua"}
execute as @a at @s if score scramble.handler scramble.timer.delay2 matches 100 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.6
execute if score scramble.handler scramble.timer.delay2 matches 120 run title @a actionbar {"text":"Starting in 4!","color":"dark_aqua"}
execute as @a at @s if score scramble.handler scramble.timer.delay2 matches 120 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.7
execute if score scramble.handler scramble.timer.delay2 matches 140 run title @a actionbar {"text":"Starting in 3!","color":"dark_aqua"}
execute as @a at @s if score scramble.handler scramble.timer.delay2 matches 140 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.5 1.8
execute if score scramble.handler scramble.timer.delay2 matches 160 run title @a actionbar {"text":"Starting in 2!","color":"dark_aqua"}
execute as @a at @s if score scramble.handler scramble.timer.delay2 matches 160 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.6 1.9
execute if score scramble.handler scramble.timer.delay2 matches 180 run title @a actionbar {"text":"Starting in 1!","color":"dark_aqua"}
execute as @a at @s if score scramble.handler scramble.timer.delay2 matches 180 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.7 2.0
# move to next stage after 20 seconds
execute if score scramble.handler scramble.timer.delay2 matches 199 run title @a title {"text":"Go!","color":"dark_aqua","bold":true}
execute if score scramble.handler scramble.stage matches 2 if score scramble.handler scramble.timer.delay2 matches 200.. run function stmc:games/trials/scramble/helper/game_start

# if we're in stage 3 (game in progress), increment the game timer & run the main game function
execute if score scramble.handler scramble.stage matches 3 run scoreboard players add scramble.handler scramble.timer.game 1
execute if score scramble.handler scramble.stage matches 3 run function stmc:games/trials/scramble/round

# if we're in stage 4, increment the timer
execute if score scramble.handler scramble.stage matches 4 run scoreboard players add scramble.handler scramble.timer.delay3 1
execute if score scramble.handler scramble.stage matches 4 if score scramble.handler scramble.timer.delay3 matches 3 run function stmc:games/trials/scramble/reset
execute if score scramble.handler scramble.stage matches 4 if score scramble.handler scramble.timer.delay3 matches 200 run function stmc:games/trials/scramble/player_announcements
# move to next stage after 15 seconds
execute if score scramble.handler scramble.stage matches 4 if score scramble.handler scramble.timer.delay3 matches 300.. run scoreboard players add tr.handler tr.stage 1