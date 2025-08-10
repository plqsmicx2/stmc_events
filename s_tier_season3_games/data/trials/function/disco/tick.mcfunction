# this function handles the disco game

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- description of game
# 2- 10s delay
# 3- 3 example rounds [announce at start]
# 4- 20s delay with countdown at 5 seconds [also reset player alive & location]
# 5- game in progress [tpa back to top]
# 6- announce scores, /reset, stage++

# runs every tick
function trials:disco/points_update
function trials:disco/sidebar
execute if score disco.handler disco.stage matches 3 run function trials:disco/death_handler

# first, we call our load function if this is the first time we're here
execute unless score disco.handler disco.stage matches 0.. run function trials:disco/load

# if we're in stage 0, increment the timer & reset the platform
execute if score disco.handler disco.stage matches 0 run scoreboard players add disco.handler disco.timer.delay1 1
execute if score disco.handler disco.stage matches 0 in trials:disco if score disco.handler disco.timer.delay1 matches 3 run fill -5 103 -5 5 103 5 tinted_glass
execute if score disco.handler disco.stage matches 0 in trials:disco if score disco.handler disco.timer.delay1 matches 3 run fill -4 107 -4 4 107 4 tinted_glass
# move to next stage after 20 seconds
execute if score disco.handler disco.stage matches 0 if score disco.handler disco.timer.delay1 matches 400.. run scoreboard players set disco.handler disco.stage 1

# if we're in stage 1, increment the timer & run the explanation function
execute if score disco.handler disco.stage matches 1 run scoreboard players add disco.handler disco.timer.explanation 1
execute if score disco.handler disco.stage matches 1 run function trials:disco/explanation
# move to next stage after 32 seconds
execute if score disco.handler disco.stage matches 1 if score disco.handler disco.timer.explanation matches 640.. run scoreboard players set disco.handler disco.stage 2

# if we're in stage 2, increment the timer, & reset player alive & location
execute if score disco.handler disco.stage matches 2 run scoreboard players add disco.handler disco.timer.delay2 1
# countdown at last 5 seconds
execute if score disco.handler disco.timer.delay2 matches 700 run title @a actionbar {"text":"Starting in 5!","color":"dark_aqua"}
execute if score disco.handler disco.timer.delay2 matches 720 run title @a actionbar {"text":"Starting in 4!","color":"dark_aqua"}
execute if score disco.handler disco.timer.delay2 matches 740 run title @a actionbar {"text":"Starting in 3!","color":"dark_aqua"}
execute if score disco.handler disco.timer.delay2 matches 760 run title @a actionbar {"text":"Starting in 2!","color":"dark_aqua"}
execute if score disco.handler disco.timer.delay2 matches 780 run title @a actionbar {"text":"Starting in 1!","color":"dark_aqua"}
# move to next stage after 20 seconds
execute if score disco.handler disco.timer.delay2 matches 799 run title @a title {"text":"Go!","color":"dark_aqua","bold":true}
execute if score disco.handler disco.timer.delay2 matches 800.. run scoreboard players set disco.handler disco.stage 3

# if we're in stage 3 (game in progress), increment the game timer & run the main game function
execute if score disco.handler disco.stage matches 3 run scoreboard players add disco.handler disco.timer.game 1
execute if score disco.handler disco.stage matches 3..3 unless score disco.handler disco.rounds_played matches 60.. run function trials:disco/round
# move to next stage after 60 rounds
execute if score disco.handler disco.rounds_played matches 60.. run scoreboard players set disco.handler disco.stage 4
# or move to next stage no players are alive
execute if score disco.handler disco.stage matches 3 if score disco.handler disco.players_alive matches 0 run scoreboard players set disco.handler disco.stage 4

# if we're in stage 4, increment the timer
execute if score disco.handler disco.stage matches 4 run scoreboard players add disco.handler disco.timer.delay3 1
execute if score disco.handler disco.stage matches 4 if score disco.handler disco.timer.delay3 matches 3 run function trials:disco/reset
# no point announcements for disco, just after all if trials ends
# move to next stage after 15 seconds
execute if score disco.handler disco.stage matches 4 if score disco.handler disco.timer.delay3 matches 300.. run scoreboard players add tr.handler tr.stage 1