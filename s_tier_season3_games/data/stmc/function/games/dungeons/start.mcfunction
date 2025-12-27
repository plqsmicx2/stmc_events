# this function runs whenever attempting to start the dungeons game
# the function will set the next game to dungeons
# then will increment the current event stage

# set next game to dungeons
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 10
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 10
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 10
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 10
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 10
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 10
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 10
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 10

# increment stage
scoreboard players add stmc.handler event.stage 1

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# run dungeons load function
execute in stmc:dungeons run function stmc:games/dungeons/load

# start game
scoreboard players set dungeons.handler dungeons.stage 0