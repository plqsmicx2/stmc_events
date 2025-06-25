# reset function for disco [DISCO]

# actually doesn't function as a typical reset, but rather the point awards

# award completion points [if applicable]
execute as @a[scores={disco.alive=1..}] run scoreboard players add @s disco.points.indiv 15
execute as @a[scores={disco.alive=1..}] run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+15 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Completed all rounds!",bold:true,color:"red"}]

# and play fireworks for those who completed
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~-1 ~ ~ {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~-1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~ ~ ~1 {LifeTime:40}
execute as @a[scores={disco.alive=1..}] at @s run summon minecraft:firework_rocket ~1 ~ ~ {LifeTime:40}

# award survival points [for multiple players alive]
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run scoreboard players add @s disco.points.indiv 5
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+5 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 3 run scoreboard players add @s disco.points.indiv 10
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+10 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 4 run scoreboard players add @s disco.points.indiv 15
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+15 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 5 run scoreboard players add @s disco.points.indiv 20
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+20 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 6 run scoreboard players add @s disco.points.indiv 25
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+25 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 7 run scoreboard players add @s disco.points.indiv 30
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+30 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 8 run scoreboard players add @s disco.points.indiv 35
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+35 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 9 run scoreboard players add @s disco.points.indiv 40
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+40 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 10 run scoreboard players add @s disco.points.indiv 45
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+45 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 11 run scoreboard players add @s disco.points.indiv 50
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+50 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 12 run scoreboard players add @s disco.points.indiv 55
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+55 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 13 run scoreboard players add @s disco.points.indiv 60
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+60 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 14 run scoreboard players add @s disco.points.indiv 65
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+65 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 15 run scoreboard players add @s disco.points.indiv 70
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+70 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 16 run scoreboard players add @s disco.points.indiv 75
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+75 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 17 run scoreboard players add @s disco.points.indiv 80
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+80 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 18 run scoreboard players add @s disco.points.indiv 85
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+85 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 19 run scoreboard players add @s disco.points.indiv 90
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+90 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 20 run scoreboard players add @s disco.points.indiv 95
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+95 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 21 run scoreboard players add @s disco.points.indiv 100
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+100 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 22 run scoreboard players add @s disco.points.indiv 105
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+105 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 23 run scoreboard players add @s disco.points.indiv 110
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+110 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]

execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 24 run scoreboard players add @s disco.points.indiv 115
execute as @a[scores={disco.alive=1..}] if score disco.handler disco.players_alive matches 2 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+115 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Bonus survival!",bold:true,color:"red"}]


# reset platform
execute in trials:disco run fill -5 103 -5 5 103 5 gold_block
execute in trials:disco run fill -4 107 -4 4 107 4 gold_block

# clear all players' hotbars
execute as @a run clear @s

# clear effects
effect clear @a