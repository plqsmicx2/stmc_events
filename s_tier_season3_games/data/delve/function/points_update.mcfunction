# points update for delve

# adds up team points based on item counts
# then redistributes points between players

# <===== TEAM POINTS =====>

scoreboard players set delve.RedRaccoons delve.points.team 0
scoreboard players set delve.RedRaccoons delve.points.team.temp 0
scoreboard players operation delve.RedRaccoons delve.points.team.temp = delve.RedRaccoons delve.stats.coalCount
scoreboard players operation delve.RedRaccoons delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.RedRaccoons delve.points.team += delve.RedRaccoons delve.points.team.temp
scoreboard players set delve.RedRaccoons delve.points.team.temp 0
scoreboard players operation delve.RedRaccoons delve.points.team.temp = delve.RedRaccoons delve.stats.copperCount
scoreboard players operation delve.RedRaccoons delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.RedRaccoons delve.points.team += delve.RedRaccoons delve.points.team.temp
scoreboard players set delve.RedRaccoons delve.points.team.temp 0
scoreboard players operation delve.RedRaccoons delve.points.team.temp = delve.RedRaccoons delve.stats.diamondCount
scoreboard players operation delve.RedRaccoons delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.RedRaccoons delve.points.team += delve.RedRaccoons delve.points.team.temp

scoreboard players set delve.OrangeOtters delve.points.team 0
scoreboard players set delve.OrangeOtters delve.points.team.temp 0
scoreboard players operation delve.OrangeOtters delve.points.team.temp = delve.OrangeOtters delve.stats.coalCount
scoreboard players operation delve.OrangeOtters delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.OrangeOtters delve.points.team += delve.OrangeOtters delve.points.team.temp
scoreboard players set delve.OrangeOtters delve.points.team.temp 0
scoreboard players operation delve.OrangeOtters delve.points.team.temp = delve.OrangeOtters delve.stats.copperCount
scoreboard players operation delve.OrangeOtters delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.OrangeOtters delve.points.team += delve.OrangeOtters delve.points.team.temp
scoreboard players set delve.OrangeOtters delve.points.team.temp 0
scoreboard players operation delve.OrangeOtters delve.points.team.temp = delve.OrangeOtters delve.stats.diamondCount
scoreboard players operation delve.OrangeOtters delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.OrangeOtters delve.points.team += delve.OrangeOtters delve.points.team.temp

scoreboard players set delve.PinkPikas delve.points.team 0
scoreboard players set delve.PinkPikas delve.points.team.temp 0
scoreboard players operation delve.PinkPikas delve.points.team.temp = delve.PinkPikas delve.stats.coalCount
scoreboard players operation delve.PinkPikas delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.PinkPikas delve.points.team += delve.PinkPikas delve.points.team.temp
scoreboard players set delve.PinkPikas delve.points.team.temp 0
scoreboard players operation delve.PinkPikas delve.points.team.temp = delve.PinkPikas delve.stats.copperCount
scoreboard players operation delve.PinkPikas delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.PinkPikas delve.points.team += delve.PinkPikas delve.points.team.temp
scoreboard players set delve.PinkPikas delve.points.team.temp 0
scoreboard players operation delve.PinkPikas delve.points.team.temp = delve.PinkPikas delve.stats.diamondCount
scoreboard players operation delve.PinkPikas delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.PinkPikas delve.points.team += delve.PinkPikas delve.points.team.temp

scoreboard players set delve.GreenGoats delve.points.team 0
scoreboard players set delve.GreenGoats delve.points.team.temp 0
scoreboard players operation delve.GreenGoats delve.points.team.temp = delve.GreenGoats delve.stats.coalCount
scoreboard players operation delve.GreenGoats delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.GreenGoats delve.points.team += delve.GreenGoats delve.points.team.temp
scoreboard players set delve.GreenGoats delve.points.team.temp 0
scoreboard players operation delve.GreenGoats delve.points.team.temp = delve.GreenGoats delve.stats.copperCount
scoreboard players operation delve.GreenGoats delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.GreenGoats delve.points.team += delve.GreenGoats delve.points.team.temp
scoreboard players set delve.GreenGoats delve.points.team.temp 0
scoreboard players operation delve.GreenGoats delve.points.team.temp = delve.GreenGoats delve.stats.diamondCount
scoreboard players operation delve.GreenGoats delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.GreenGoats delve.points.team += delve.GreenGoats delve.points.team.temp

scoreboard players set delve.CyanCougars delve.points.team 0
scoreboard players set delve.CyanCougars delve.points.team.temp 0
scoreboard players operation delve.CyanCougars delve.points.team.temp = delve.CyanCougars delve.stats.coalCount
scoreboard players operation delve.CyanCougars delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.CyanCougars delve.points.team += delve.CyanCougars delve.points.team.temp
scoreboard players set delve.CyanCougars delve.points.team.temp 0
scoreboard players operation delve.CyanCougars delve.points.team.temp = delve.CyanCougars delve.stats.copperCount
scoreboard players operation delve.CyanCougars delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.CyanCougars delve.points.team += delve.CyanCougars delve.points.team.temp
scoreboard players set delve.CyanCougars delve.points.team.temp 0
scoreboard players operation delve.CyanCougars delve.points.team.temp = delve.CyanCougars delve.stats.diamondCount
scoreboard players operation delve.CyanCougars delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.CyanCougars delve.points.team += delve.CyanCougars delve.points.team.temp

scoreboard players set delve.PurplePenguins delve.points.team 0
scoreboard players set delve.PurplePenguins delve.points.team.temp 0
scoreboard players operation delve.PurplePenguins delve.points.team.temp = delve.PurplePenguins delve.stats.coalCount
scoreboard players operation delve.PurplePenguins delve.points.team.temp *= delve.handler delve.points.item.coal
scoreboard players operation delve.PurplePenguins delve.points.team += delve.PurplePenguins delve.points.team.temp
scoreboard players set delve.PurplePenguins delve.points.team.temp 0
scoreboard players operation delve.PurplePenguins delve.points.team.temp = delve.PurplePenguins delve.stats.copperCount
scoreboard players operation delve.PurplePenguins delve.points.team.temp *= delve.handler delve.points.item.copper
scoreboard players operation delve.PurplePenguins delve.points.team += delve.PurplePenguins delve.points.team.temp
scoreboard players set delve.PurplePenguins delve.points.team.temp 0
scoreboard players operation delve.PurplePenguins delve.points.team.temp = delve.PurplePenguins delve.stats.diamondCount
scoreboard players operation delve.PurplePenguins delve.points.team.temp *= delve.handler delve.points.item.diamond
scoreboard players operation delve.PurplePenguins delve.points.team += delve.PurplePenguins delve.points.team.temp

# update actionbar with team points
execute as @a[team=RED_RACCOONS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.RedRaccoons", "objective":"delve.points.team"}}]
execute as @a[team=ORANGE_OTTERS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.OrangeOtters", "objective":"delve.points.team"}}]
execute as @a[team=PINK_PIKAS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.PinkPikas", "objective":"delve.points.team"}}]
execute as @a[team=GREEN_GOATS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.GreenGoats", "objective":"delve.points.team"}}]
execute as @a[team=CYAN_COUGARS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.CyanCougars", "objective":"delve.points.team"}}]
execute as @a[team=PURPLE_PENGUINS] if score delve.handler delve.stage matches 3.. run title @s actionbar [{"text": "Game Points: ", "color":"yellow"}, {"score": {"name":"delve.PurplePenguins", "objective":"delve.points.team"}}]

# <===== INDIVIDUAL POINTS =====>

scoreboard players set @a delve.points.indiv 0

# check for how many players are on each team
scoreboard players set delve.RedRaccoons delve.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add delve.RedRaccoons delve.stats.players 1
scoreboard players set delve.OrangeOtters delve.stats.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add delve.OrangeOtters delve.stats.players 1
scoreboard players set delve.PinkPikas delve.stats.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add delve.PinkPikas delve.stats.players 1
scoreboard players set delve.GreenGoats delve.stats.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add delve.GreenGoats delve.stats.players 1
scoreboard players set delve.CyanCougars delve.stats.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add delve.CyanCougars delve.stats.players 1
scoreboard players set delve.PurplePenguins delve.stats.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add delve.PurplePenguins delve.stats.players 1

# distribute team points to players
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s delve.points.indiv = delve.RedRaccoons delve.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s delve.points.indiv /= delve.RedRaccoons delve.stats.players
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s delve.points.indiv = delve.OrangeOtters delve.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s delve.points.indiv /= delve.OrangeOtters delve.stats.players
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s delve.points.indiv = delve.PinkPikas delve.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s delve.points.indiv /= delve.PinkPikas delve.stats.players
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s delve.points.indiv = delve.GreenGoats delve.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s delve.points.indiv /= delve.GreenGoats delve.stats.players
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s delve.points.indiv = delve.CyanCougars delve.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s delve.points.indiv /= delve.CyanCougars delve.stats.players
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s delve.points.indiv = delve.PurplePenguins delve.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s delve.points.indiv /= delve.PurplePenguins delve.stats.players