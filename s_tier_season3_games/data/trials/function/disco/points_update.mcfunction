# point updater

# round points are tallied in round.mcfunction not here

# indiv placement points are NOT tallied here, but instead in placement_update
# this is to ensure placement points are only incremented for players whenever a player dies & points need updating

# <===== Team Points Update =====>

# reset points to 0 for accurate results
# sum round points of each player on the team
# then set current team points to current round points
# OTHER ROUNDS WILL ALSO ADD THIS SCORE DURING THEIR SUM (e.g. r1.points + r2.points + r3.points)

scoreboard players set disco.RedRaccoons disco.points.team 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation disco.RedRaccoons disco.points.team += @s disco.points.indiv

scoreboard players set disco.OrangeOtters disco.points.team 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation disco.OrangeOtters disco.points.team += @s disco.points.indiv

scoreboard players set disco.PinkPikas disco.points.team 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation disco.PinkPikas disco.points.team += @s disco.points.indiv

scoreboard players set disco.YellowYaks disco.points.team 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation disco.YellowYaks disco.points.team += @s disco.points.indiv

scoreboard players set disco.GreenGoats disco.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation disco.GreenGoats disco.points.team += @s disco.points.indiv

scoreboard players set disco.CyanCougars disco.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation disco.CyanCougars disco.points.team += @s disco.points.indiv

scoreboard players set disco.PurplePenguins disco.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation disco.PurplePenguins disco.points.team += @s disco.points.indiv

scoreboard players set disco.BlueBears disco.points.team 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation disco.BlueBears disco.points.team += @s disco.points.indiv

# <===== Actionbar =====>

# sets player actionbar to their points
execute as @a if score disco.handler disco.stage matches 5..6 run title @s actionbar ["",{text:"Individual Points: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"disco.points.indiv"},bold:true,color:"red"}]