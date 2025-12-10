# helper function that announces when points are awarded to players

# every six rounds, announce:
execute if score disco.handler disco.rounds_played matches 6 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 12 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 18 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 24 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 30 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 36 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 42 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 48 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]
execute if score disco.handler disco.rounds_played matches 54 if score disco.handler disco.timer.game matches 1 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" survival",color:"dark_aqua"}]

# announce placement
execute if score disco.handler disco.deathThisTick matches 1 if score disco.handler disco.points.placement matches 16 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 16",color:"dark_aqua"}]
execute if score disco.handler disco.deathThisTick matches 1 if score disco.handler disco.points.placement matches ..8 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Outlasted opponent!",color:"dark_aqua"}]
execute if score disco.handler disco.deathThisTick matches 1 if score disco.handler disco.points.placement matches 4 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 4",color:"dark_aqua"}]
execute if score disco.handler disco.deathThisTick matches 1 if score disco.handler disco.points.placement matches 2 run \
        tellraw @a[scores={disco.alive=1}] [{text:"[",color:gray},{text:"+1",color:"dark_aqua"},{text:"]",color:gray},{text:" Top 2",color:"dark_aqua"}]