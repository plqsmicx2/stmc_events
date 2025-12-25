# helper function that announces when points are awarded to players

# announce survival
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 300 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 600 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 900 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1200 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1500 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1800 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2100 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2400 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2700 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3000 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3300 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3600 run tellraw @s ["",{text:"[",color:"gray"},{text:"+1",color:"dark_aqua"},{text:"]",color:"gray"},{text:" survival",color:"dark_aqua"}]

# announce placement
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches 24 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 24",color:"dark_aqua"}]
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches 16 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 16",color:"dark_aqua"}]
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches ..8 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Outlasted opponent!",color:"dark_aqua"}]
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches 4 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 4",color:"dark_aqua"}]
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches 2 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 2",color:"dark_aqua"}]
execute if score towers.handler towers.deathThisTick matches 1 if score towers.handler towers.stats.placement matches 1 run \
        tellraw @a[scores={towers.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 1",color:"dark_aqua"}]