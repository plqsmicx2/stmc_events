# determine ranking
function stmc:games/brawl/helper/points/calculate_rankings

# announce top 5 indiv
tellraw @a {text:"Top Killers:",color:red}
execute as @a if score @s brawl.kills.rank matches 1 run tellraw @a [{text:"[#1]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"brawl.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s brawl.kills.rank matches 2 run tellraw @a [{text:"[#2]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"brawl.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s brawl.kills.rank matches 3 run tellraw @a [{text:"[#3]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"brawl.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s brawl.kills.rank matches 4 run tellraw @a [{text:"[#4]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"brawl.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s brawl.kills.rank matches 5 run tellraw @a [{text:"[#5]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"brawl.kills"},color:red},{text:" kills",color:red}]
