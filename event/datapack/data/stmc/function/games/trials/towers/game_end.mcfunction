# reset function for towers [TOWERS]

# reset some necessary things
effect clear @a
time set day
clear @a
execute as @a run attribute @s max_health base set 20
gamerule natural_health_regeneration true
effect give @a instant_health 1 110 true
effect give @a night_vision infinite 0 true

# announce winners
execute as @a[scores={towers.alive=1}] run scoreboard players set @s towers.stats.placement 1
execute as @a[scores={towers.alive=1}] run tellraw @a ["",{"selector":"@s"},{text:" survived!","color":"aqua"}]
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 2 1
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 0.8
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 1.2

# move to next stage
scoreboard players set towers.handler towers.stage 4