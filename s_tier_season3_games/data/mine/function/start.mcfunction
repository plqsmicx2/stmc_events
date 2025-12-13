# this function runs whenever attempting to start the mine game
# the function will set the next game to mine
# then will increment the current event stage

# set next game to mine
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 4
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 4
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 4
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 4
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 4
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 4
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 4
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 4

# increment stage
scoreboard players add stmc.handler event.stage 1

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# run mine load function
execute in mine:lobby run function mine:load