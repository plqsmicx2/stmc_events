# point updater

# round points are tallied in round.mcfunction not here

# <===== Indiv Points =====>

scoreboard players set @a scramble.points.indiv 0

# placement
execute as @a if score @s scramble.points.placement matches ..8 run scoreboard players set @s scramble.points.indiv 9
execute as @a if score @s scramble.points.placement matches ..8 run scoreboard players operation @s scramble.points.indiv -= @s scramble.points.placement

execute as @a if score @s scramble.points.placement matches ..16 run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.placement matches ..4 run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.placement matches ..2 run scoreboard players add @s scramble.points.indiv 1

# rounds survived
execute as @a if score @s scramble.points.rounds matches 6.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 12.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 18.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 24.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 30.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 36.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 42.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 48.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 54.. run scoreboard players add @s scramble.points.indiv 1
execute as @a if score @s scramble.points.rounds matches 60.. run scoreboard players add @s scramble.points.indiv 3

# <===== Team Points Update =====>

# reset points to 0 for accurate results
# sum round points of each player on the team
# then set current team points to current round points
# OTHER ROUNDS WILL ALSO ADD THIS SCORE DURING THEIR SUM (e.g. r1.points + r2.points + r3.points)

scoreboard players set scramble.RedRaccoons scramble.points.team 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation scramble.RedRaccoons scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.OrangeOtters scramble.points.team 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation scramble.OrangeOtters scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.PinkPikas scramble.points.team 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation scramble.PinkPikas scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.YellowYaks scramble.points.team 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation scramble.YellowYaks scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.GreenGoats scramble.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation scramble.GreenGoats scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.CyanCougars scramble.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation scramble.CyanCougars scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.PurplePenguins scramble.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation scramble.PurplePenguins scramble.points.team += @s scramble.points.indiv

scoreboard players set scramble.BlueBears scramble.points.team 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation scramble.BlueBears scramble.points.team += @s scramble.points.indiv

# <===== Actionbar =====>

# sets player actionbar to their points
execute as @a if score scramble.handler scramble.stage matches 3 run title @s actionbar ["",{text:"Current Placement: ",bold:true,color:"yellow"},{score:{name:"scramble.handler",objective:"scramble.players_alive"},bold:true,color:"red"},{text:" | Individual Points: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"scramble.points.indiv"},bold:true,color:"red"}]