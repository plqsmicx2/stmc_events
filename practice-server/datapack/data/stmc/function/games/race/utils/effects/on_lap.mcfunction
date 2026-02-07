# run on @s

# playsound
execute as @s at @s if score @s race.soundThisTick matches 0.. run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 1.6
execute as @s at @s if score @s race.soundThisTick matches 0.. run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.4
execute if score @s race.soundThisTick matches 0.. run scoreboard players remove @s race.soundThisTick 1

# particles in front of player
execute as @s at @s if score @s race.soundThisTick matches 0.. run particle wax_off ^ ^1 ^2 0.3 0.2 0.3 4 6 force @s 