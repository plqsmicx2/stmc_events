# start function for lobbies between games

# update stage
execute unless score stmc.handler event.stage matches 0 run scoreboard players add stmc.handler event.stage 1

# run load function
function stmc:lobby/between/load

# reset lobby
execute if score stmc.handler event.stage matches 0 run function stmc:lobby/between/reset_world