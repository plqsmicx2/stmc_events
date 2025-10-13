# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# stages:

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 101 10 9 101 14 37 104 19
# ----> clone 11 102 10 11 106 14 34 106 19
# 1- build 2
# --> clone -9 102 2 -5 102 6 37 104 19
# ----> clone -11 102 2 -11 106 6 34 106 19
# 2- build 3
# --> clone -9 102 -6 -5 102 -2 37 104 19
# ----> clone -11 102 -6 -11 106 -2 34 106 19
# 3- build 4
# --> clone 5 101 -14 9 101 -10 37 104 19
# ----> clone 11 102 -14 11 106 -10 34 106 19
# 4- build 5
# --> clone 5 101 -6 9 101 -2 37 104 19
# ----> clone 11 102 -6 11 106 -2 34 106 19
# 5- build 6
# --> clone 5 101 2 9 101 6 37 104 19
# ----> clone build 6: 11 102 2 11 106 6 34 106 19
# 6- team complete

# each build stage is the same:
# at 3 ticks, clone the build
# at >4 ticks, give players necessary blocks
# at 40 ticks, remove the tinted glass barrier
# at >40 ticks, run testforblocks on each player
# at >40 ticks, update playersCompleted for team
# at >40 ticks, if playersCompleted is 4, increment stage, reset each player's completion, and re-add the tinted glass barrier
# these are all handled within each team's function

scoreboard players set replicate.OrangeOtters replicate.playersCompleted 0

execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if blocks 37 105 27 41 105 31 37 104 19 all run scoreboard players add replicate.OrangeOtters replicate.playersCompleted 1
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if blocks 47 105 24 51 105 28 37 104 19 all run scoreboard players add replicate.OrangeOtters replicate.playersCompleted 1
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if blocks 47 105 14 51 105 18 37 104 19 all run scoreboard players add replicate.OrangeOtters replicate.playersCompleted 1
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if blocks 37 105 11 41 105 15 37 104 19 all run scoreboard players add replicate.OrangeOtters replicate.playersCompleted 1

# Build 1

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 3 run clone 5 101 10 9 101 14 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build1 matches 4.. if score replicate.OrangeOtters replicate.stage matches 0 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with deepslate_tiles 64
execute if score replicate.OrangeOtters replicate.timer.build1 matches 4.. if score replicate.OrangeOtters replicate.stage matches 0 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with soul_sand 64
execute if score replicate.OrangeOtters replicate.timer.build1 matches 4.. if score replicate.OrangeOtters replicate.stage matches 0 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with mangrove_roots 64
execute if score replicate.OrangeOtters replicate.timer.build1 matches 4.. if score replicate.OrangeOtters replicate.stage matches 0 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with mud 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build1 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if score replicate.OrangeOtters replicate.stage matches 0 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build1 60
execute if score replicate.OrangeOtters replicate.timer.build1 matches 60.. if score replicate.OrangeOtters replicate.stage matches 0 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 1

# Build 2

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 47 106 14 51 106 18 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 37 106 11 41 106 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.OrangeOtters replicate.timer.build2 matches 3 run clear @a[team=ORANGE_OTTERS]

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run clone -9 102 2 -5 102 6 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.2 with light_blue_wool 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.3 with packed_ice 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.4 with snow_block 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with redstone_block 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with coarse_dirt 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with stone_bricks 64
execute if score replicate.OrangeOtters replicate.timer.build2 matches 4.. if score replicate.OrangeOtters replicate.stage matches 1 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with iron_block 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build2 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build2 matches 60.. if score replicate.OrangeOtters replicate.stage matches 1 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build2 60
execute if score replicate.OrangeOtters replicate.timer.build2 matches 60.. if score replicate.OrangeOtters replicate.stage matches 1 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 2

# Build 3

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 47 106 14 51 106 18 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 37 106 11 41 106 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.OrangeOtters replicate.timer.build3 matches 3 run clear @a[team=ORANGE_OTTERS]

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run clone -9 102 -6 -5 102 -2 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build3 matches 4.. if score replicate.OrangeOtters replicate.stage matches 2 run item replace entity @a[team=ORANGE_OTTERS] hotbar.4 with prismarine_bricks 64
execute if score replicate.OrangeOtters replicate.timer.build3 matches 4.. if score replicate.OrangeOtters replicate.stage matches 2 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with dark_prismarine 64
execute if score replicate.OrangeOtters replicate.timer.build3 matches 4.. if score replicate.OrangeOtters replicate.stage matches 2 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with light_blue_stained_glass 64
execute if score replicate.OrangeOtters replicate.timer.build3 matches 4.. if score replicate.OrangeOtters replicate.stage matches 2 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with sea_lantern 64
execute if score replicate.OrangeOtters replicate.timer.build3 matches 4.. if score replicate.OrangeOtters replicate.stage matches 2 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with prismarine 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build3 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build3 matches 60.. if score replicate.OrangeOtters replicate.stage matches 2 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build3 60
execute if score replicate.OrangeOtters replicate.timer.build3 matches 60.. if score replicate.OrangeOtters replicate.stage matches 2 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 3

# Build 4

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 47 106 14 51 106 18 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 37 106 11 41 106 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.OrangeOtters replicate.timer.build4 matches 3 run clear @a[team=ORANGE_OTTERS]

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run clone 5 101 -14 9 101 -10 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build4 matches 4.. if score replicate.OrangeOtters replicate.stage matches 3 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with white_wool 64
execute if score replicate.OrangeOtters replicate.timer.build4 matches 4.. if score replicate.OrangeOtters replicate.stage matches 3 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with calcite 64
execute if score replicate.OrangeOtters replicate.timer.build4 matches 4.. if score replicate.OrangeOtters replicate.stage matches 3 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with white_terracotta 64
execute if score replicate.OrangeOtters replicate.timer.build4 matches 4.. if score replicate.OrangeOtters replicate.stage matches 3 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with black_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build4 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build4 matches 60.. if score replicate.OrangeOtters replicate.stage matches 3 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build4 60
execute if score replicate.OrangeOtters replicate.timer.build4 matches 60.. if score replicate.OrangeOtters replicate.stage matches 3 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 4

# Build 5

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 47 106 14 51 106 18 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 37 106 11 41 106 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.OrangeOtters replicate.timer.build5 matches 3 run clear @a[team=ORANGE_OTTERS]

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run clone 5 101 -6 9 101 -2 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build5 matches 4.. if score replicate.OrangeOtters replicate.stage matches 4 run item replace entity @a[team=ORANGE_OTTERS] hotbar.4 with tuff_bricks 64
execute if score replicate.OrangeOtters replicate.timer.build5 matches 4.. if score replicate.OrangeOtters replicate.stage matches 4 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with waxed_oxidized_cut_copper 64
execute if score replicate.OrangeOtters replicate.timer.build5 matches 4.. if score replicate.OrangeOtters replicate.stage matches 4 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with waxed_weathered_copper_grate 64
execute if score replicate.OrangeOtters replicate.timer.build5 matches 4.. if score replicate.OrangeOtters replicate.stage matches 4 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with waxed_exposed_copper_bulb 64
execute if score replicate.OrangeOtters replicate.timer.build5 matches 4.. if score replicate.OrangeOtters replicate.stage matches 4 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with waxed_chiseled_copper 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build5 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build5 matches 60.. if score replicate.OrangeOtters replicate.stage matches 4 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build5 60
execute if score replicate.OrangeOtters replicate.timer.build5 matches 60.. if score replicate.OrangeOtters replicate.stage matches 4 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 5

# Build 6

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 37 106 27 41 106 31 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 47 106 24 51 106 28 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 47 106 14 51 106 18 tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 37 106 11 41 106 15 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 37 105 27 41 105 31 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 37 104 19 41 104 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 34 106 19 34 110 23 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 47 105 24 51 105 28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 47 105 14 51 105 18 chiseled_tuff_bricks
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run fill 37 105 11 41 105 15 chiseled_tuff_bricks

# reset inventories
execute if score replicate.OrangeOtters replicate.timer.build6 matches 3 run clear @a[team=ORANGE_OTTERS]

# clone the build
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run clone 5 101 2 9 101 6 37 104 19
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 34 106 19

# give players necessary blocks
execute if score replicate.OrangeOtters replicate.timer.build6 matches 4.. if score replicate.OrangeOtters replicate.stage matches 5 run item replace entity @a[team=ORANGE_OTTERS] hotbar.4 with red_concrete 64
execute if score replicate.OrangeOtters replicate.timer.build6 matches 4.. if score replicate.OrangeOtters replicate.stage matches 5 run item replace entity @a[team=ORANGE_OTTERS] hotbar.5 with orange_concrete 64
execute if score replicate.OrangeOtters replicate.timer.build6 matches 4.. if score replicate.OrangeOtters replicate.stage matches 5 run item replace entity @a[team=ORANGE_OTTERS] hotbar.6 with yellow_concrete 64
execute if score replicate.OrangeOtters replicate.timer.build6 matches 4.. if score replicate.OrangeOtters replicate.stage matches 5 run item replace entity @a[team=ORANGE_OTTERS] hotbar.7 with lime_concrete 64
execute if score replicate.OrangeOtters replicate.timer.build6 matches 4.. if score replicate.OrangeOtters replicate.stage matches 5 run item replace entity @a[team=ORANGE_OTTERS] hotbar.8 with blue_concrete 64

# remove the tinted glass barrier
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 60 run fill 27 101 4 59 114 39 air replace tinted_glass
execute in trials:replicate if score replicate.OrangeOtters replicate.timer.build6 matches 60 run fill 27 101 4 59 114 39 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.OrangeOtters replicate.timer.build6 matches 60.. if score replicate.OrangeOtters replicate.stage matches 5 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players remove replicate.OrangeOtters replicate.timer.build6 60
execute if score replicate.OrangeOtters replicate.timer.build6 matches 60.. if score replicate.OrangeOtters replicate.stage matches 5 if score replicate.OrangeOtters replicate.playersCompleted matches 4 run scoreboard players set replicate.OrangeOtters replicate.stage 6