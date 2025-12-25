# helper function that plays a sound
# when a player earns points

# runs as @s {player earning the points}

execute as @s at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 4 1.5
execute as @s at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.1 2
execute as @s at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.5 2