teleport @s 0 101 0 0 0

clear @s

gamemode adventure @s

# sound effect
execute as @s at @s run playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 2
execute as @s at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 2 2
execute as @s at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.5 0.5

# particle effect
execute at @s run particle minecraft:glow ~1.5 ~1 ~ 0.5 0.5 0.5 1 4 force @s
execute at @s run particle minecraft:glow ~ ~1 ~1.5 0.5 0.5 0.5 1 4 force @s
execute at @s run particle minecraft:glow ~-1.5 ~1 ~ 0.5 0.5 0.5 1 4 force @s
execute at @s run particle minecraft:glow ~ ~1 ~-1.5 0.5 0.5 0.5 1 4 force @s
