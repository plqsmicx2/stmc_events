# Update points for entirety of brawl

# <===== sum indiv points between rounds =====>

execute as @a run scoreboard players set @s brawl.points.indiv 0
execute as @a run scoreboard players operation @s brawl.points.indiv += @s brawl.points.indiv.round1
execute as @a run scoreboard players operation @s brawl.points.indiv += @s brawl.points.indiv.round2
execute as @a run scoreboard players operation @s brawl.points.indiv += @s brawl.points.indiv.round3

# <===== most kill points =====>

execute as @a if score brawl.handler brawl.stage matches 3 if score @s brawl.kills.rank matches 1 run scoreboard players add @s brawl.points.indiv 20
execute as @a if score brawl.handler brawl.stage matches 3 if score @s brawl.kills.rank matches 2 run scoreboard players add @s brawl.points.indiv 16
execute as @a if score brawl.handler brawl.stage matches 3 if score @s brawl.kills.rank matches 3 run scoreboard players add @s brawl.points.indiv 12
execute as @a if score brawl.handler brawl.stage matches 3 if score @s brawl.kills.rank matches 4 run scoreboard players add @s brawl.points.indiv 8
execute as @a if score brawl.handler brawl.stage matches 3 if score @s brawl.kills.rank matches 5 run scoreboard players add @s brawl.points.indiv 4

# <===== sum team points =====>

scoreboard players set brawl.RedRaccoons brawl.points.team 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation brawl.RedRaccoons brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.OrangeOtters brawl.points.team 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation brawl.OrangeOtters brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.PinkPikas brawl.points.team 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation brawl.PinkPikas brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.YellowYaks brawl.points.team 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation brawl.YellowYaks brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.GreenGoats brawl.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation brawl.GreenGoats brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.CyanCougars brawl.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation brawl.CyanCougars brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.PurplePenguins brawl.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation brawl.PurplePenguins brawl.points.team += @s brawl.points.indiv

scoreboard players set brawl.BlueBears brawl.points.team 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation brawl.BlueBears brawl.points.team += @s brawl.points.indiv