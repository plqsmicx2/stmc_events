# this function runs whenever attempting to start the blitz game
# the function will set the next game to blitz
# then will increment the current event stage

# set next game to blitz
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 6
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 6
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 6
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 6
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 6
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 6
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 6
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 6

# increment stage
scoreboard players add stmc.handler event.stage 1

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# run blitz load function
function stmc:games/blitz/load