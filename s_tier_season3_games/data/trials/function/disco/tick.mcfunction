# this function handles the disco game

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- description of game
# 2- 10s delay
# 3- 3 example rounds [announce at start]
# 4- 20s delay with countdown at 5 seconds
# 5- game in progress [tpa back to top]
# 6- announce scores, /reset, stage++

# runs every tick
function trials:disco/points_update

# first, we call our load function if this is the first time we're here
execute unless score disco.handler disco.stage matches 0.. run function trials:disco/load

