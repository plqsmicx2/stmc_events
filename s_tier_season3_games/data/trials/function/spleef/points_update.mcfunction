# the points update function for spleef

# this function is NOT called every tick
# it acts as a placement update and is called when a player dies

# award points for all alive players

# top 10 --> +15 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 10 run scoreboard players add @s spleef.points.indiv 15

# top 5 --> +10 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 5 run scoreboard players add @s spleef.points.indiv 10

# top 3 --> +10 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 3 run scoreboard players add @s spleef.points.indiv 10

# top 2 --> +15 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 2 run scoreboard players add @s spleef.points.indiv 15

# top 1 --> +20 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 1 run scoreboard players add @s spleef.points.indiv 20

# Update team points

# Red Raccoons
scoreboard players set spleef.RedRaccoons spleef.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation spleef.RedRaccoons spleef.points.team += @s spleef.points.indiv

# Orange Otters
scoreboard players set spleef.OrangeOtters spleef.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation spleef.OrangeOtters spleef.points.team += @s spleef.points.indiv

# Pink Pikas
scoreboard players set spleef.PinkPikas spleef.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation spleef.PinkPikas spleef.points.team += @s spleef.points.indiv

# Green Goats
scoreboard players set spleef.GreenGoats spleef.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation spleef.GreenGoats spleef.points.team += @s spleef.points.indiv

# Cyan Cougars
scoreboard players set spleef.CyanCougars spleef.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation spleef.CyanCougars spleef.points.team += @s spleef.points.indiv

# Purple Penguins
scoreboard players set spleef.PurplePenguins spleef.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation spleef.PurplePenguins spleef.points.team += @s spleef.points.indiv