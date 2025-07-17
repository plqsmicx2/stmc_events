# reset function for race

# <===== FASTEST LAP CALCULATIONS =====>

# saves player rank @s race.fastest_lap.rank

# save values in a temporary place
scoreboard objectives add race.fastest_lap.temp dummy
execute as @a at @s run scoreboard players operation @s race.fastest_lap.temp = @s race.fastest_lap

# set dummy player to -1
scoreboard players set $race.highest race.fastest_lap.temp 4800

# determine highest value
execute as @a run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp

# determine who has that highest value & assign them #1 rank
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 1

# pop the highest value to reset it
execute as @a if score @s race.fastest_lap.rank matches 1 run scoreboard players set @s race.fastest_lap.temp -2

# and repeat four more times
scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 2
execute as @a if score @s race.fastest_lap.rank matches 2 run scoreboard players set @s race.fastest_lap.temp -2

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 3
execute as @a if score @s race.fastest_lap.rank matches 3 run scoreboard players set @s race.fastest_lap.temp -2

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 4
execute as @a if score @s race.fastest_lap.rank matches 4 run scoreboard players set @s race.fastest_lap.temp -2

scoreboard players set $race.highest race.fastest_lap.temp 4800
execute as @a run scoreboard players operation $race.highest race.fastest_lap.temp < @s race.fastest_lap.temp
execute as @a if score @s race.fastest_lap.temp = $race.highest race.fastest_lap.temp run scoreboard players set @s race.fastest_lap.rank 5
execute as @a if score @s race.fastest_lap.rank matches 5 run scoreboard players set @s race.fastest_lap.temp -2

# handle important resets
effect clear @a

clear @a

gamemode spectator @a

# set player points
execute as @a run scoreboard players operation @s stats.points.indiv.g1 = @s race.points.indiv