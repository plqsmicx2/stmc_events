# point updater

# <===== Indiv Points =====>

scoreboard players set @a towers.points.indiv 0

# points for placement

# outlast top 8
execute as @a if score @s towers.stats.placement matches ..8 run scoreboard players set @s towers.points.indiv 9
execute as @a if score @s towers.stats.placement matches ..8 run scoreboard players operation @s towers.points.indiv -= @s towers.stats.placement

# other bonuses
execute as @a if score @s towers.stats.placement matches ..24 run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.placement matches ..16 run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.placement matches ..4 run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.placement matches ..2 run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.placement matches ..1 run scoreboard players add @s towers.points.indiv 1

# points for survival
execute as @a if score @s towers.stats.survival matches 300.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 600.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 900.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 1200.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 1500.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 1800.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 2100.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 2400.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 2700.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 3000.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 3300.. run scoreboard players add @s towers.points.indiv 1
execute as @a if score @s towers.stats.survival matches 3600.. run scoreboard players add @s towers.points.indiv 1

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

scoreboard players set towers.YellowYaks towers.points.team 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation towers.YellowYaks towers.points.team += @s towers.points.indiv

scoreboard players set towers.GreenGoats towers.points.team 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation towers.GreenGoats towers.points.team += @s towers.points.indiv

scoreboard players set towers.CyanCougars towers.points.team 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation towers.CyanCougars towers.points.team += @s towers.points.indiv

scoreboard players set towers.PurplePenguins towers.points.team 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation towers.PurplePenguins towers.points.team += @s towers.points.indiv

scoreboard players set towers.BlueBears towers.points.team 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation towers.BlueBears towers.points.team += @s towers.points.indiv
