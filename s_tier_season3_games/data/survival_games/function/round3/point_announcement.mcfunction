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
execute if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a {text:"Top Kills:",color:"white"}
execute as @a[scores={sg.kills.rank=1}] if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a ["",{text:"#1: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=2}] if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a ["",{text:"#2: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=3}] if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a ["",{text:"#3: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=4}] if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a ["",{text:"#4: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute as @a[scores={sg.kills.rank=5}] if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a ["",{text:"#5: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.kills"},color:"gold"},{text:" kills",color:"gold"}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 100 run tellraw @a {text:" "}

# indiv points
execute if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a {text:"Top Individual Points:",color:"white"}
execute as @a[scores={sg.points.indiv.rank=1}] if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a ["",{text:"#1: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=2}] if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a ["",{text:"#2: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=3}] if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a ["",{text:"#3: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=4}] if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a ["",{text:"#4: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute as @a[scores={sg.points.indiv.rank=5}] if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a ["",{text:"#5: ",color:"gold"},{selector:"@s"},{text:"    "},{score:{name:"@s",objective:"sg.points.indiv"},color:"dark_green"},{text:" points",color:"gold"}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 300 run tellraw @a {text:" "}

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 run tellraw @a {"text":"Team points:",color:"white"}

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 1 run tellraw @a [{text:"[#1]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 2 run tellraw @a [{text:"[#2]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 3 run tellraw @a [{text:"[#3]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 4 run tellraw @a [{text:"[#4]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 5 run tellraw @a [{text:"[#5]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]

execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.RedRaccoons sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Red Raccoons",color:red},{text:" - ",color:gold},{score:{name:"sg.RedRaccoons",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.OrangeOtters sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Orange Otters",color:gold},{text:" - ",color:gold},{score:{name:"sg.OrangeOtters",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PinkPikas sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Pink Pikas",color:light_purple},{text:" - ",color:gold},{score:{name:"sg.PinkPikas",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.GreenGoats sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Green Goats",color:dark_green},{text:" - ",color:gold},{score:{name:"sg.GreenGoats",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.CyanCougars sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Cyan Cougars",color:dark_aqua},{text:" - ",color:gold},{score:{name:"sg.CyanCougars",objective:"sg.points.team"}},{text:" points",color:gold}]
execute if score sg.r3.handler sg.r3.timer.delay3 matches 500 if score sg.PurplePenguins sg.points.team.rank matches 6 run tellraw @a [{text:"[#6]: ",color:gold},{text:"Purple Penguins",color:dark_purple},{text:" - ",color:gold},{score:{name:"sg.PurplePenguins",objective:"sg.points.team"}},{text:" points",color:gold}]