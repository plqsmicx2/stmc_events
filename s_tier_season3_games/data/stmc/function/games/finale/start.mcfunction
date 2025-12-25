# this function runs whenever attempting to start the finale game
# the function will set the stage to the finale & load the game

# set stage to finale
scoreboard players set stmc.handler event.stage 17

# update lobby stage
scoreboard players reset lobby.handler lobby.stage

# load finale
function stmc:games/finale/load