# helper function that handles getting the time bonus for sprint
# operates on @s

# handles case #2: over 30 seconds

# set increment for range
scoreboard players set #math .secIncrement 4

# standardize to time range (get # over 30 seconds)
scoreboard players remove @s sprint.timer.remainder 600
# convert into seconds from ticks
scoreboard players operation @s sprint.timer.remainder /= #math .tps
# convert into points from seconds
scoreboard players operation @s sprint.timer.remainder /= #math .secIncrement
# add to bonus
scoreboard players operation @s sprint.points.bonus += @s sprint.timer.remainder

# add sum of previous ranges
scoreboard players add @s sprint.points.bonus 10