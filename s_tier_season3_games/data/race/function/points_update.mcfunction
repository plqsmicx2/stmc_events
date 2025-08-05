# points update function for Race [RACE]

# this function will add all points to players
# excluding any values that haven't been set yet

# the function will then sum up team points

# and finally set total lap time as the actionbar

# <===== PLAYER POINTS =====>

# reset individual points
execute as @a run scoreboard players set @s race.points.indiv 0

# indiv placement
execute as @a if score @s race.completion.rank matches 1 run scoreboard players set @s race.points.indiv 565
execute as @a if score @s race.completion.rank matches 2 run scoreboard players set @s race.points.indiv 500
execute as @a if score @s race.completion.rank matches 3 run scoreboard players set @s race.points.indiv 455
execute as @a if score @s race.completion.rank matches 4 run scoreboard players set @s race.points.indiv 410
execute as @a if score @s race.completion.rank matches 5 run scoreboard players set @s race.points.indiv 395
execute as @a if score @s race.completion.rank matches 6 run scoreboard players set @s race.points.indiv 340
execute as @a if score @s race.completion.rank matches 7 run scoreboard players set @s race.points.indiv 325
execute as @a if score @s race.completion.rank matches 8 run scoreboard players set @s race.points.indiv 310
execute as @a if score @s race.completion.rank matches 9 run scoreboard players set @s race.points.indiv 295
execute as @a if score @s race.completion.rank matches 10 run scoreboard players set @s race.points.indiv 280
execute as @a if score @s race.completion.rank matches 11 run scoreboard players set @s race.points.indiv 225
execute as @a if score @s race.completion.rank matches 12 run scoreboard players set @s race.points.indiv 210
execute as @a if score @s race.completion.rank matches 13 run scoreboard players set @s race.points.indiv 195
execute as @a if score @s race.completion.rank matches 14 run scoreboard players set @s race.points.indiv 180
execute as @a if score @s race.completion.rank matches 15 run scoreboard players set @s race.points.indiv 165
execute as @a if score @s race.completion.rank matches 16 run scoreboard players set @s race.points.indiv 120
execute as @a if score @s race.completion.rank matches 17 run scoreboard players set @s race.points.indiv 105
execute as @a if score @s race.completion.rank matches 18 run scoreboard players set @s race.points.indiv 90
execute as @a if score @s race.completion.rank matches 19 run scoreboard players set @s race.points.indiv 75
execute as @a if score @s race.completion.rank matches 20 run scoreboard players set @s race.points.indiv 60
execute as @a if score @s race.completion.rank matches 21 run scoreboard players set @s race.points.indiv 45
execute as @a if score @s race.completion.rank matches 22 run scoreboard players set @s race.points.indiv 30
execute as @a if score @s race.completion.rank matches 23 run scoreboard players set @s race.points.indiv 15
execute as @a if score @s race.completion.rank matches 24 run scoreboard players set @s race.points.indiv 0

# team placement
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=RED_RACCOONS] if score race.RedRaccoons race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=ORANGE_OTTERS] if score race.OrangeOtters race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=PINK_PIKAS] if score race.PinkPikas race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=GREEN_GOATS] if score race.GreenGoats race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=CYAN_COUGARS] if score race.CyanCougars race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 100
execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 2 run scoreboard players add @s race.points.indiv 80
execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 3 run scoreboard players add @s race.points.indiv 60
execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 4 run scoreboard players add @s race.points.indiv 40
execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 5 run scoreboard players add @s race.points.indiv 20
execute as @a[team=PURPLE_PENGUINS] if score race.PurplePenguins race.completion.rank matches 6 run scoreboard players add @s race.points.indiv 0

# fastest laps
execute as @a if score @s race.fastest_lap.rank matches 1 run scoreboard players add @s race.points.indiv 50
execute as @a if score @s race.fastest_lap.rank matches 2 run scoreboard players add @s race.points.indiv 40
execute as @a if score @s race.fastest_lap.rank matches 3 run scoreboard players add @s race.points.indiv 30
execute as @a if score @s race.fastest_lap.rank matches 4 run scoreboard players add @s race.points.indiv 20
execute as @a if score @s race.fastest_lap.rank matches 5 run scoreboard players add @s race.points.indiv 10

# <===== TEAM POINTS =====>

# reset team points
scoreboard players set race.RedRaccoons race.points.team 0
scoreboard players set race.OrangeOtters race.points.team 0
scoreboard players set race.PinkPikas race.points.team 0
scoreboard players set race.GreenGoats race.points.team 0
scoreboard players set race.CyanCougars race.points.team 0
scoreboard players set race.PurplePenguins race.points.team 0

# sum up team points
execute as @a[team=RED_RACCOONS] run scoreboard players operation race.RedRaccoons race.points.team += @s race.points.indiv
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation race.OrangeOtters race.points.team += @s race.points.indiv
execute as @a[team=PINK_PIKAS] run scoreboard players operation race.PinkPikas race.points.team += @s race.points.indiv
execute as @a[team=GREEN_GOATS] run scoreboard players operation race.GreenGoats race.points.team += @s race.points.indiv
execute as @a[team=CYAN_COUGARS] run scoreboard players operation race.CyanCougars race.points.team += @s race.points.indiv
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation race.PurplePenguins race.points.team += @s race.points.indiv

# <===== SET ACTIONBAR =====>
execute as @a if score race.handler race.stage matches 3..4 if score @s race.laptime.seconds matches 0..9 run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":0",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"},{text:" | Rank: ",color:green},{score:{name:"@s",objective:race.currentPlacement}}]
execute as @a if score race.handler race.stage matches 3..4 if score @s race.laptime.seconds matches 10.. run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"},{text:" | Rank: ",color:green},{score:{name:"@s",objective:race.currentPlacement}}]