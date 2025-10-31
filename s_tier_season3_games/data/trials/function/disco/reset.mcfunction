# reset function for disco [DISCO]

# set all alive players to a placement of #1
execute as @a[scores={disco.alive=1..}] run scoreboard players set @s disco.points.placement 1

# and play fireworks for those who completed
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~-1 ~ ~ {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~-1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~1 ~ ~ {LifeTime:40}

# reset platform
execute in trials:disco run fill -5 103 -5 5 103 5 gold_block
execute in trials:disco run fill -4 107 -4 4 107 4 gold_block

# clear all players' hotbars
execute as @a run clear @s

# clear effects
effect clear @a

# force stage
scoreboard players set disco.handler disco.stage 4