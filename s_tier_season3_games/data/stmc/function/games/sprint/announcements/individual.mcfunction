# indiv points
tellraw @a {text:"Top Individual Points for Sprint:",color:"dark_green"}
execute as @a[scores={sprint.points.indiv.rank=1}] run tellraw @a ["",{text:"#1: ",color:dark_green},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sprint.points.indiv"},color:"red"},{text:" points",color:dark_green}]
execute as @a[scores={sprint.points.indiv.rank=2}] run tellraw @a ["",{text:"#2: ",color:dark_green},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sprint.points.indiv"},color:"red"},{text:" points",color:dark_green}]
execute as @a[scores={sprint.points.indiv.rank=3}] run tellraw @a ["",{text:"#3: ",color:dark_green},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sprint.points.indiv"},color:"red"},{text:" points",color:dark_green}]
execute as @a[scores={sprint.points.indiv.rank=4}] run tellraw @a ["",{text:"#4: ",color:dark_green},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sprint.points.indiv"},color:"red"},{text:" points",color:dark_green}]
execute as @a[scores={sprint.points.indiv.rank=5}] run tellraw @a ["",{text:"#5: ",color:dark_green},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sprint.points.indiv"},color:"red"},{text:" points",color:dark_green}]
tellraw @a {text:" "}