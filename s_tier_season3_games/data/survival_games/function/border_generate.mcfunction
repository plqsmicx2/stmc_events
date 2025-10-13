# build backward from the end

# temporary scoreboard to track generation progress
scoreboard objectives add sg.BORDERGENSTAGE dummy
scoreboard players set sg.handler sg.BORDERGENSTAGE 0

# force end recursion
execute if score sg.handler sg.BORDERGENSTAGE matches 4 run return 1

# final zone center
execute if score sg.handler sg.BORDERGENSTAGE matches 0 store result score sg.handler sg.borderFourthCenterX run random value -90..90
execute if score sg.handler sg.BORDERGENSTAGE matches 0 store result score sg.handler sg.borderFourthCenterZ run random value -90..90
scoreboard players set sg.handler sg.BORDERGENSTAGE 1

# force end recursion
execute if score sg.handler sg.BORDERGENSTAGE matches 4 run return 1

# border 3 center
scoreboard objectives add sg.borderThirdDX dummy
scoreboard objectives add sg.borderThirdDZ dummy
execute if score sg.handler sg.BORDERGENSTAGE matches 1 store result score sg.handler sg.borderThirdDX run random value -15..15
execute if score sg.handler sg.BORDERGENSTAGE matches 1 store result score sg.handler sg.borderThirdDZ run random value -15..15
execute if score sg.handler sg.BORDERGENSTAGE matches 1 run scoreboard players operation sg.handler sg.borderThirdCenterX = sg.handler sg.borderFourthCenterX
execute if score sg.handler sg.BORDERGENSTAGE matches 1 run scoreboard players operation sg.handler sg.borderThirdCenterZ = sg.handler sg.borderFourthCenterZ
execute if score sg.handler sg.BORDERGENSTAGE matches 1 run scoreboard players operation sg.handler sg.borderThirdCenterX += sg.handler sg.borderThirdDX
execute if score sg.handler sg.BORDERGENSTAGE matches 1 run scoreboard players operation sg.handler sg.borderThirdCenterZ += sg.handler sg.borderThirdDZ
execute unless score sg.handler sg.borderThirdCenterX matches -82..82 run function survival_games:border_generate
execute unless score sg.handler sg.borderThirdCenterZ matches -82..82 run function survival_games:border_generate
scoreboard players set sg.handler sg.BORDERGENSTAGE 2

# force end recursion
execute if score sg.handler sg.BORDERGENSTAGE matches 4 run return 1

# border 2 center
scoreboard objectives add sg.borderSecondDX dummy
scoreboard objectives add sg.borderSecondDZ dummy
execute if score sg.handler sg.BORDERGENSTAGE matches 2 store result score sg.handler sg.borderSecondDX run random value -20..20
execute if score sg.handler sg.BORDERGENSTAGE matches 2 store result score sg.handler sg.borderSecondDZ run random value -20..20
execute if score sg.handler sg.BORDERGENSTAGE matches 2 run scoreboard players operation sg.handler sg.borderSecondCenterX = sg.handler sg.borderFourthCenterX
execute if score sg.handler sg.BORDERGENSTAGE matches 2 run scoreboard players operation sg.handler sg.borderSecondCenterZ = sg.handler sg.borderFourthCenterZ
execute if score sg.handler sg.BORDERGENSTAGE matches 2 run scoreboard players operation sg.handler sg.borderSecondCenterX += sg.handler sg.borderSecondDX
execute if score sg.handler sg.BORDERGENSTAGE matches 2 run scoreboard players operation sg.handler sg.borderSecondCenterZ += sg.handler sg.borderSecondDZ
execute unless score sg.handler sg.borderSecondCenterX matches -65..65 run function survival_games:border_generate
execute unless score sg.handler sg.borderSecondCenterZ matches -65..65 run function survival_games:border_generate
scoreboard players set sg.handler sg.BORDERGENSTAGE 3

# force end recursion
execute if score sg.handler sg.BORDERGENSTAGE matches 4 run return 1

# border 1 center
scoreboard objectives add sg.borderFirstDX dummy
scoreboard objectives add sg.borderFirstDZ dummy
execute if score sg.handler sg.BORDERGENSTAGE matches 3 store result score sg.handler sg.borderFirstDX run random value -30..30
execute if score sg.handler sg.BORDERGENSTAGE matches 3 store result score sg.handler sg.borderFirstDZ run random value -30..30
execute if score sg.handler sg.BORDERGENSTAGE matches 3 run scoreboard players operation sg.handler sg.borderFirstCenterX = sg.handler sg.borderFourthCenterX
execute if score sg.handler sg.BORDERGENSTAGE matches 3 run scoreboard players operation sg.handler sg.borderFirstCenterZ = sg.handler sg.borderFourthCenterZ
execute if score sg.handler sg.BORDERGENSTAGE matches 3 run scoreboard players operation sg.handler sg.borderFirstCenterX += sg.handler sg.borderFirstDX
execute if score sg.handler sg.BORDERGENSTAGE matches 3 run scoreboard players operation sg.handler sg.borderFirstCenterZ += sg.handler sg.borderFirstDZ
execute unless score sg.handler sg.borderFirstCenterX matches -50..50 run function survival_games:border_generate
execute unless score sg.handler sg.borderFirstCenterZ matches -50..50 run function survival_games:border_generate
scoreboard players set sg.handler sg.BORDERGENSTAGE 4

# remove temporary scoreboards
scoreboard objectives remove sg.BORDERGENSTAGE
scoreboard objectives remove sg.borderThirdDX
scoreboard objectives remove sg.borderThirdDZ
scoreboard objectives remove sg.borderSecondDX
scoreboard objectives remove sg.borderSecondDZ
scoreboard objectives remove sg.borderFirstDX
scoreboard objectives remove sg.borderFirstDZ

# force end recursion
execute if score sg.handler sg.BORDERGENSTAGE matches 4 run return 1