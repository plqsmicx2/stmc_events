# helper function that plays a sound & particles
# when a player completes a level

# runs as @s

# sound effect
execute as @s at @s run playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.2 1.5
execute as @s at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 2 2
execute as @s at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 1.5

# particle effect
execute at @s run particle minecraft:portal ~1.5 ~1 ~ 0.5 0.5 0.5 1 12 force @s
execute at @s run particle minecraft:portal ~ ~1 ~1.5 0.5 0.5 0.5 1 12 force @s
execute at @s run particle minecraft:portal ~-1.5 ~1 ~ 0.5 0.5 0.5 1 12 force @s
execute at @s run particle minecraft:portal ~ ~1 ~-1.5 0.5 0.5 0.5 1 12 force @s
