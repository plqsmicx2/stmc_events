# tick function for whole competition
# serves as the single thread handling the whole event

# first things first, let's automatically add our players to their respective teams
# TODO
# something like execute as @a[team=!] if @s uuid == ... run team join @s
# each player will be their own command

# now that joined players have teams, let's handle their scores
function lobby:points_update
function lobby:sidebar

# and finally, we can get to the thread of the event

# first, we update the stage
# this function doesn't really do anything, but it's still useful for keeping some info
# this function WAS going to do something, but now each subthread's /reset function updates the stage, so it isn't needed
function lobby:stage_update

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 0 run function lobby:pre_event/tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 1 run function race:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 2 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 3 run function solve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 4 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 5 run function extract:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 6 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 7 run function trials:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 8 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 9 run function delve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 10 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 11 run function survival_games:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 12 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 13 run function finale:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 14 run function lobby:after_event