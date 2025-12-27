# helper function that increments the dropper airborne timer
# run on @s if their timer should be incremented

# set airborne equal to what it was last tick
# this prevents adding more than one each tick
scoreboard players operation @s sprint.dropper.airborne = #temp sprint.dropper.airborne

# increment airborne by 1
scoreboard players add @s sprint.dropper.airborne 1