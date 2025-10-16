# reset function for spleef

# a little point handling in case multiple people from one team live

# 2 players alive --> give +1 survivor points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 2 run scoreboard players add @s spleef.points.indiv 3

# 3 players alive --> give +2 survivor points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 3 run scoreboard players add @s spleef.points.indiv 6

# 4 players alive --> give +3 survivor points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 4 run scoreboard players add @s spleef.points.indiv 9

# play a sound effect
execute as @a[scores={spleef.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 2 1
execute as @a[scores={spleef.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 1.2
execute as @a[scores={spleef.alive=1}] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 0.8

# announce winner
execute as @a[scores={spleef.alive=1}] run tellraw @a ["",{selector:"@s"},{text:" survived!",color:"white"}]

# reset some stuff
effect clear @a
clear @a
gamemode spectator @a
time set day