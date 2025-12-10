# helper function that calculates player & team points every tick

# individual points
scoreboard players set @a blitz.points.indiv 0

# points from finals
scoreboard objectives add .finalKillPoints dummy
execute as @a run scoreboard players operation @s .finalKillPoints = @s blitz.finalKills
execute as @a run scoreboard players operation @s .finalKillPoints *= blitz.handler blitz.FINALKILL.VALUE
execute as @a run scoreboard players operation @s blitz.points.indiv += @s .finalKillPoints
scoreboard objectives remove .finalKillPoints

# points from cores
scoreboard players set @a blitz.coresBroken 0
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.red
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.orange
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.pink
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.yellow
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.green
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.cyan
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.purple
execute as @a run scoreboard players operation @s blitz.coresBroken += @s blitz.cores.blue

scoreboard objectives add .corePoints dummy
execute as @a run scoreboard players operation @s .corePoints = @s blitz.coresBroken
execute as @a run scoreboard players operation @s .corePoints *= blitz.handler blitz.CORE.VALUE
execute as @a run scoreboard players operation @s blitz.points.indiv += @s .corePoints
scoreboard objectives remove .corePoints

# points from crates
scoreboard objectives add .cratePoints dummy
execute as @a run scoreboard players operation @s .cratePoints = @s blitz.cratesBroken
execute as @a run scoreboard players operation @s .cratePoints *= blitz.handler blitz.CRATE.VALUE
execute as @a run scoreboard players operation @s blitz.points.indiv += @s .cratePoints
scoreboard objectives remove .cratePoints

# points from team placement
scoreboard objectives add .placementPoints dummy

execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 1 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.ONE.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 2 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.TWO.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 3 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.THREE.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 4 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FOUR.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 5 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.FIVE.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 6 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SIX.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 7 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.SEVEN.VALUE
execute as @a[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.teamPlacement matches 8 run scoreboard players operation @s .placementPoints = blitz.handler blitz.PLACE.EIGHT.VALUE

# add placement points back to players
execute as @a run scoreboard players operation @s .placementPoints /= blitz.handler blitz.splitFour
execute as @a run scoreboard players operation @s blitz.points.indiv += @s .placementPoints

scoreboard objectives remove .placementPoints

# team points
scoreboard players set blitz.RedRaccoons blitz.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation blitz.RedRaccoons blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.OrangeOtters blitz.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation blitz.OrangeOtters blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.PinkPikas blitz.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation blitz.PinkPikas blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.YellowYaks blitz.points.team 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation blitz.YellowYaks blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.GreenGoats blitz.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation blitz.GreenGoats blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.CyanCougars blitz.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation blitz.CyanCougars blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.PurplePenguins blitz.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation blitz.PurplePenguins blitz.points.team += @s blitz.points.indiv
scoreboard players set blitz.BlueBears blitz.points.team 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation blitz.BlueBears blitz.points.team += @s blitz.points.indiv

# set actionbar
execute as @a if score blitz.handler blitz.stage matches 3..4 run title @s actionbar [{"text":"Individual Points: ","color":"yellow"},{"score":{"name":"@s","objective":"blitz.points.indiv"},"color":"red"},{"text":"   |   Distance From Border: ","color":"yellow"},{"score":{"name":"@s","objective":"blitz.borderDistance"},"color":"red"}]