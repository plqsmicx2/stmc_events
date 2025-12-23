# helper function that plays a sound & particles
# when a player earns points

# runs as @s {player earning the points}

# sound effect

# sound 1 (lower pitch)
function effects:grant_points/sound1

# sound 2 (higher pitch) 0.1s from now
execute as @s run schedule function effects:grant_points/sound1 2

# particle effect
execute at @s run particle minecraft:wax_on ~1.5 ~1 ~ 0.5 0.5 0.5 1 4 force @a
execute at @s run particle minecraft:wax_on ~ ~1 ~1.5 0.5 0.5 0.5 1 4 force @a
execute at @s run particle minecraft:wax_on ~-1.5 ~1 ~ 0.5 0.5 0.5 1 4 force @a
execute at @s run particle minecraft:wax_on ~ ~1 ~-1.5 0.5 0.5 0.5 1 4 force @a