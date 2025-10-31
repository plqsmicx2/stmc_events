# the points update function for spleef

# this function is called every tick

# <===== indiv points =====>

scoreboard players set @a spleef.points.indiv 0

# outlast calculation
execute as @a if score @s spleef.points.placement matches ..16 run scoreboard players set @s spleef.points.indiv 17
execute as @a if score @s spleef.points.placement matches ..16 run scoreboard players operation @s spleef.points.indiv -= @s spleef.points.placement

# placement
execute as @a if score @s spleef.points.placement matches ..24 run scoreboard players add @s spleef.points.indiv 4
execute as @a if score @s spleef.points.placement matches ..8 run scoreboard players add @s spleef.points.indiv 1
execute as @a if score @s spleef.points.placement matches ..4 run scoreboard players add @s spleef.points.indiv 1
execute as @a if score @s spleef.points.placement matches ..2 run scoreboard players add @s spleef.points.indiv 1
execute as @a if score @s spleef.points.placement matches ..1 run scoreboard players add @s spleef.points.indiv 1

# <===== team points =====>

# Red Raccoons
scoreboard players set spleef.RedRaccoons spleef.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation spleef.RedRaccoons spleef.points.team += @s spleef.points.indiv

# Orange Otters
scoreboard players set spleef.OrangeOtters spleef.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation spleef.OrangeOtters spleef.points.team += @s spleef.points.indiv

# Pink Pikas
scoreboard players set spleef.PinkPikas spleef.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation spleef.PinkPikas spleef.points.team += @s spleef.points.indiv

# Yellow Yaks
scoreboard players set spleef.YellowYaks spleef.points.team 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation spleef.YellowYaks spleef.points.team += @s spleef.points.indiv

# Green Goats
scoreboard players set spleef.GreenGoats spleef.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation spleef.GreenGoats spleef.points.team += @s spleef.points.indiv

# Cyan Cougars
scoreboard players set spleef.CyanCougars spleef.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation spleef.CyanCougars spleef.points.team += @s spleef.points.indiv

# Purple Penguins
scoreboard players set spleef.PurplePenguins spleef.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation spleef.PurplePenguins spleef.points.team += @s spleef.points.indiv

# Blue Bears
scoreboard players set spleef.BlueBears spleef.points.team 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation spleef.BlueBears spleef.points.team += @s spleef.points.indiv