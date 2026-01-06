# indiv points
tellraw @a {text:"Top Individual Points for Trials:",color:"aqua"}
execute as @a[scores={tr.points.indiv.rank=1}] run tellraw @a ["",{text:"#1: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"tr.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=2}] run tellraw @a ["",{text:"#2: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"tr.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=3}] run tellraw @a ["",{text:"#3: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"tr.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=4}] run tellraw @a ["",{text:"#4: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"tr.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
execute as @a[scores={tr.points.indiv.rank=5}] run tellraw @a ["",{text:"#5: ",color:aqua},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"tr.points.indiv"},color:"dark_green"},{text:" points",color:aqua}]
tellraw @a {text:" "}
