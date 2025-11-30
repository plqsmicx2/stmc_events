# determine ranking
function blitz:points-update
function blitz:calculate_rankings

# announce top 5 indiv
tellraw @a {text:"Top Individual Points:",color:red}
execute as @a if score @s blitz.points.indiv.rank matches 1 run tellraw @a [{text:"[#1]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"blitz.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s blitz.points.indiv.rank matches 2 run tellraw @a [{text:"[#2]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"blitz.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s blitz.points.indiv.rank matches 3 run tellraw @a [{text:"[#3]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"blitz.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s blitz.points.indiv.rank matches 4 run tellraw @a [{text:"[#4]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"blitz.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s blitz.points.indiv.rank matches 5 run tellraw @a [{text:"[#5]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"blitz.points.indiv"},color:red},{text:" points",color:red}]
