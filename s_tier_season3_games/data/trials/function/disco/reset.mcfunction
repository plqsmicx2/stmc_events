# reset function for disco [DISCO]

# actually doesn't function as a typical reset, but rather the point awards

# award completion points [if applicable]
execute as @a[scores={disco.alive=1..}] run scoreboard players add @s disco.points.indiv 5
execute as @a[scores={disco.alive=1..}] run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+5 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Completed all rounds!",bold:true,color:"red"}]

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