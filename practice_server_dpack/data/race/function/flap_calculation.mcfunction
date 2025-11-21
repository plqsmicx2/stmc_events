# This function calculates a player's fastest lap
# the function is run as @s

scoreboard players set @s race.fastest_lap 4800
execute if score @s race.laptime.1 matches 1.. if score @s race.fastest_lap > @s race.laptime.1 run scoreboard players operation @s race.fastest_lap = @s race.laptime.1
execute if score @s race.laptime.2 matches 1.. if score @s race.fastest_lap > @s race.laptime.2 run scoreboard players operation @s race.fastest_lap = @s race.laptime.2
execute if score @s race.laptime.3 matches 1.. if score @s race.fastest_lap > @s race.laptime.3 run scoreboard players operation @s race.fastest_lap = @s race.laptime.3
execute if score @s race.laptime.4 matches 1.. if score @s race.fastest_lap > @s race.laptime.4 run scoreboard players operation @s race.fastest_lap = @s race.laptime.4