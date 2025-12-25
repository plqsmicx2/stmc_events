# helper function that plays a sound
# when a player earns points

# runs as @s {player earning the points}

execute as @s at @s run playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 2
execute as @s at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.5
execute as @s at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 0.5 2