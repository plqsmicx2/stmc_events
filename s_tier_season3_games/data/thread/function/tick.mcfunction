# tick function for whole competition
# serves as the single thread handling the whole event

# before event stuff:

# automatically assign teams if applicable
execute if score stmc.handler event.teamAssignment matches 1 run function thread:assign_teams

# calculate # of players
scoreboard objectives add .players dummy
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players add stmc.handler .players 1
execute store result storage stmc:global players int 1 run scoreboard players get stmc.handler .players
scoreboard objectives remove .players

# update player points & determine rankings from that
function thread:points_update
function thread:calculate_rankings
execute unless score stmc.handler event.paused matches 0 run function thread:default_sidebar with storage stmc:global

# before event perms
execute unless score stmc.handler event.paused matches 0.. run gamemode adventure @a

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 run function thread:stage_tick