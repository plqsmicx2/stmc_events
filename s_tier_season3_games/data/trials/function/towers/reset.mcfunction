# reset function for towers [TOWERS]

# no need to handle any points, those are all good elsewhere

# reset some necessary things
effect clear @a
time set day
clear @a
execute as @a run attribute @s max_health base set 20

# announce winners
execute as @a[scores={towers.alive=1}] run tellraw @a ["",{"selector":"@s"},{text:" survived!","color":"aqua"}]
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 2 1
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 0.8
execute as @a[scores={towers.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 1.2