# Announces points for race

# 1) Fastest lap
# 2) Team points

# <===== FASTEST LAP ANNOUNCEMENT =====>

execute if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a {"text":"Fastest laps:",color:"white"}
execute as @a if score @s race.fastest_lap.rank matches 1 if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a [{text:"[#1]: ",bold:true,color:"green"},{selector:"@s",bold:true}]
execute as @a if score @s race.fastest_lap.rank matches 2 if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a [{text:"[#2]: ",bold:true,color:"green"},{selector:"@s",bold:true}]
execute as @a if score @s race.fastest_lap.rank matches 3 if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a [{text:"[#3]: ",bold:true,color:"green"},{selector:"@s",bold:true}]
execute as @a if score @s race.fastest_lap.rank matches 4 if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a [{text:"[#4]: ",bold:true,color:"green"},{selector:"@s",bold:true}]
execute as @a if score @s race.fastest_lap.rank matches 5 if score race.handler race.stage matches 4 if score race.handler race.timer.delay3 matches 20 run tellraw @a [{text:"[#5]: ",bold:true,color:"green"},{selector:"@s",bold:true}]

# <===== TEAM POINTS ANNOUNCEMENT =====>

execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 1 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#1]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]

execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 2 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#2]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]

execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 3 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#3]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]

execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 4 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#4]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]

execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 5 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#5]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]

execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Red Raccoons",color:red,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Orange Otters",color:gold,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Pink Pikas",color:light_purple,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Green Goats",color:dark_green,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Cyan Cougars",color:dark_aqua,bold:true}]
execute if score race.RedRaccoons race.points.team.rank matches 6 if score race.handler race.timer.delay3 matches 180 run tellraw @a [{text:"[#6]: ",color:green,bold:true},{text:"Purple Penguins",color:dark_purple,bold:true}]