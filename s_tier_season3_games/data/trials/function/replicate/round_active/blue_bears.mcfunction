# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 102 10 9 102 14 -40 104 62
# ----> clone 11 102 10 11 106 14 -33 106 62
# 1- build 2
# --> clone -9 101 2 -5 101 6 -40 104 62
# ----> clone -11 102 2 -11 106 6 -33 106 62
# 2- build 3
# --> clone -9 101 -6 -5 101 -2 -40 104 62
# ----> clone -11 102 -6 -11 106 -2 -33 106 62
# 3- build 4
# --> clone 5 102 -14 9 102 -10 -40 104 62
# ----> clone 11 102 -14 11 106 -10 -33 106 62
# 4- build 5
# --> clone 5 102 -6 9 102 -2 -40 104 62
# ----> clone 11 102 -6 11 106 -2 -33 106 62
# 5- build 6
# --> clone 5 102 2 9 102 6 -40 104 62
# ----> clone build 6: 11 102 2 11 106 6 -33 106 62
# 6- team complete

# REPLACE FINDABLE:
# player1:
# --> build: -40 105 54 to -36 105 58
# --> glass: -40 106 54 to -36 106 58
# player2:
# --> build: -50 105 57 to -46 105 61
# --> glass: -50 106 57 to -46 106 61
# player3:
# --> build: -50 105 67 to -46 105 71
# --> glass: -50 106 67 to -46 106 71
# player4:
# --> build: -40 105 70 to -36 105 74
# --> glass: -40 106 70 to -36 106 74
# lower template:
# --> build: -40 104 62 to -36 104 66
# upper template:
# --> build: -33 106 62 to -33 110 66
# whole box:
# --> -58 100 47 to -26 114 82

# each build stage is the same:
# at 3 ticks, clone the build
# at >4 ticks, give players necessary blocks
# at 40 ticks, remove the tinted glass barrier
# at >40 ticks, run testforblocks on each player
# at >40 ticks, update playersCompleted for team
# at >40 ticks, if playersCompleted is 4, increment stage, reset each player's completion, and re-add the tinted glass barrier
# these are all handled within each team's function

# <===== GAME WIDE =====>

# increment appropriate timer
execute if score replicate.BlueBears replicate.stage matches 0 run scoreboard players add replicate.BlueBears replicate.timer.build1 1
execute if score replicate.BlueBears replicate.stage matches 1 run scoreboard players add replicate.BlueBears replicate.timer.build2 1
execute if score replicate.BlueBears replicate.stage matches 2 run scoreboard players add replicate.BlueBears replicate.timer.build3 1
execute if score replicate.BlueBears replicate.stage matches 3 run scoreboard players add replicate.BlueBears replicate.timer.build4 1
execute if score replicate.BlueBears replicate.stage matches 4 run scoreboard players add replicate.BlueBears replicate.timer.build5 1
execute if score replicate.BlueBears replicate.stage matches 5 run scoreboard players add replicate.BlueBears replicate.timer.build6 1

# determine # of players completed with active build
scoreboard players set replicate.BlueBears replicate.playersCompleted 0

execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60.. if blocks -40 105 54 -36 105 58 -40 104 62 all run scoreboard players add replicate.BlueBears replicate.playersCompleted 1
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60.. if blocks -50 105 57 -46 105 61 -40 104 62 all run scoreboard players add replicate.BlueBears replicate.playersCompleted 1
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60.. if blocks -50 105 67 -46 105 71 -40 104 62 all run scoreboard players add replicate.BlueBears replicate.playersCompleted 1
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60.. if blocks -40 105 70 -36 105 74 -40 104 62 all run scoreboard players add replicate.BlueBears replicate.playersCompleted 1

# give players items
execute if score replicate.BlueBears replicate.timer.build1 matches 4.. if score replicate.BlueBears replicate.stage matches 0 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round1
execute if score replicate.BlueBears replicate.timer.build2 matches 4.. if score replicate.BlueBears replicate.stage matches 1 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round2
execute if score replicate.BlueBears replicate.timer.build3 matches 4.. if score replicate.BlueBears replicate.stage matches 2 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round3
execute if score replicate.BlueBears replicate.timer.build4 matches 4.. if score replicate.BlueBears replicate.stage matches 3 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round4
execute if score replicate.BlueBears replicate.timer.build5 matches 4.. if score replicate.BlueBears replicate.stage matches 4 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round5
execute if score replicate.BlueBears replicate.timer.build6 matches 4.. if score replicate.BlueBears replicate.stage matches 5 as @a[team=BLUE_BEARS] run function trials:replicate/round_active/inventory/round6

# <===== BUILD 1 =====>

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 3 run clone 5 102 10 9 102 14 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build1 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build1 matches 60.. if score replicate.BlueBears replicate.stage matches 0 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 1

# <===== BUILD 2 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks

# reset inventories
execute if score replicate.BlueBears replicate.timer.build2 matches 3 run clear @a[team=BLUE_BEARS]

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run clone -9 101 2 -5 101 6 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build2 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build2 matches 60.. if score replicate.BlueBears replicate.stage matches 1 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 2

# <===== BUILD 3 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks

# reset inventories
execute if score replicate.BlueBears replicate.timer.build3 matches 3 run clear @a[team=BLUE_BEARS]

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run clone -9 101 -6 -5 101 -2 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build3 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build3 matches 60.. if score replicate.BlueBears replicate.stage matches 2 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 3

# <===== BUILD 4 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks

# reset inventories
execute if score replicate.BlueBears replicate.timer.build4 matches 3 run clear @a[team=BLUE_BEARS]

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run clone 5 102 -14 9 102 -10 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build4 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build4 matches 60.. if score replicate.BlueBears replicate.stage matches 3 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 4

# <===== BUILD 5 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks

# reset inventories
execute if score replicate.BlueBears replicate.timer.build5 matches 3 run clear @a[team=BLUE_BEARS]

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run clone 5 102 -6 9 102 -2 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build5 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build5 matches 60.. if score replicate.BlueBears replicate.stage matches 4 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 5

# <===== BUILD 6 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -40 106 54 -36 106 58 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -50 106 57 -46 106 61 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -50 106 67 -46 106 71 tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -40 106 70 -36 106 74 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -40 105 54 -36 105 58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -40 104 62 -36 104 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -33 106 62 -33 110 66 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -50 105 57 -46 105 61 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -50 105 67 -46 105 71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run fill -40 105 70 -36 105 74 chiseled_tuff_bricks

# reset inventories
execute if score replicate.BlueBears replicate.timer.build6 matches 3 run clear @a[team=BLUE_BEARS]

# clone the build
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run clone 5 102 2 9 102 6 -40 104 62
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 -33 106 62

# remove the tinted glass barrier
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 60 run fill -58 100 47 -26 114 82 air replace tinted_glass
execute in trials:replicate if score replicate.BlueBears replicate.timer.build6 matches 60 run fill -58 100 47 -26 114 82 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.BlueBears replicate.timer.build6 matches 60.. if score replicate.BlueBears replicate.stage matches 5 if score replicate.BlueBears replicate.playersCompleted matches 4 run scoreboard players set replicate.BlueBears replicate.stage 6