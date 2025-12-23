# this function runs whenever attempting to start the sprint game
# the function will set the next game to sprint
# then will increment the current event stage

# set next game to sprint
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 9
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 9
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 9
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 9
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 9
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 9
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 9
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 9

# increment stage
scoreboard players add stmc.handler event.stage 1

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# run sprint load function
function sprint:load