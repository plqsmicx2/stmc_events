# helper function that announces when points are awarded to players

# announce placement
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches 24 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+2",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 24",color:"dark_aqua"}]
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches 20 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+2",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 20",color:"dark_aqua"}]
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches ..16 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Outlasted opponent!",color:"dark_aqua"}]
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches 8 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 8",color:"dark_aqua"}]
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches 4 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 4",color:"dark_aqua"}]
execute if score spleef.handler spleef.deathThisTick matches 1 if score spleef.handler spleef.points.placement matches 2 run \
        tellraw @a[scores={spleef.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 2",color:"dark_aqua"}]