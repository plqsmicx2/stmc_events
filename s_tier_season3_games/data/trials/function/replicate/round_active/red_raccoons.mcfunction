# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# stages:
# 0- build 1
# 1- build 2
# 2- build 3
# 3- build 4
# 4- build 5
# 5- build 6
# 6- team complete

# each build stage is the same:
# at 3 ticks, clone the build
# at >4 ticks, give players necessary blocks
# at 40 ticks, remove the tinted glass barrier
# at >40 ticks, run testforblocks on each player
# at >40 ticks, update playersCompleted for team
# at >40 ticks, if playersCompleted is 4, increment stage, reset each player's completion, and re-add the tinted glass barrier
# these are all handled within each team's function

scoreboard players set replicate.RedRaccoons replicate.playersCompleted 0

execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if blocks 47 111 21 51 111 25 37 111 21 all run scoreboard players add replicate.RedRaccoons replicate.playersCompleted 1
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if blocks 27 111 21 31 111 25 37 111 21 all run scoreboard players add replicate.RedRaccoons replicate.playersCompleted 1
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if blocks 32 111 11 36 111 15 37 111 21 all run scoreboard players add replicate.RedRaccoons replicate.playersCompleted 1
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if blocks 42 111 11 46 111 15 37 111 21 all run scoreboard players add replicate.RedRaccoons replicate.playersCompleted 1

# Build 1

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 3 run clone -2 81 -2 2 81 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.3 with snow_block 64
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.4 with green_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.5 with brown_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with packed_mud 64
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with podzol 64
execute if score replicate.RedRaccoons replicate.timer.build1 matches 4.. if score replicate.RedRaccoons replicate.stage matches 0 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with cobblestone 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build1 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if score replicate.RedRaccoons replicate.stage matches 0 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build1 60
execute if score replicate.RedRaccoons replicate.timer.build1 matches 60.. if score replicate.RedRaccoons replicate.stage matches 0 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 1

# Build 2

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.RedRaccoons replicate.timer.build2 matches 3 run clear @a[team=RED_RACCOONS]

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 3 run clone -2 82 -2 2 82 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.2 with white_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.3 with light_blue_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.4 with pink_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.5 with purple_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with blue_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with yellow_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build2 matches 4.. if score replicate.RedRaccoons replicate.stage matches 1 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with orange_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build2 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.RedRaccoons replicate.timer.build2 matches 60.. if score replicate.RedRaccoons replicate.stage matches 1 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build2 60
execute if score replicate.RedRaccoons replicate.timer.build2 matches 60.. if score replicate.RedRaccoons replicate.stage matches 1 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 2

# Build 3

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.RedRaccoons replicate.timer.build3 matches 3 run clear @a[team=RED_RACCOONS]

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 3 run clone -2 83 -2 2 83 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build3 matches 4.. if score replicate.RedRaccoons replicate.stage matches 2 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with pink_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build3 matches 4.. if score replicate.RedRaccoons replicate.stage matches 2 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with black_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build3 matches 4.. if score replicate.RedRaccoons replicate.stage matches 2 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with red_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build3 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.RedRaccoons replicate.timer.build3 matches 60.. if score replicate.RedRaccoons replicate.stage matches 2 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build3 60
execute if score replicate.RedRaccoons replicate.timer.build3 matches 60.. if score replicate.RedRaccoons replicate.stage matches 2 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 3

# Build 4

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.RedRaccoons replicate.timer.build4 matches 3 run clear @a[team=RED_RACCOONS]

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 3 run clone -2 84 -2 2 84 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.2 with light_blue_wool 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.3 with lime_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.4 with yellow_wool 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.5 with lapis_block 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with dirt 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with cobblestone 64
execute if score replicate.RedRaccoons replicate.timer.build4 matches 4.. if score replicate.RedRaccoons replicate.stage matches 3 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with coarse_dirt 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build4 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.RedRaccoons replicate.timer.build4 matches 60.. if score replicate.RedRaccoons replicate.stage matches 3 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build4 60
execute if score replicate.RedRaccoons replicate.timer.build4 matches 60.. if score replicate.RedRaccoons replicate.stage matches 3 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 4

# Build 5

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.RedRaccoons replicate.timer.build5 matches 3 run clear @a[team=RED_RACCOONS]

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 3 run clone -2 85 -2 2 85 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build5 matches 4.. if score replicate.RedRaccoons replicate.stage matches 4 run item replace entity @a[team=RED_RACCOONS] hotbar.4 with waxed_chiseled_copper 64
execute if score replicate.RedRaccoons replicate.timer.build5 matches 4.. if score replicate.RedRaccoons replicate.stage matches 4 run item replace entity @a[team=RED_RACCOONS] hotbar.5 with waxed_oxidized_cut_copper 64
execute if score replicate.RedRaccoons replicate.timer.build5 matches 4.. if score replicate.RedRaccoons replicate.stage matches 4 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with waxed_weathered_copper_grate 64
execute if score replicate.RedRaccoons replicate.timer.build5 matches 4.. if score replicate.RedRaccoons replicate.stage matches 4 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with waxed_exposed_copper_bulb 64
execute if score replicate.RedRaccoons replicate.timer.build5 matches 4.. if score replicate.RedRaccoons replicate.stage matches 4 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with tuff_bricks 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build5 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# store time to complete this build & move to next build
execute if score replicate.RedRaccoons replicate.timer.build5 matches 60.. if score replicate.RedRaccoons replicate.stage matches 4 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build5 60
execute if score replicate.RedRaccoons replicate.timer.build5 matches 60.. if score replicate.RedRaccoons replicate.stage matches 4 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 5

# Build 6

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 47 112 21 51 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 27 112 21 31 112 25 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 32 112 11 36 112 15 tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 42 112 11 46 112 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 47 111 21 51 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 37 111 21 41 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 27 111 21 31 111 25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 32 111 11 36 111 15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run fill 42 111 11 46 111 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.RedRaccoons replicate.timer.build6 matches 3 run clear @a[team=RED_RACCOONS]

# clone the build
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 3 run clone -2 86 -2 2 86 2 37 111 21

# give players necessary blocks
execute if score replicate.RedRaccoons replicate.timer.build6 matches 4.. if score replicate.RedRaccoons replicate.stage matches 5 run item replace entity @a[team=RED_RACCOONS] hotbar.4 with red_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build6 matches 4.. if score replicate.RedRaccoons replicate.stage matches 5 run item replace entity @a[team=RED_RACCOONS] hotbar.5 with orange_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build6 matches 4.. if score replicate.RedRaccoons replicate.stage matches 5 run item replace entity @a[team=RED_RACCOONS] hotbar.6 with yellow_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build6 matches 4.. if score replicate.RedRaccoons replicate.stage matches 5 run item replace entity @a[team=RED_RACCOONS] hotbar.7 with lime_concrete 64
execute if score replicate.RedRaccoons replicate.timer.build6 matches 4.. if score replicate.RedRaccoons replicate.stage matches 5 run item replace entity @a[team=RED_RACCOONS] hotbar.8 with light_blue_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 60 run fill 53 110 27 25 114 9 air replace tinted_glass
execute in trials:replicate if score replicate.RedRaccoons replicate.timer.build6 matches 60 run fill 53 110 27 25 114 9 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.RedRaccoons replicate.timer.build6 matches 60.. if score replicate.RedRaccoons replicate.stage matches 5 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players remove replicate.RedRaccoons replicate.timer.build6 60
execute if score replicate.RedRaccoons replicate.timer.build6 matches 60.. if score replicate.RedRaccoons replicate.stage matches 5 if score replicate.RedRaccoons replicate.playersCompleted matches 4 run scoreboard players set replicate.RedRaccoons replicate.stage 6
