# reset function for disco [DISCO]

# set all alive players to a placement of #1
execute as @a[scores={disco.alive=1..}] run scoreboard players set @s disco.points.placement 1

# announce they won
tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+3",color:"dark_aqua"},{text:"]",color:gray},{text:" full survival!",color:"dark_aqua"}]

# and play fireworks for those who completed
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~-1 ~ ~ {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~-1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~1 ~ ~ {LifeTime:40}

# reset platform
execute in trials:disco run fill -7 116 -7 7 116 7 gold_block

# remove bossbar
bossbar remove disco.timer

# clear all players' hotbars
execute as @a run clear @s

# clear effects
effect clear @a

# force stage
scoreboard players set disco.handler disco.stage 4