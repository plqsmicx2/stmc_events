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

scoreboard players set replicate.PurplePenguins replicate.playersCompleted 0

execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if blocks 47 111 -15 51 111 -11 37 111 -15 all run scoreboard players add replicate.PurplePenguins replicate.playersCompleted 1
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if blocks 27 111 -15 31 111 -11 37 111 -15 all run scoreboard players add replicate.PurplePenguins replicate.playersCompleted 1
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if blocks 32 111 -25 36 111 -21 37 111 -15 all run scoreboard players add replicate.PurplePenguins replicate.playersCompleted 1
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if blocks 42 111 -25 46 111 -21 37 111 -15 all run scoreboard players add replicate.PurplePenguins replicate.playersCompleted 1

# Build 1

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 3 run clone -2 81 -2 2 81 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build1 matches 4.. if score replicate.PurplePenguins replicate.stage matches 0 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with deepslate_tiles 64
execute if score replicate.PurplePenguins replicate.timer.build1 matches 4.. if score replicate.PurplePenguins replicate.stage matches 0 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with soul_sand 64
execute if score replicate.PurplePenguins replicate.timer.build1 matches 4.. if score replicate.PurplePenguins replicate.stage matches 0 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with mangrove_roots 64
execute if score replicate.PurplePenguins replicate.timer.build1 matches 4.. if score replicate.PurplePenguins replicate.stage matches 0 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with mud 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build1 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if score replicate.PurplePenguins replicate.stage matches 0 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build1 60
execute if score replicate.PurplePenguins replicate.timer.build1 matches 60.. if score replicate.PurplePenguins replicate.stage matches 0 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 1

# Build 2

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PurplePenguins replicate.timer.build2 matches 3 run clear @a[team=PURPLE_PENGUINS]

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 3 run clone -2 82 -2 2 82 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.2 with white_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.3 with light_blue_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.4 with pink_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with purple_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with blue_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with yellow_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build2 matches 4.. if score replicate.PurplePenguins replicate.stage matches 1 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with orange_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build2 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PurplePenguins replicate.timer.build2 matches 60.. if score replicate.PurplePenguins replicate.stage matches 1 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build2 60
execute if score replicate.PurplePenguins replicate.timer.build2 matches 60.. if score replicate.PurplePenguins replicate.stage matches 1 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 2

# Build 3

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PurplePenguins replicate.timer.build3 matches 3 run clear @a[team=PURPLE_PENGUINS]

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 3 run clone -2 83 -2 2 83 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build3 matches 4.. if score replicate.PurplePenguins replicate.stage matches 2 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.4 with prismarine_bricks 64
execute if score replicate.PurplePenguins replicate.timer.build3 matches 4.. if score replicate.PurplePenguins replicate.stage matches 2 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with dark_prismarine 64
execute if score replicate.PurplePenguins replicate.timer.build3 matches 4.. if score replicate.PurplePenguins replicate.stage matches 2 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with light_blue_stained_glass 64
execute if score replicate.PurplePenguins replicate.timer.build3 matches 4.. if score replicate.PurplePenguins replicate.stage matches 2 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with sea_lantern 64
execute if score replicate.PurplePenguins replicate.timer.build3 matches 4.. if score replicate.PurplePenguins replicate.stage matches 2 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with prismarine 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build3 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PurplePenguins replicate.timer.build3 matches 60.. if score replicate.PurplePenguins replicate.stage matches 2 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build3 60
execute if score replicate.PurplePenguins replicate.timer.build3 matches 60.. if score replicate.PurplePenguins replicate.stage matches 2 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 3

# Build 4

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PurplePenguins replicate.timer.build4 matches 3 run clear @a[team=PURPLE_PENGUINS]

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 3 run clone -2 84 -2 2 84 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.2 with light_blue_wool 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.3 with lime_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.4 with yellow_wool 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with lapis_block 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with dirt 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with cobblestone 64
execute if score replicate.PurplePenguins replicate.timer.build4 matches 4.. if score replicate.PurplePenguins replicate.stage matches 3 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with coarse_dirt 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build4 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PurplePenguins replicate.timer.build4 matches 60.. if score replicate.PurplePenguins replicate.stage matches 3 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build4 60
execute if score replicate.PurplePenguins replicate.timer.build4 matches 60.. if score replicate.PurplePenguins replicate.stage matches 3 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 4

# Build 5

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PurplePenguins replicate.timer.build5 matches 3 run clear @a[team=PURPLE_PENGUINS]

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 3 run clone -2 85 -2 2 85 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build5 matches 4.. if score replicate.PurplePenguins replicate.stage matches 4 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.4 with tuff_bricks 64
execute if score replicate.PurplePenguins replicate.timer.build5 matches 4.. if score replicate.PurplePenguins replicate.stage matches 4 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with waxed_oxidized_cut_copper 64
execute if score replicate.PurplePenguins replicate.timer.build5 matches 4.. if score replicate.PurplePenguins replicate.stage matches 4 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with waxed_weathered_copper_grate 64
execute if score replicate.PurplePenguins replicate.timer.build5 matches 4.. if score replicate.PurplePenguins replicate.stage matches 4 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with waxed_exposed_copper_bulb 64
execute if score replicate.PurplePenguins replicate.timer.build5 matches 4.. if score replicate.PurplePenguins replicate.stage matches 4 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with waxed_chiseled_copper 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build5 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# store time to complete this build & move to next build
execute if score replicate.PurplePenguins replicate.timer.build5 matches 60.. if score replicate.PurplePenguins replicate.stage matches 4 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build5 60
execute if score replicate.PurplePenguins replicate.timer.build5 matches 60.. if score replicate.PurplePenguins replicate.stage matches 4 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 5

# Build 6

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 47 112 -15 51 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 27 112 -15 31 112 -11 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 32 112 -25 36 112 -21 tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 42 112 -25 46 112 -21 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 47 111 -15 51 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 37 111 -15 41 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 27 111 -15 31 111 -11 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 32 111 -25 36 111 -21 chiseled_tuff_bricks
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run fill 42 111 -25 46 111 -21 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PurplePenguins replicate.timer.build6 matches 3 run clear @a[team=PURPLE_PENGUINS]

# clone the build
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 3 run clone -2 86 -2 2 86 2 37 111 -15

# give players necessary blocks
execute if score replicate.PurplePenguins replicate.timer.build6 matches 4.. if score replicate.PurplePenguins replicate.stage matches 5 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.4 with red_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build6 matches 4.. if score replicate.PurplePenguins replicate.stage matches 5 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.5 with orange_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build6 matches 4.. if score replicate.PurplePenguins replicate.stage matches 5 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.6 with yellow_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build6 matches 4.. if score replicate.PurplePenguins replicate.stage matches 5 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.7 with lime_concrete 64
execute if score replicate.PurplePenguins replicate.timer.build6 matches 4.. if score replicate.PurplePenguins replicate.stage matches 5 run item replace entity @a[team=PURPLE_PENGUINS] hotbar.8 with light_blue_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 60 run fill 53 110 -9 25 114 -27 air replace tinted_glass
execute in trials:replicate if score replicate.PurplePenguins replicate.timer.build6 matches 60 run fill 53 110 -9 25 114 -27 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PurplePenguins replicate.timer.build6 matches 60.. if score replicate.PurplePenguins replicate.stage matches 5 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players remove replicate.PurplePenguins replicate.timer.build6 60
execute if score replicate.PurplePenguins replicate.timer.build6 matches 60.. if score replicate.PurplePenguins replicate.stage matches 5 if score replicate.PurplePenguins replicate.playersCompleted matches 4 run scoreboard players set replicate.PurplePenguins replicate.stage 6
