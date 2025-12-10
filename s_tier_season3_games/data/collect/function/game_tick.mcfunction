# this function handles the game thread for Collect

# update visual timer
# increment timer
scoreboard players add collect.handler collect.timer.game.tickCount 1
# check if we need to update the seconds Remaining
execute if score collect.handler collect.timer.game.tickCount matches 20 run scoreboard players remove collect.handler collect.timer.game.secs 1
execute if score collect.handler collect.timer.game.tickCount matches 20 run scoreboard players set collect.handler collect.timer.game.tickCount 0
# check if we need to update the minutes Remaining
execute if score collect.handler collect.timer.game.secs matches ..-1 run scoreboard players remove collect.handler collect.timer.game.mins 1
execute if score collect.handler collect.timer.game.secs matches ..-1 run scoreboard players set collect.handler collect.timer.game.secs 59

# check if game should end
execute if score collect.handler collect.timer.game matches 14400 run function collect:end_game

# update players' item tracker
function collect:helper/item_check

# and check if teams should get a placement
function collect:helper/item_award