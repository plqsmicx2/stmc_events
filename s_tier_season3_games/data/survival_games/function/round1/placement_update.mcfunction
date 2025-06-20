# <===== Indiv Placement Points Update =====>

# update placement values
# since this function is only called on a player's death, these matches will only happen ONCE, thus preserving how much each one is worth

# make sure we only award players who are alive
# and only award points when players_alive is exactly n amount

execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 20 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topTwentyValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 16 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topSixteenValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 12 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topTwelveValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 8 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topEightValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 4 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topFourValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 3 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topThreeValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 2 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topTwoValue
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 1 run scoreboard players operation @s sg.r1.indivPlacementPoints += sg.handler sg.points.topOneValue

# and announce to these players they've earned points
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 20 run tellraw @s ["",{text:"[Top 20]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topTwentyValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 16 run tellraw @s ["",{text:"[Top 16]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topSixteenValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 12 run tellraw @s ["",{text:"[Top 12]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topTwelveValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 8 run tellraw @s ["",{text:"[Top 8]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topEightValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 4 run tellraw @s ["",{text:"[Top 4]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topFourValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 3 run tellraw @s ["",{text:"[Top 3]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topThreeValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 2 run tellraw @s ["",{text:"[Top 2]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topTwoValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]
execute as @a if score @s sg.alive matches 1 if score sg.r1.handler sg.players_alive matches 1 run tellraw @s ["",{text:"[Top 1]: +",bold:true,color:"yellow"},{score:{name:"sg.handler",objective:"sg.points.topOneValue"},bold:true,color:"red"},{text:" points",bold:true,color:"yellow"}]