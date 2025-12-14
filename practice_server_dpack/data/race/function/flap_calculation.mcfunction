# This function calculates a player's fastest lap
# the function is run as @s

# ensure no lap is incomplete
execute as @a if score @s race.completion.rank matches 1.. if score @s race.laptime.1 matches ..1200 run scoreboard players set @s race.laptime.1 4800
execute as @a if score @s race.completion.rank matches 1.. if score @s race.laptime.2 matches ..1200 run scoreboard players set @s race.laptime.2 4800
execute as @a if score @s race.completion.rank matches 1.. if score @s race.laptime.3 matches ..1200 run scoreboard players set @s race.laptime.3 4800
execute as @a if score @s race.completion.rank matches 1.. if score @s race.laptime.4 matches ..1200 run scoreboard players set @s race.laptime.4 4800

scoreboard players set @s race.fastest_lap 4800
execute if score @s race.laptime.1 matches 1.. if score @s race.fastest_lap > @s race.laptime.1 run scoreboard players operation @s race.fastest_lap = @s race.laptime.1
execute if score @s race.laptime.2 matches 1.. if score @s race.fastest_lap > @s race.laptime.2 run scoreboard players operation @s race.fastest_lap = @s race.laptime.2
execute if score @s race.laptime.3 matches 1.. if score @s race.fastest_lap > @s race.laptime.3 run scoreboard players operation @s race.fastest_lap = @s race.laptime.3
execute if score @s race.laptime.4 matches 1.. if score @s race.fastest_lap > @s race.laptime.4 run scoreboard players operation @s race.fastest_lap = @s race.laptime.4