# tick function for mine

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay4 (reset & point announcement)

# run load function if this is our first time here
execute unless score mine.handler mine.stage matches 0.. run function stmc:games/mine/load

# automatically pause
execute unless score mine.handler mine.stage matches 2 run function stmc:thread/helper/automatic_pause

# run functions every tick
function stmc:games/mine/sidebar with storage stmc:global

# if we're in stage 0, increment timer
execute if score mine.handler mine.stage matches 0 run scoreboard players add mine.handler mine.timer.delay1 1
execute if score mine.handler mine.stage matches 0 if score mine.handler mine.timer.delay1 matches 200.. run scoreboard players set mine.handler mine.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score mine.handler mine.stage matches 1 run scoreboard players add mine.handler mine.timer.explanation 1
execute in stmc:mine/lobby if score mine.handler mine.stage matches 1 run function stmc:games/mine/explanation

# if we're in stage 2, run game_tick (it handles everything lobby/game related, including delays)
execute if score mine.handler mine.stage matches 2 run scoreboard players add mine.handler mine.timer 1
execute if score mine.handler mine.stage matches 2 run function stmc:games/mine/game_tick
# manually end game
execute if score mine.handler mine.stage.hoglin matches 2 if score mine.handler mine.stage.warden matches 2 if score mine.handler mine.stage.creeper matches 2 run scoreboard players set mine.handler mine.stage 3

# if we're in stage 3, run reset & point announcement
execute if score mine.handler mine.stage matches 3 run scoreboard players add mine.handler mine.timer.delay2 1
execute if score mine.handler mine.stage matches 3 if score mine.handler mine.timer.delay2 matches 3 run gamemode spectator @a
execute if score mine.handler mine.timer.delay2 matches 100 run function stmc:games/mine/player_announcements
execute if score mine.handler mine.timer.delay2 matches 300 run function stmc:games/mine/team_announcements with storage stmc:global
execute if score mine.handler mine.stage matches 3 if score mine.handler mine.timer.delay2 matches 400.. run function stmc:games/mine/reset