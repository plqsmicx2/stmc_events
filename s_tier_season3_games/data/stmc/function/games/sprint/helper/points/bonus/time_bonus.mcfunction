# helper function that calculates the time bonus to award a player
# executes as @s
# takes in the timeElapsed {timer.game} and outputs bonus points {points.bonus}

# determine time remaining from timeElapsed
# time remaining is stored in .remainder

# create temporary variable
scoreboard objectives add sprint.timer.remainder dummy
# store max time in temporary variable
execute store result score @s sprint.timer.remainder run data get storage sprint:data max_time
# subtract off time that was played
scoreboard players operation @s sprint.timer.remainder -= @s sprint.timer.game

# determine bonus points from remainder

# reset players' values
scoreboard players set @s sprint.points.bonus 0

# get some temporary variables
scoreboard objectives add .tps dummy
scoreboard players set #math .tps 20
scoreboard objectives add .secIncrement dummy

# case: under 30s remaining
execute if score @s sprint.timer.remainder matches ..600 run function stmc:games/sprint/helper/points/bonus/range1

# case: over 30s remaining
execute if score @s sprint.timer.remainder matches 601..1800 run function stmc:games/sprint/helper/points/bonus/range2

# case: over 90s remaining
execute if score @s sprint.timer.remainder matches 1801..3600 run function stmc:games/sprint/helper/points/bonus/range3

# case: over 180s remaining
execute if score @s sprint.timer.remainder matches 3601..6000 run function stmc:games/sprint/helper/points/bonus/range4

# case: over 300s remaining
# add maximum value
execute if score @s sprint.timer.remainder matches 6001.. run scoreboard players add @s sprint.points.bonus 52

# remove temporary variables
scoreboard objectives remove sprint.timer.remainder
scoreboard objectives remove .tps
scoreboard objectives remove .secIncrement