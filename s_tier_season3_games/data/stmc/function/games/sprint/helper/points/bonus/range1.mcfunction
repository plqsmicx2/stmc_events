# helper function that handles getting the time bonus for sprint
# operates on @s

# handles case #1: under 30 seconds

# set increment for range
scoreboard players set #math .secIncrement 3

# standardize to time range (not necessary for this case)
# scoreboard players remove @s sprint.timer.remainder 0
# convert into seconds from ticks
scoreboard players operation @s sprint.timer.remainder /= #math .tps
# convert into points from seconds
scoreboard players operation @s sprint.timer.remainder /= #math .secIncrement
# add to bonus
scoreboard players operation @s sprint.points.bonus += @s sprint.timer.remainder

# add sum of previous ranges (not necessary for this case)
scoreboard players add @s sprint.points.bonus 0