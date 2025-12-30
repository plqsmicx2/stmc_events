# tick function for race

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay4 (reset & point announcement)

# run load function if this is our first time here
execute unless score race.handler race.stage matches 0.. run function stmc:games/race/load

# run functions every tick
function stmc:games/race/points_update
function stmc:games/race/sidebar with storage stmc:global

# auto pause
execute unless score race.handler race.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment timer
execute if score race.handler race.stage matches 0 run scoreboard players add race.handler race.timer.delay1 1
# reset world
execute in stmc:race if score race.handler race.timer.delay1 matches 3 run fill -15 106 10 -11 109 10 spruce_fence
execute in stmc:race if score race.handler race.timer.delay1 matches 3 run fill -15 106 17 -11 108 17 red_stained_glass
execute if score race.handler race.stage matches 0 if score race.handler race.timer.delay1 matches 200.. run scoreboard players set race.handler race.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score race.handler race.stage matches 1 run scoreboard players add race.handler race.timer.explanation 1
execute in stmc:race if score race.handler race.stage matches 1 run function stmc:games/race/explanation

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score race.handler race.stage matches 2 run scoreboard players add race.handler race.timer.delay2 1
# invis
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 5 run effect give @a invisibility infinite 0 true
# countdown
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 100 run title @a actionbar {"text":"5 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 120 run title @a actionbar {"text":"4 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 140 run title @a actionbar {"text":"3 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 160 run title @a actionbar {"text":"2 seconds!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 180 run title @a actionbar {"text":"1 second!", "color":"green"}
execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 199 run title @a title {"text":"Go!", "color":"green"}

execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 100 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1
execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 120 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.1
execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 140 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.2
execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 160 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.3
execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 180 run playsound minecraft:block.note_block.pling master @a -13 105 15 0.8 1.4
execute as @a at @s if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 199 run playsound minecraft:block.note_block.pling master @a -13 105 15 1 2

execute if score race.handler race.stage matches 2 if score race.handler race.timer.delay2 matches 200.. run scoreboard players set race.handler race.stage 3

# if we're in stage 3, increment timer & run game
execute if score race.handler race.stage matches 3 run scoreboard players add race.handler race.timer.game 1
execute if score race.handler race.stage matches 3 run function stmc:games/race/game_tick with storage stmc:global

# if we're in stage 4, run reset & point announcement
execute if score race.handler race.stage matches 4 run scoreboard players add race.handler race.timer.delay3 1
execute if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 3 run gamemode spectator @a
execute if score race.handler race.timer.delay3 matches 100 run function stmc:games/race/player_announcements
execute if score race.handler race.timer.delay3 matches 300 run function stmc:games/race/fastest_lap_announcement
execute if score race.handler race.timer.delay3 matches 500 run function stmc:games/race/team_announcement with storage stmc:global
execute if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 600.. run function stmc:games/race/reset