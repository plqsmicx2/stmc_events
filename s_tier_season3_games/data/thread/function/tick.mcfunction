# tick function for whole competition
# serves as the single thread handling the whole event

# before event stuff:

# automatically assign teams if applicable
execute if score stmc.handler event.teamAssignment matches 1 run function thread:assign_teams

# update player points & determine rankings from that
function thread:points_update
function thread:calculate_rankings

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 run function thread:stage_tick