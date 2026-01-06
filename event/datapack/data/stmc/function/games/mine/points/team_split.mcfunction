# helper function that splits team points into individual player points

# determine player count for each team
function stmc:games/mine/points/players

# calculate team points for each team
scoreboard players set mine.RedRaccoons mine.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation mine.RedRaccoons mine.points.team += @s mine.points.indiv
scoreboard players set mine.OrangeOtters mine.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation mine.OrangeOtters mine.points.team += @s mine.points.indiv
scoreboard players set mine.PinkPikas mine.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation mine.PinkPikas mine.points.team += @s mine.points.indiv
scoreboard players set mine.YellowYaks mine.points.team 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation mine.YellowYaks mine.points.team += @s mine.points.indiv
scoreboard players set mine.GreenGoats mine.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation mine.GreenGoats mine.points.team += @s mine.points.indiv
scoreboard players set mine.CyanCougars mine.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation mine.CyanCougars mine.points.team += @s mine.points.indiv
scoreboard players set mine.PurplePenguins mine.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation mine.PurplePenguins mine.points.team += @s mine.points.indiv
scoreboard players set mine.BlueBears mine.points.team 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation mine.BlueBears mine.points.team += @s mine.points.indiv

# set each player's indiv points to team points divided by number of players on that team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s mine.points.indiv = mine.RedRaccoons mine.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s mine.points.indiv /= mine.RedRaccoons mine.players
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s mine.points.indiv = mine.OrangeOtters mine.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s mine.points.indiv /= mine.OrangeOtters mine.players
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s mine.points.indiv = mine.PinkPikas mine.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s mine.points.indiv /= mine.PinkPikas mine.players
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s mine.points.indiv = mine.YellowYaks mine.points.team
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s mine.points.indiv /= mine.YellowYaks mine.players
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s mine.points.indiv = mine.GreenGoats mine.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s mine.points.indiv /= mine.GreenGoats mine.players
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s mine.points.indiv = mine.CyanCougars mine.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s mine.points.indiv /= mine.CyanCougars mine.players
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s mine.points.indiv = mine.PurplePenguins mine.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s mine.points.indiv /= mine.PurplePenguins mine.players
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s mine.points.indiv = mine.BlueBears mine.points.team
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s mine.points.indiv /= mine.BlueBears mine.players