# reset function for round 1 of survival games

# this function acts as the "end" of the round
# thus, it will handle the removal of all unnecessary scoreboards
# reset other necessary scoreboards
# tally up team placement
# and update sg.r3.stage (to move us to point announcements)

# first, remove temporary scoreboards
scoreboard objectives remove sg.r3.timer.delay1
scoreboard objectives remove sg.r3.timer.delay2
scoreboard objectives remove sg.r3.timer.round
scoreboard objectives remove sg.r3.death
scoreboard objectives remove sg.r3.deathThisTick
scoreboard objectives remove sg.r3.currentPlacement

# then, handle some important resets
execute in survival_games:sg3 run kill @e[type=!player]
worldborder center 0.0 0.0
worldborder set 1000
effect clear @a

# next, assign the winning team a placement of 1
# this is successful because this function is only called when ONE team matches 1..4
execute if score sg.RedRaccoons sg.players_alive matches 1..4 run scoreboard players set sg.RedRaccoons sg.r3.teamPlacement 1
execute if score sg.OrangeOtters sg.players_alive matches 1..4 run scoreboard players set sg.OrangeOtters sg.r3.teamPlacement 1
execute if score sg.PinkPikas sg.players_alive matches 1..4 run scoreboard players set sg.PinkPikas sg.r3.teamPlacement 1
execute if score sg.GreenGoats sg.players_alive matches 1..4 run scoreboard players set sg.GreenGoats sg.r3.teamPlacement 1
execute if score sg.CyanCougars sg.players_alive matches 1..4 run scoreboard players set sg.CyanCougars sg.r3.teamPlacement 1
execute if score sg.PurplePenguins sg.players_alive matches 1..4 run scoreboard players set sg.PurplePenguins sg.r3.teamPlacement 1

# and assign the players still alive on the winning team their points [if players_alive > 1]
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 4 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topThreeValue
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 3..4 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topTwoValue
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 2..4 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topOneValue

# & announce those awards
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 4 run tellraw @s ["",{text:"[Top 3]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topThreeValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 3..4 run tellraw @s ["",{text:"[Top 2]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topTwoValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r3.handler sg.players_alive matches 2..4 run tellraw @s ["",{text:"[Top 1]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topOneValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]

# then, award team placement points
# we do this through manually checking which placement each team has

execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue

# and after all points have been awarded, we split them up by players on the team (4)
execute as @a at @s run scoreboard players operation @s sg.r3.teamPlacementPoints /= sg.handler sg.points.teamSplitFour

# & announce team placement points
execute as @a if score @s sg.r3.teamPlacementPoints matches 0 run tellraw @s ["",{text:"[6th Team]: +",bold:true,color:"yellow"},{text:"0",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 10 run tellraw @s ["",{text:"[5th Team]: +",bold:true,color:"yellow"},{text:"10",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 25 run tellraw @s ["",{text:"[4th Team]: +",bold:true,color:"yellow"},{text:"25",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 40 run tellraw @s ["",{text:"[3rd Team]: +",bold:true,color:"yellow"},{text:"40",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 65 run tellraw @s ["",{text:"[2nd Team]: +",bold:true,color:"yellow"},{text:"55",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 100 run tellraw @s ["",{text:"[1st Team]: +",bold:true,color:"yellow"},{text:"100",bold:true,color:"red"},{text:" points bonus",bold:true,color:"yellow"}]

# & set title to winning team
execute as @a if score sg.RedRaccoons sg.r3.teamPlacement matches 1 run title @a title {text:"RED RACCOONS WIN",bold:true,color:"red"}
execute as @a if score sg.OrangeOtters sg.r3.teamPlacement matches 1 run title @a title {text:"ORANGE OTTERS WIN",bold:true,color:"gold"}
execute as @a if score sg.PinkPikas sg.r3.teamPlacement matches 1 run title @a title {text:"PINK PIKAS WIN",bold:true,color:"light_purple"}
execute as @a if score sg.GreenGoats sg.r3.teamPlacement matches 1 run title @a title {text:"GREEN GOATS WIN",bold:true,color:"dark_green"}
execute as @a if score sg.CyanCougars sg.r3.teamPlacement matches 1 run title @a title {text:"CYAN COUGARS WIN",bold:true,color:"dark_aqua"}
execute as @a if score sg.PurplePenguins sg.r3.teamPlacement matches 1 run title @a title {text:"PURPLE PENGUINS WIN",bold:true,color:"dark_purple"}

# lastly, update sg.r3.stage
scoreboard players set sg.r3.handler sg.r3.stage 4

# update player points
execute as @a run scoreboard players operation @s stats.points.indiv.g2 = @s sg.points.indiv