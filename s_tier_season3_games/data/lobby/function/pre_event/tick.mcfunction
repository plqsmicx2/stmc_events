# tick function for lobby before event

# increment timer
scoreboard players add stmc.handler event.timer.pre_game 1

# run load
execute if score stmc.handler event.timer.pre_game matches 1 run function lobby:pre_event/load

# run functions
function lobby:points_update
function lobby:sidebar

# teleport players to lobby
execute as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] in lobby:lobby run teleport @s 0 101 0

# announce event start
execute if score stmc.handler event.timer.pre_game matches 5 run title @a title {"text":"STMC Invitational", "color":"green", "bold":true}