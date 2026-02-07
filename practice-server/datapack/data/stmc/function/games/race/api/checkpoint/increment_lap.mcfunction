# increments a player's lap
# and plays an effect

scoreboard players add @s race.laps_completed 1

scoreboard players set @s race.soundThisTick 1
execute as @s at @s run function stmc:games/race/utils/effects/on_lap