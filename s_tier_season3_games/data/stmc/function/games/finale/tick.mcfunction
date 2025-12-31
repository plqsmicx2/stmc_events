# tick function for finale

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game

# run load function if this is our first time here
execute unless score finale.handler finale.stage matches 0.. run function stmc:games/finale/load

function stmc:games/finale/sidebar with storage stmc:global

# set world protections
function stmc:games/finale/helper/protections

# if we're in stage 0, increment timer
execute if score finale.handler finale.stage matches 0 run scoreboard players add finale.handler finale.timer.delay1 1
execute if score finale.handler finale.stage matches 0 if score finale.handler finale.timer.delay1 matches 200.. run scoreboard players set finale.handler finale.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score finale.handler finale.stage matches 1 run scoreboard players add finale.handler finale.timer.explanation 1
execute in stmc:finale if score finale.handler finale.stage matches 1 run function stmc:games/finale/helper/explanation

# if we're in stage 2, increment timer & run game
execute if score finale.handler finale.stage matches 2 run scoreboard players add finale.handler finale.timer.game 1
execute if score finale.handler finale.stage matches 2 run function stmc:games/finale/game_tick

# determine if a team has won
execute if score finale.handler finale.stage matches 2 run function stmc:games/finale/helper/rounds_won

# if we're in stage 3, increment timer & reset
execute if score finale.handler finale.stage matches 3 run scoreboard players add finale.handler finale.timer.delay2 1
execute if score finale.handler finale.stage matches 3 if score finale.handler finale.timer.delay2 matches 5 run function stmc:games/finale/helper/announce_winner
execute if score finale.handler finale.stage matches 3 if score finale.handler finale.timer.delay2 matches 60.. run function stmc:games/finale/reset