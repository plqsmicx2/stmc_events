# <===== FASTEST PLAYER ANNOUNCEMENTS =====>

# quick ranking calculation
function stmc:games/mine/calculate_rankings

tellraw @a {"text":"Most ores mined:",color:"white"}
execute as @a if score @s mine.points.indiv.rank matches 1 run tellraw @a [{text:"[#1]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]
execute as @a if score @s mine.points.indiv.rank matches 2 run tellraw @a [{text:"[#2]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]
execute as @a if score @s mine.points.indiv.rank matches 3 run tellraw @a [{text:"[#3]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]
execute as @a if score @s mine.points.indiv.rank matches 4 run tellraw @a [{text:"[#4]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]
execute as @a if score @s mine.points.indiv.rank matches 5 run tellraw @a [{text:"[#5]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]
execute as @a unless score @s mine.points.indiv.rank matches ..5 run tellraw @s [{text:"[#:",color:"gray"},{score:{name:"@s",objective:mine.points.indiv.rank},color:gray},{text:"]: ",color:"gray"},{selector:"@s"},{text:" - ",color:gray},{score:{name:"@s",objective:"mine.points.indiv"},color:red},{text:" ores.",color:gray}]