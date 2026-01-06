# build backward from the end

# temporary scoreboard to track generation progress
scoreboard objectives add brawl.BORDERGENSTAGE dummy
scoreboard players set brawl.handler brawl.BORDERGENSTAGE 0

# force end recursion
execute if score brawl.handler brawl.BORDERGENSTAGE matches 4 run return 1

# final zone center
execute if score brawl.handler brawl.BORDERGENSTAGE matches 0 store result score brawl.handler brawl.borderFourthCenterX run random value -90..90
execute if score brawl.handler brawl.BORDERGENSTAGE matches 0 store result score brawl.handler brawl.borderFourthCenterZ run random value -90..90
scoreboard players set brawl.handler brawl.BORDERGENSTAGE 1

# force end recursion
execute if score brawl.handler brawl.BORDERGENSTAGE matches 4 run return 1

# border 3 center
scoreboard objectives add brawl.borderThirdDX dummy
scoreboard objectives add brawl.borderThirdDZ dummy
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 store result score brawl.handler brawl.borderThirdDX run random value -15..15
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 store result score brawl.handler brawl.borderThirdDZ run random value -15..15
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 run scoreboard players operation brawl.handler brawl.borderThirdCenterX = brawl.handler brawl.borderFourthCenterX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 run scoreboard players operation brawl.handler brawl.borderThirdCenterZ = brawl.handler brawl.borderFourthCenterZ
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 run scoreboard players operation brawl.handler brawl.borderThirdCenterX += brawl.handler brawl.borderThirdDX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 1 run scoreboard players operation brawl.handler brawl.borderThirdCenterZ += brawl.handler brawl.borderThirdDZ
execute unless score brawl.handler brawl.borderThirdCenterX matches -82..82 run function stmc:games/brawl/round/border/generate
execute unless score brawl.handler brawl.borderThirdCenterZ matches -82..82 run function stmc:games/brawl/round/border/generate
scoreboard players set brawl.handler brawl.BORDERGENSTAGE 2

# force end recursion
execute if score brawl.handler brawl.BORDERGENSTAGE matches 4 run return 1

# border 2 center
scoreboard objectives add brawl.borderSecondDX dummy
scoreboard objectives add brawl.borderSecondDZ dummy
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 store result score brawl.handler brawl.borderSecondDX run random value -20..20
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 store result score brawl.handler brawl.borderSecondDZ run random value -20..20
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 run scoreboard players operation brawl.handler brawl.borderSecondCenterX = brawl.handler brawl.borderFourthCenterX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 run scoreboard players operation brawl.handler brawl.borderSecondCenterZ = brawl.handler brawl.borderFourthCenterZ
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 run scoreboard players operation brawl.handler brawl.borderSecondCenterX += brawl.handler brawl.borderSecondDX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 2 run scoreboard players operation brawl.handler brawl.borderSecondCenterZ += brawl.handler brawl.borderSecondDZ
execute unless score brawl.handler brawl.borderSecondCenterX matches -65..65 run function stmc:games/brawl/round/border/generate
execute unless score brawl.handler brawl.borderSecondCenterZ matches -65..65 run function stmc:games/brawl/round/border/generate
scoreboard players set brawl.handler brawl.BORDERGENSTAGE 3

# force end recursion
execute if score brawl.handler brawl.BORDERGENSTAGE matches 4 run return 1

# border 1 center
scoreboard objectives add brawl.borderFirstDX dummy
scoreboard objectives add brawl.borderFirstDZ dummy
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 store result score brawl.handler brawl.borderFirstDX run random value -30..30
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 store result score brawl.handler brawl.borderFirstDZ run random value -30..30
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 run scoreboard players operation brawl.handler brawl.borderFirstCenterX = brawl.handler brawl.borderFourthCenterX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 run scoreboard players operation brawl.handler brawl.borderFirstCenterZ = brawl.handler brawl.borderFourthCenterZ
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 run scoreboard players operation brawl.handler brawl.borderFirstCenterX += brawl.handler brawl.borderFirstDX
execute if score brawl.handler brawl.BORDERGENSTAGE matches 3 run scoreboard players operation brawl.handler brawl.borderFirstCenterZ += brawl.handler brawl.borderFirstDZ
execute unless score brawl.handler brawl.borderFirstCenterX matches -50..50 run function stmc:games/brawl/round/border/generate
execute unless score brawl.handler brawl.borderFirstCenterZ matches -50..50 run function stmc:games/brawl/round/border/generate
scoreboard players set brawl.handler brawl.BORDERGENSTAGE 4

# remove temporary scoreboards
scoreboard objectives remove brawl.BORDERGENSTAGE
scoreboard objectives remove brawl.borderThirdDX
scoreboard objectives remove brawl.borderThirdDZ
scoreboard objectives remove brawl.borderSecondDX
scoreboard objectives remove brawl.borderSecondDZ
scoreboard objectives remove brawl.borderFirstDX
scoreboard objectives remove brawl.borderFirstDZ

# force end recursion
execute if score brawl.handler brawl.BORDERGENSTAGE matches 4 run return 1