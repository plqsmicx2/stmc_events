# helper function that creates & sets scoreboards

# return to trials lobby if warped fungus is used
scoreboard objectives add tr.return used:warped_fungus_on_a_stick

# run other trials games' loads
function stmc:games/trials/replicate/load
function stmc:games/trials/scramble/load
function stmc:games/trials/spleef/load
function stmc:games/trials/towers/load
function stmc:games/trials/spleef/load