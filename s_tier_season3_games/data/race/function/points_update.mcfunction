# points update function for Race [RACE]

# this function will add all points to players
# excluding any values that haven't been set yet

# the function will then sum up team points

# and finally set total lap time as the actionbar

# <===== PLAYER POINTS =====>

# reset individual points
execute as @a run scoreboard players set @s race.points.indiv 0

# indiv placement
scoreboard players set race.handler race.points.placement 8
execute as @a if score @s race.completion.rank matches 1.. run scoreboard players set @s race.points.indiv 32
execute as @a if score @s race.completion.rank matches 1.. run scoreboard players operation @s race.points.indiv -= @s race.completion.rank
execute as @a if score @s race.completion.rank matches 1.. run scoreboard players operation @s race.points.indiv *= race.handler race.points.placement

# indiv bonuses
execute as @a if score @s race.completion.rank matches 1..20 run scoreboard players add @s race.points.indiv 25
execute as @a if score @s race.completion.rank matches 1..10 run scoreboard players add @s race.points.indiv 25
execute as @a if score @s race.completion.rank matches 1..5 run scoreboard players add @s race.points.indiv 15
execute as @a if score @s race.completion.rank matches 1..3 run scoreboard players add @s race.points.indiv 15
execute as @a if score @s race.completion.rank matches 1 run scoreboard players add @s race.points.indiv 15

# fastest laps
execute if score race.handler race.stage matches 4 as @a if score @s race.fastest_lap.rank matches 1 run scoreboard players add @s race.points.indiv 50
execute if score race.handler race.stage matches 4 as @a if score @s race.fastest_lap.rank matches 2 run scoreboard players add @s race.points.indiv 40
execute if score race.handler race.stage matches 4 as @a if score @s race.fastest_lap.rank matches 3 run scoreboard players add @s race.points.indiv 30
execute if score race.handler race.stage matches 4 as @a if score @s race.fastest_lap.rank matches 4 run scoreboard players add @s race.points.indiv 20
execute if score race.handler race.stage matches 4 as @a if score @s race.fastest_lap.rank matches 5 run scoreboard players add @s race.points.indiv 10

# <===== TEAM POINTS =====>

# reset team points
scoreboard players set race.RedRaccoons race.points.team 0
scoreboard players set race.OrangeOtters race.points.team 0
scoreboard players set race.PinkPikas race.points.team 0
scoreboard players set race.YellowYaks race.points.team 0
scoreboard players set race.GreenGoats race.points.team 0
scoreboard players set race.CyanCougars race.points.team 0
scoreboard players set race.PurplePenguins race.points.team 0
scoreboard players set race.BlueBears race.points.team 0

# sum up team points
execute as @a[team=RED_RACCOONS] run scoreboard players operation race.RedRaccoons race.points.team += @s race.points.indiv
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation race.OrangeOtters race.points.team += @s race.points.indiv
execute as @a[team=PINK_PIKAS] run scoreboard players operation race.PinkPikas race.points.team += @s race.points.indiv
execute as @a[team=YELLOW_YAKS] run scoreboard players operation race.YellowYaks race.points.team += @s race.points.indiv
execute as @a[team=GREEN_GOATS] run scoreboard players operation race.GreenGoats race.points.team += @s race.points.indiv
execute as @a[team=CYAN_COUGARS] run scoreboard players operation race.CyanCougars race.points.team += @s race.points.indiv
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation race.PurplePenguins race.points.team += @s race.points.indiv
execute as @a[team=BLUE_BEARS] run scoreboard players operation race.BlueBears race.points.team += @s race.points.indiv

# <===== SET ACTIONBAR =====>
execute as @a if score race.handler race.stage matches 3..4 if score @s race.laptime.seconds matches 0..9 run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":0",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"},{text:" | Rank: ",color:green},{score:{name:"@s",objective:race.currentPlacement}}]
execute as @a if score race.handler race.stage matches 3..4 if score @s race.laptime.seconds matches 10.. run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"},{text:" | Rank: ",color:green},{score:{name:"@s",objective:race.currentPlacement}}]