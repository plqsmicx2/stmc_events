# function to announce points following the conclusion of the game

# announces in chat the following items:
# top 5 player individual points

# <===== ANNOUNCE POINTS =====>

execute as @a at @s if score disco.handler disco.timer.delay2 matches 780 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.5

# indiv points
execute run tellraw @a {text:"Top Individual Points:",color:"white"}
execute as @a[scores={tr.points.indiv.rank=1}] run tellraw @a ["",{text:"#1: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"disco.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=2}] run tellraw @a ["",{text:"#2: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"disco.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=3}] run tellraw @a ["",{text:"#3: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"disco.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=4}] run tellraw @a ["",{text:"#4: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"disco.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=5}] run tellraw @a ["",{text:"#5: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"disco.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute run tellraw @a {text:" "}