# function to announce points following the conclusion of the game

# announces in chat the following items:
# top 5 player kills
# top 5 player individual points
# team leaderboard

# <===== KILL RANK CALCULATIONS =====>

# saves player rank @s sg.kills.rank

# save values in a temporary place
scoreboard objectives add sg.stats.kills.temp dummy
execute as @a at @s run scoreboard players operation @s sg.stats.kills.temp = @s sg.kills

# reset rank objective
scoreboard players set @a sg.kills.rank -1

# set dummy player to -1
scoreboard players set $sg.highest sg.stats.kills.temp -1

# determine highest value
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.stats.kills.temp > @s sg.stats.kills.temp

# determine who has that highest value & assign them #1 rank
scoreboard objectives add sg.kills.rank dummy
execute as @a if score @s sg.stats.kills.temp = $sg.highest sg.stats.kills.temp run scoreboard players set @s sg.kills.rank 1

# and repeat four more times
scoreboard players set $sg.highest sg.stats.kills.temp -1
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.stats.kills.temp > @s sg.stats.kills.temp
execute as @a if score @s sg.stats.kills.temp = $sg.highest sg.stats.kills.temp run scoreboard players set @s sg.kills.rank 2

scoreboard players set $sg.highest sg.stats.kills.temp -1
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.stats.kills.temp > @s sg.stats.kills.temp
execute as @a if score @s sg.stats.kills.temp = $sg.highest sg.stats.kills.temp run scoreboard players set @s sg.kills.rank 3

scoreboard players set $sg.highest sg.stats.kills.temp -1
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.stats.kills.temp > @s sg.stats.kills.temp
execute as @a if score @s sg.stats.kills.temp = $sg.highest sg.stats.kills.temp run scoreboard players set @s sg.kills.rank 4

scoreboard players set $sg.highest sg.stats.kills.temp -1
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.stats.kills.temp > @s sg.stats.kills.temp
execute as @a if score @s sg.stats.kills.temp = $sg.highest sg.stats.kills.temp run scoreboard players set @s sg.kills.rank 5

# <===== ANNOUNCE POINTS =====>

# kills
execute if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a {text:"Top Kills:",color:"white"}
execute as @a[scores={sg.kills.rank=1}] if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a ["",{text:"#1: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=2}] if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a ["",{text:"#2: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=3}] if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a ["",{text:"#3: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=4}] if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a ["",{text:"#4: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=5}] if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a ["",{text:"#5: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 200 run tellraw @a {text:" "}

# indiv points
execute if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @a {text:"Top Individual Points:",color:"white"}
execute as @a[scores={sg.points.indiv.rank=1}] if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @p ["",{text:"#1: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=2}] if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @p ["",{text:"#2: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=3}] if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @p ["",{text:"#3: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=4}] if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @p ["",{text:"#4: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=5}] if score sg.r3.handler sg.r3.timer.delay3 matches 400 run tellraw @p ["",{text:"#5: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]