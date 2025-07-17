# function to announce points following the conclusion of the game

# announces in chat the following items:
# top 6 team points
# team leaderboard

# <===== TEAM POINTS CALCULATIONS =====>

# set a dummy player to -1
scoreboard players set $delve.highest delve.points.team -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 1
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 1
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 1
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 1
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 1
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score delve.RedRaccoons delve.points.team.rank matches 1 run scoreboard players reset delve.RedRaccoons delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 1 run scoreboard players reset delve.OrangeOtters delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 1 run scoreboard players reset delve.PinkPikas delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 1 run scoreboard players reset delve.GreenGoats delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 1 run scoreboard players reset delve.CyanCougars delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 1 run scoreboard players reset delve.PurplePenguins delve.points.team

# and repeat five more times
scoreboard players set $delve.highest delve.points.team -1
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 2
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 2
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 2
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 2
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 2
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 2
execute if score delve.RedRaccoons delve.points.team.rank matches 2 run scoreboard players reset delve.RedRaccoons delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 2 run scoreboard players reset delve.OrangeOtters delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 2 run scoreboard players reset delve.PinkPikas delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 2 run scoreboard players reset delve.GreenGoats delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 2 run scoreboard players reset delve.CyanCougars delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 2 run scoreboard players reset delve.PurplePenguins delve.points.team

scoreboard players set $delve.highest delve.points.team -1
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 3
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 3
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 3
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 3
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 3
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 3
execute if score delve.RedRaccoons delve.points.team.rank matches 3 run scoreboard players reset delve.RedRaccoons delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 3 run scoreboard players reset delve.OrangeOtters delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 3 run scoreboard players reset delve.PinkPikas delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 3 run scoreboard players reset delve.GreenGoats delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 3 run scoreboard players reset delve.CyanCougars delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 3 run scoreboard players reset delve.PurplePenguins delve.points.team

scoreboard players set $delve.highest delve.points.team -1
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 4
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 4
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 4
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 4
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 4
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 4
execute if score delve.RedRaccoons delve.points.team.rank matches 4 run scoreboard players reset delve.RedRaccoons delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 4 run scoreboard players reset delve.OrangeOtters delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 4 run scoreboard players reset delve.PinkPikas delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 4 run scoreboard players reset delve.GreenGoats delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 4 run scoreboard players reset delve.CyanCougars delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 4 run scoreboard players reset delve.PurplePenguins delve.points.team

scoreboard players set $delve.highest delve.points.team -1
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 5
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 5
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 5
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 5
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 5
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 5
execute if score delve.RedRaccoons delve.points.team.rank matches 5 run scoreboard players reset delve.RedRaccoons delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 5 run scoreboard players reset delve.OrangeOtters delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 5 run scoreboard players reset delve.PinkPikas delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 5 run scoreboard players reset delve.GreenGoats delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 5 run scoreboard players reset delve.CyanCougars delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 5 run scoreboard players reset delve.PurplePenguins delve.points.team

scoreboard players set $delve.highest delve.points.team -1
scoreboard players operation $delve.highest delve.points.team > delve.RedRaccoons delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.OrangeOtters delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PinkPikas delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.GreenGoats delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.CyanCougars delve.points.team
scoreboard players operation $delve.highest delve.points.team > delve.PurplePenguins delve.points.team
execute if score delve.RedRaccoons delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.RedRaccoons delve.points.team.rank 6
execute if score delve.OrangeOtters delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.OrangeOtters delve.points.team.rank 6
execute if score delve.PinkPikas delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PinkPikas delve.points.team.rank 6
execute if score delve.GreenGoats delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.GreenGoats delve.points.team.rank 6
execute if score delve.CyanCougars delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.CyanCougars delve.points.team.rank 6
execute if score delve.PurplePenguins delve.points.team = $delve.highest delve.points.team run scoreboard players set delve.PurplePenguins delve.points.team.rank 6
scoreboard players reset delve.RedRaccoons delve.points.team
scoreboard players reset delve.OrangeOtters delve.points.team
scoreboard players reset delve.PinkPikas delve.points.team
scoreboard players reset delve.GreenGoats delve.points.team
scoreboard players reset delve.CyanCougars delve.points.team
scoreboard players reset delve.PurplePenguins delve.points.team

# <===== ANNOUNCE POINTS =====>

# team points
execute if score delve.handler delve.timer.delay3 matches 200 run tellraw @a {text:"Team Points:",color:"white"}

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 1 run tellraw @a ["",{text:"#1: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 2 run tellraw @a ["",{text:"#2: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 3 run tellraw @a ["",{text:"#3: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 4 run tellraw @a ["",{text:"#4: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 5 run tellraw @a ["",{text:"#5: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]

execute if score delve.handler delve.timer.delay3 matches 200 if score delve.RedRaccoons delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Red Raccoons - ", "color":"red"},{score:{name:"delve.RedRaccoons",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.OrangeOtters delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Orange Otters - ", "color":"gold"},{score:{name:"delve.OrangeOtters",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PinkPikas delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Pink Pikas - ", "color":"light_purple"},{score:{name:"delve.PinkPikas",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.GreenGoats delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Green Goats - ", "color":"dark_green"},{score:{name:"delve.GreenGoats",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.CyanCougars delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Cyan Cougars - ", "color":"dark_aqua"},{score:{name:"delve.CyanCougars",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]
execute if score delve.handler delve.timer.delay3 matches 200 if score delve.PurplePenguins delve.points.team.rank matches 6 run tellraw @a ["",{text:"#6: ",color:"white"},{text:"Purple Penguins - ", "color":"dark_purple"},{score:{name:"delve.PurplePenguins",objective:"delve.points.team.temp"},color:"dark_green"},{text:" points",color:"white"}]