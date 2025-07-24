# function to announce points following the conclusion of the game

# announces in chat the following items:
# top 6 team points
# team leaderboard

# <===== TEAM POINTS CALCULATIONS =====>

function delve:calculate_rankings

# <===== ANNOUNCE POINTS =====>

# team points
tellraw @a {text:"Team Points:",color:"white"}

execute if score delve.RedRaccoons delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.RedRaccoons delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.RedRaccoons delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.RedRaccoons delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.RedRaccoons delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.RedRaccoons delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.OrangeOtters delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PinkPikas delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.GreenGoats delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.CyanCougars delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.PurplePenguins delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team"},color:"dark_green"},{text:" points",color:"white"}]