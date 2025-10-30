# Update points for entirety of brawl

# <===== sum indiv points between rounds =====>

execute as @a run scoreboard players set @s sg.points.indiv 0
execute as @a run scoreboard players operation @s sg.points.indiv += @s sg.r1.points
execute as @a run scoreboard players operation @s sg.points.indiv += @s sg.r2.points
execute as @a run scoreboard players operation @s sg.points.indiv += @s sg.r3.points

# <===== sum team points =====>

scoreboard players set sg.RedRaccoons sg.points.team 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation sg.RedRaccoons sg.points.team += @s sg.points.indiv

scoreboard players set sg.OrangeOtters sg.points.team 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation sg.OrangeOtters sg.points.team += @s sg.points.indiv

scoreboard players set sg.PinkPikas sg.points.team 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation sg.PinkPikas sg.points.team += @s sg.points.indiv

scoreboard players set sg.YellowYaks sg.points.team 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation sg.YellowYaks sg.points.team += @s sg.points.indiv

scoreboard players set sg.GreenGoats sg.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation sg.GreenGoats sg.points.team += @s sg.points.indiv

scoreboard players set sg.CyanCougars sg.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation sg.CyanCougars sg.points.team += @s sg.points.indiv

scoreboard players set sg.PurplePenguins sg.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation sg.PurplePenguins sg.points.team += @s sg.points.indiv

scoreboard players set sg.BlueBears sg.points.team 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation sg.BlueBears sg.points.team += @s sg.points.indiv