# tick function for race

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay3 (reset & point announcement)

# run functions every tick
execute if score arena.handler arena.stage matches 3..4 run function stmc:games/arena/helper/points/update
function stmc:games/arena/sidebar with storage stmc:global

# determine players on a team
function stmc:games/arena/helper/game/player_count

# run automatic pause
execute unless score arena.handler arena.stage matches 3 run function stmc:thread/helper/automatic_pause

# if we're in stage 0, increment timer
execute if score arena.handler arena.stage matches 0 run scoreboard players add arena.handler arena.timer.delay1 1
execute if score arena.handler arena.stage matches 0 if score arena.handler arena.timer.delay1 matches 100.. run scoreboard players set arena.handler arena.stage 1
# add forceload
execute in stmc:arena if score arena.handler arena.timer.delay1 matches 50 run forceload add -25 175 100 -50

# if we're in stage 1, increment timer & run explanation
execute if score arena.handler arena.stage matches 1 run scoreboard players add arena.handler arena.timer.explanation 1
execute in stmc:arena if score arena.handler arena.stage matches 1 run function stmc:games/arena/announcements/explanation

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score arena.handler arena.stage matches 2 run scoreboard players add arena.handler arena.timer.delay2 1
# countdown
execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 100 run title @a actionbar {"text":"5 seconds!", "color":"red"}
execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 120 run title @a actionbar {"text":"4 seconds!", "color":"red"}
execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 140 run title @a actionbar {"text":"3 seconds!", "color":"red"}
execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 160 run title @a actionbar {"text":"2 seconds!", "color":"red"}
execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 180 run title @a actionbar {"text":"1 second!", "color":"red"}

execute if score arena.handler arena.stage matches 2 if score arena.handler arena.timer.delay2 matches 200.. run function stmc:games/arena/helper/game/start

# if we're in stage 3, increment timer & run game
execute if score arena.handler arena.stage matches 3 run scoreboard players add arena.handler arena.timer.game 1
execute if score arena.handler arena.stage matches 3 run function stmc:games/arena/game_tick

# if we're in stage 4, run reset & point announcement
execute if score arena.handler arena.stage matches 4 run scoreboard players add arena.handler arena.timer.delay3 1
execute if score arena.handler arena.timer.delay3 matches 100 run function stmc:games/arena/announcements/kills
execute if score arena.handler arena.timer.delay3 matches 300 run function stmc:games/arena/announcements/player
execute if score arena.handler arena.timer.delay3 matches 500 run function stmc:games/arena/announcements/team
execute if score arena.handler arena.stage matches 4 if score arena.handler arena.timer.delay3 matches 600.. run function stmc:games/arena/reset