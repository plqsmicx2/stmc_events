# tick function for dungeons
# this function runs the main thread
# the function is run independently (no selector or dimension)

# run points update & sidebar
function stmc:games/dungeons/points/point_update with storage dungeons:data
function stmc:games/dungeons/sidebar with storage stmc:global

# run automatic pause
execute unless score dungeons.handler dungeons.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment timer
execute if score dungeons.handler dungeons.stage matches 0 run scoreboard players add dungeons.handler dungeons.timer.delay1 1

# reset world
execute in stmc:dungeons if score dungeons.handler dungeons.timer.delay1 matches 2 run kill @e[type=item]
execute in stmc:dungeons if score dungeons.handler dungeons.timer.delay1 matches 3 run function stmc:games/dungeons/helper/build_world

execute if score dungeons.handler dungeons.stage matches 0 if score dungeons.handler dungeons.timer.delay1 matches 200.. run scoreboard players set dungeons.handler dungeons.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score dungeons.handler dungeons.stage matches 1 run scoreboard players add dungeons.handler dungeons.timer.explanation 1
execute in stmc:dungeons as @a if score dungeons.handler dungeons.stage matches 1 run function stmc:games/dungeons/helper/explanation

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score dungeons.handler dungeons.stage matches 2 run scoreboard players add dungeons.handler dungeons.timer.delay2 1

# countdown
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 100 run title @a actionbar {"text":"5 seconds!", "color":"yellow"}
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 120 run title @a actionbar {"text":"4 seconds!", "color":"yellow"}
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 140 run title @a actionbar {"text":"3 seconds!", "color":"yellow"}
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 160 run title @a actionbar {"text":"2 seconds!", "color":"yellow"}
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 180 run title @a actionbar {"text":"1 second!", "color":"yellow"}

execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 100 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 120 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.1
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 140 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.2
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 160 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.4
execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 180 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.6

execute if score dungeons.handler dungeons.stage matches 2 if score dungeons.handler dungeons.timer.delay2 matches 200.. run function stmc:games/dungeons/game/start

# if we're in stage 3, run game
execute in stmc:dungeons if score dungeons.handler dungeons.stage matches 3 run function stmc:games/dungeons/game_tick

# if we're in stage 4, run reset & point announcement
execute if score dungeons.handler dungeons.stage matches 4 run scoreboard players add dungeons.handler dungeons.timer.announcements 1
execute if score dungeons.handler dungeons.timer.announcements matches 100 run function stmc:games/dungeons/helper/announcements/rooms
execute if score dungeons.handler dungeons.timer.announcements matches 300 run function stmc:games/dungeons/helper/announcements/team
execute if score dungeons.handler dungeons.stage matches 4 if score dungeons.handler dungeons.timer.announcements matches 400.. run function stmc:games/dungeons/reset