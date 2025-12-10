# this function runs whenever attempting to start the race game
# the function will set the next game to race
# then will increment the current event stage

# set next game to race
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 1
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 1
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 1
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 1
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 1
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 1
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 1
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 1

# increment stage
scoreboard players add stmc.handler event.stage 1

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# run race load function
function sprint:load