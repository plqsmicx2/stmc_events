# point updater

# this function is a bit complex, so I'll walk you through it in-depth

# <===== Kill Point Update =====>

# DO NOT ALTER THE FOLLOWING LINE WHEN COPYING FUNCTIONS [sg.r1.kills will keep track of all kills across all rounds]
execute as @a run scoreboard players operation @s sg.kills = @s sg.r1.kills

# set this round's kills to our killPoints value
execute as @a run scoreboard players operation @s sg.r2.killPoints = @s sg.r2.kills

# then multiply that value by how much each kill is worth
execute as @a run scoreboard players operation @s sg.r2.killPoints *= sg.handler sg.points.killValue

# indiv placement points are NOT tallied here, but instead in placement_update
# this is to ensure placement points are only incremented for players whenever a player dies & points need updating

# remember, team placement points are awarded at the end of each round
# so they are not included in here
# but the placement of each team is still tracked in death_handler [except for the 1st place team]

# <===== Total Points Update =====>

# reset to 0
execute as @a run scoreboard players set @s sg.r2.points 0

# sum killPoints & indivPlacementPoints for players

execute as @a run scoreboard players operation @s sg.r2.points += @s sg.r2.killPoints
execute as @a run scoreboard players operation @s sg.r2.points += @s sg.r2.indivPlacementPoints
execute as @a run scoreboard players operation @s sg.r2.points += @s sg.r2.teamPlacementPoints

# update indivPoints tracker

execute as @a run scoreboard players set @s sg.points.indiv 0

# sum round points
execute as @a run scoreboard players operation @s sg.points.indiv += @s sg.r1.points
execute as @a run scoreboard players operation @s sg.points.indiv += @s sg.r2.points

# <===== Team Points Update =====>

# reset points to 0 for accurate results
# sum round points of each player on the team
# then set current team points to current round points
# OTHER ROUNDS WILL ALSO ADD THIS SCORE DURING THEIR SUM (e.g. r1.points + r2.points + r3.points)

scoreboard players set sg.RedRaccoons sg.r2.points 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation sg.RedRaccoons sg.r2.points += @s sg.r2.points
scoreboard players set sg.RedRaccoons sg.points.team 0
scoreboard players operation sg.RedRaccoons sg.points.team += sg.RedRaccoons sg.r1.points
scoreboard players operation sg.RedRaccoons sg.points.team += sg.RedRaccoons sg.r2.points

scoreboard players set sg.OrangeOtters sg.r2.points 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation sg.OrangeOtters sg.r2.points += @s sg.r2.points
scoreboard players set sg.OrangeOtters sg.points.team 0
scoreboard players operation sg.OrangeOtters sg.points.team += sg.OrangeOtters sg.r1.points
scoreboard players operation sg.OrangeOtters sg.points.team += sg.OrangeOtters sg.r2.points

scoreboard players set sg.PinkPikas sg.r2.points 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation sg.PinkPikas sg.r2.points += @s sg.r2.points
scoreboard players set sg.PinkPikas sg.points.team 0
scoreboard players operation sg.PinkPikas sg.points.team += sg.PinkPikas sg.r1.points
scoreboard players operation sg.PinkPikas sg.points.team += sg.PinkPikas sg.r2.points

scoreboard players set sg.GreenGoats sg.r2.points 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation sg.GreenGoats sg.r2.points += @s sg.r2.points
scoreboard players set sg.GreenGoats sg.points.team 0
scoreboard players operation sg.GreenGoats sg.points.team += sg.GreenGoats sg.r1.points
scoreboard players operation sg.GreenGoats sg.points.team += sg.GreenGoats sg.r2.points

scoreboard players set sg.CyanCougars sg.r2.points 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation sg.CyanCougars sg.r2.points += @s sg.r2.points
scoreboard players set sg.CyanCougars sg.points.team 0
scoreboard players operation sg.CyanCougars sg.points.team += sg.CyanCougars sg.r1.points
scoreboard players operation sg.CyanCougars sg.points.team += sg.CyanCougars sg.r2.points

scoreboard players set sg.PurplePenguins sg.r2.points 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation sg.PurplePenguins sg.r2.points += @s sg.r2.points
scoreboard players set sg.PurplePenguins sg.points.team 0
scoreboard players operation sg.PurplePenguins sg.points.team += sg.PurplePenguins sg.r1.points
scoreboard players operation sg.PurplePenguins sg.points.team += sg.PurplePenguins sg.r2.points

# <===== Kills Actionbar =====>

# sets player actionbar to their # of kills
execute as @a if score sg.r2.handler sg.r2.stage matches 3..4 run title @s actionbar ["",{text:"Kills: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"sg.r2.kills"},bold:true,color:"red"},{text:"   |   Players Alive: ",bold:true,color:"yellow"},{score:{name:"sg.r2.handler",objective:"sg.players_alive"},bold:true,color:"red"},{text:"   |   Individual Points: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"sg.points.indiv"},bold:true,color:"red"}]