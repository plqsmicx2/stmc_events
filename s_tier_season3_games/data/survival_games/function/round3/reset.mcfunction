# reset function for round 1 of survival games

# this function acts as the "end" of the round
# thus, it will handle the removal of all unnecessary scoreboards
# reset other necessary scoreboards
# tally up team placement
# and update sg.r3.state (to move us to point announcements)

# first, remove temporary scoreboards
scoreboard objectives remove sg.r3.timer.delay1
scoreboard objectives remove sg.r3.timer.delay2
scoreboard objectives remove sg.r3.timer.round
scoreboard objectives remove sg.r3.death
scoreboard objectives remove sg.r3.currentPlacement

# handle some important resets
execute in survival_games:sg1 run kill @e[type=!player]
execute as @a run attribute @s block_break_speed base set 1

# next, assign the winning team a placement of 1
# this is successful because this function is only called when ONE team matches 1..4
execute if score sg.RedRaccoons sg.players_alive matches 1..4 run scoreboard players set sg.RedRaccoons sg.r3.teamPlacement 1
execute if score sg.OrangeOtters sg.players_alive matches 1..4 run scoreboard players set sg.OrangeOtters sg.r3.teamPlacement 1
execute if score sg.PinkPikas sg.players_alive matches 1..4 run scoreboard players set sg.PinkPikas sg.r3.teamPlacement 1
execute if score sg.YellowYaks sg.players_alive matches 1..4 run scoreboard players set sg.YellowYaks sg.r3.teamPlacement 1
execute if score sg.GreenGoats sg.players_alive matches 1..4 run scoreboard players set sg.GreenGoats sg.r3.teamPlacement 1
execute if score sg.CyanCougars sg.players_alive matches 1..4 run scoreboard players set sg.CyanCougars sg.r3.teamPlacement 1
execute if score sg.PurplePenguins sg.players_alive matches 1..4 run scoreboard players set sg.PurplePenguins sg.r3.teamPlacement 1
execute if score sg.BlueBears sg.players_alive matches 1..4 run scoreboard players set sg.BlueBears sg.r3.teamPlacement 1

# then, award team placement points
# we do this through manually checking which placement each team has

execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=RED_RACCOONS] if score sg.RedRaccoons sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=ORANGE_OTTERS] if score sg.OrangeOtters sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=PINK_PIKAS] if score sg.PinkPikas sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=YELLOW_YAKS] if score sg.YellowYaks sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=GREEN_GOATS] if score sg.GreenGoats sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=CYAN_COUGARS] if score sg.CyanCougars sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=PURPLE_PENGUINS] if score sg.PurplePenguins sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 1 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topOneTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 2 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topTwoTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 3 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topThreeTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 4 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFourTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 5 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topFiveTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 6 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSixTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 7 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topSevenTeamValue
execute as @a[team=BLUE_BEARS] if score sg.BlueBears sg.r3.teamPlacement matches 8 run scoreboard players operation @s sg.r3.teamPlacementPoints += sg.handler sg.points.topEightTeamValue

# and after all points have been awarded, we split them up by players on the team (4)
execute as @a at @s run scoreboard players operation @s sg.r3.teamPlacementPoints /= sg.handler sg.points.teamSplitFour

# & announce team placement points
execute as @a if score @s sg.r3.teamPlacementPoints matches 0 run tellraw @s ["",{"text":"[8th Team]: +","bold":true,"color":"yellow"},{"text":"0","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 15 run tellraw @s ["",{"text":"[7th Team]: +","bold":true,"color":"yellow"},{"text":"15","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 30 run tellraw @s ["",{"text":"[6th Team]: +","bold":true,"color":"yellow"},{"text":"30","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 45 run tellraw @s ["",{"text":"[5th Team]: +","bold":true,"color":"yellow"},{"text":"45","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 60 run tellraw @s ["",{"text":"[4th Team]: +","bold":true,"color":"yellow"},{"text":"60","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 75 run tellraw @s ["",{"text":"[3rd Team]: +","bold":true,"color":"yellow"},{"text":"75","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 90 run tellraw @s ["",{"text":"[2nd Team]: +","bold":true,"color":"yellow"},{"text":"90","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]
execute as @a if score @s sg.r3.teamPlacementPoints matches 110 run tellraw @s ["",{"text":"[1st Team]: +","bold":true,"color":"yellow"},{"text":"110","bold":true,"color":"red"},{"text":" points bonus","bold":true,"color":"yellow"}]

# & set title to winning team
execute as @a if score sg.RedRaccoons sg.r3.teamPlacement matches 1 run title @a title {"text":"RED RACCOONS WIN","bold":true,"color":"red"}
execute as @a if score sg.OrangeOtters sg.r3.teamPlacement matches 1 run title @a title {"text":"ORANGE OTTERS WIN","bold":true,"color":"gold"}
execute as @a if score sg.PinkPikas sg.r3.teamPlacement matches 1 run title @a title {"text":"PINK PIKAS WIN","bold":true,"color":"light_purple"}
execute as @a if score sg.YellowYaks sg.r3.teamPlacement matches 1 run title @a title {"text":"YELLOW YAKS WIN","bold":true,"color":"yellow"}
execute as @a if score sg.GreenGoats sg.r3.teamPlacement matches 1 run title @a title {"text":"GREEN GOATS WIN","bold":true,"color":"dark_green"}
execute as @a if score sg.CyanCougars sg.r3.teamPlacement matches 1 run title @a title {"text":"CYAN COUGARS WIN","bold":true,"color":"dark_aqua"}
execute as @a if score sg.PurplePenguins sg.r3.teamPlacement matches 1 run title @a title {"text":"PURPLE PENGUINS WIN","bold":true,"color":"dark_purple"}
execute as @a if score sg.BlueBears sg.r3.teamPlacement matches 1 run title @a title {"text":"BLUE BEARS WIN","bold":true,"color":"blue"}

# lastly, update sg.r3.stage
scoreboard players set sg.r3.handler sg.r3.stage 4