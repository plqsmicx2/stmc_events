# lobby effect that executes on a player whenever their placement is announced
# run on @s

# playsound
execute at @s run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1

# particles
execute at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 20 force @a