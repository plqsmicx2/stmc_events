# point updater

# round points are tallied in game_tick.mcfunction not here

# placement points are NOT tallied here, but instead in death_handler
# this is to ensure placement points are only incremented for players whenever a player dies & points need updating

# <===== Team Points Update =====>

# reset points to 0 for accurate results
# sum round points of each player on the team
# then set current team points to current round points
# OTHER ROUNDS WILL ALSO ADD THIS SCORE DURING THEIR SUM (e.g. r1.points + r2.points + r3.points)

scoreboard players set towers.RedRaccoons towers.points.team 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation towers.RedRaccoons towers.points.team += @s towers.points.indiv

scoreboard players set towers.OrangeOtters towers.points.team 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation towers.OrangeOtters towers.points.team += @s towers.points.indiv

scoreboard players set towers.PinkPikas towers.points.team 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation towers.PinkPikas towers.points.team += @s towers.points.indiv

scoreboard players set towers.GreenGoats towers.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation towers.GreenGoats towers.points.team += @s towers.points.indiv

scoreboard players set towers.CyanCougars towers.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation towers.CyanCougars towers.points.team += @s towers.points.indiv

scoreboard players set towers.PurplePenguins towers.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation towers.PurplePenguins towers.points.team += @s towers.points.indiv

# <===== Actionbar =====>

# sets player actionbar to their points
execute as @a if score towers.handler towers.stage matches 3..4 run title @s actionbar ["",{text:"Individual Points: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"towers.points.indiv"},bold:true,color:"red"}]