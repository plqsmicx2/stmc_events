# helper function that creates & sets scoreboards

# return to trials lobby if warped fungus is used
scoreboard objectives add tr.return used:warped_fungus_on_a_stick

# run other trials games' loads
function trials:replicate/load
function trials:scramble/load
function trials:spleef/load
function trials:towers/load