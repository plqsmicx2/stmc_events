# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 102 10 9 102 14 -40 104 -24
# ----> clone 11 102 10 11 106 14 -33 106 -24
# 1- build 2
# --> clone -9 101 2 -5 101 6 -40 104 -24
# ----> clone -11 102 2 -11 106 6 -33 106 -24
# 2- build 3
# --> clone -9 101 -6 -5 101 -2 -40 104 -24
# ----> clone -11 102 -6 -11 106 -2 -33 106 -24
# 3- build 4
# --> clone 5 102 -14 9 102 -10 -40 104 -24
# ----> clone 11 102 -14 11 106 -10 -33 106 -24
# 4- build 5
# --> clone 5 102 -6 9 102 -2 -40 104 -24
# ----> clone 11 102 -6 11 106 -2 -33 106 -24
# 5- build 6
# --> clone 5 102 2 9 102 6 -40 104 -24
# ----> clone build 6: 11 102 2 11 106 6 -33 106 -24
# 6- team complete

# REPLACE FINDABLE:
# player1:
# --> build: -40 105 -32 to -36 105 -28
# --> glass: -40 106 -32 to -36 106 -28
# player2:
# --> build: -50 105 -29 to -46 105 -25
# --> glass: -50 106 -29 to -46 106 -25
# player3:
# --> build: -50 105 -19 to -46 105 -15
# --> glass: -50 106 -19 to -46 106 -15
# player4:
# --> build: -40 105 -16 to -36 105 -12
# --> glass: -40 106 -16 to -36 106 -12
# lower template:
# --> build: -40 104 -24 to -36 104 -20
# upper template:
# --> build: -33 106 -24 to -33 110 -20
# whole box:
# --> -58 100 -39 to -26 114 -4

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
execute if score replicate.CyanCougars replicate.stage matches 0 run scoreboard players add replicate.CyanCougars replicate.timer.build1 1
execute if score replicate.CyanCougars replicate.stage matches 1 run scoreboard players add replicate.CyanCougars replicate.timer.build2 1
execute if score replicate.CyanCougars replicate.stage matches 2 run scoreboard players add replicate.CyanCougars replicate.timer.build3 1
execute if score replicate.CyanCougars replicate.stage matches 3 run scoreboard players add replicate.CyanCougars replicate.timer.build4 1
execute if score replicate.CyanCougars replicate.stage matches 4 run scoreboard players add replicate.CyanCougars replicate.timer.build5 1
execute if score replicate.CyanCougars replicate.stage matches 5 run scoreboard players add replicate.CyanCougars replicate.timer.build6 1

# end game if we're in stage 6
execute if score replicate.CyanCougars replicate.stage matches 6 run scoreboard players set replicate.CyanCougars replicate.completed 1
execute if score replicate.CyanCougars replicate.stage matches 6 run gamemode spectator @a[team=CYAN_COUGARS]
execute if score replicate.CyanCougars replicate.stage matches 6 run return 0

# determine # of players completed with active build
scoreboard players set replicate.CyanCougars replicate.playersCompleted 0

execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60.. if blocks -40 105 -32 -36 105 -28 -40 104 -24 all run scoreboard players add replicate.CyanCougars replicate.playersCompleted 1
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60.. if blocks -50 105 -29 -46 105 -25 -40 104 -24 all run scoreboard players add replicate.CyanCougars replicate.playersCompleted 1
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60.. if blocks -50 105 -19 -46 105 -15 -40 104 -24 all run scoreboard players add replicate.CyanCougars replicate.playersCompleted 1
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60.. if blocks -40 105 -16 -36 105 -12 -40 104 -24 all run scoreboard players add replicate.CyanCougars replicate.playersCompleted 1

# give players items
execute if score replicate.CyanCougars replicate.timer.build1 matches 4.. if score replicate.CyanCougars replicate.stage matches 0 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round1
execute if score replicate.CyanCougars replicate.timer.build2 matches 4.. if score replicate.CyanCougars replicate.stage matches 1 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round2
execute if score replicate.CyanCougars replicate.timer.build3 matches 4.. if score replicate.CyanCougars replicate.stage matches 2 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round3
execute if score replicate.CyanCougars replicate.timer.build4 matches 4.. if score replicate.CyanCougars replicate.stage matches 3 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round4
execute if score replicate.CyanCougars replicate.timer.build5 matches 4.. if score replicate.CyanCougars replicate.stage matches 4 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round5
execute if score replicate.CyanCougars replicate.timer.build6 matches 4.. if score replicate.CyanCougars replicate.stage matches 5 as @a[team=CYAN_COUGARS] run function trials:replicate/round_active/inventory/round6

# <===== BUILD 1 =====>

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 3 run clone 5 102 10 9 102 14 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build1 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build1 matches 60.. if score replicate.CyanCougars replicate.stage matches 0 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 1

# <===== BUILD 2 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks

# reset inventories
execute if score replicate.CyanCougars replicate.timer.build2 matches 3 run clear @a[team=CYAN_COUGARS]

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run clone -9 101 2 -5 101 6 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build2 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build2 matches 60.. if score replicate.CyanCougars replicate.stage matches 1 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 2

# <===== BUILD 3 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks

# reset inventories
execute if score replicate.CyanCougars replicate.timer.build3 matches 3 run clear @a[team=CYAN_COUGARS]

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run clone -9 101 -6 -5 101 -2 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build3 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build3 matches 60.. if score replicate.CyanCougars replicate.stage matches 2 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 3

# <===== BUILD 4 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks

# reset inventories
execute if score replicate.CyanCougars replicate.timer.build4 matches 3 run clear @a[team=CYAN_COUGARS]

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run clone 5 102 -14 9 102 -10 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build4 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build4 matches 60.. if score replicate.CyanCougars replicate.stage matches 3 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 4

# <===== BUILD 5 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks

# reset inventories
execute if score replicate.CyanCougars replicate.timer.build5 matches 3 run clear @a[team=CYAN_COUGARS]

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run clone 5 102 -6 9 102 -2 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build5 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build5 matches 60.. if score replicate.CyanCougars replicate.stage matches 4 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 5

# <===== BUILD 6 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -40 106 -32 -36 106 -28 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -50 106 -29 -46 106 -25 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -50 106 -19 -46 106 -15 tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -40 106 -16 -36 106 -12 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -40 105 -32 -36 105 -28 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -40 104 -24 -36 104 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -33 106 -24 -33 110 -20 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -50 105 -29 -46 105 -25 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -50 105 -19 -46 105 -15 chiseled_tuff_bricks
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run fill -40 105 -16 -36 105 -12 chiseled_tuff_bricks

# reset inventories
execute if score replicate.CyanCougars replicate.timer.build6 matches 3 run clear @a[team=CYAN_COUGARS]

# clone the build
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run clone 5 102 2 9 102 6 -40 104 -24
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 -33 106 -24

# remove the tinted glass barrier
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 60 run fill -58 100 -39 -26 114 -4 air replace tinted_glass
execute in trials:replicate if score replicate.CyanCougars replicate.timer.build6 matches 60 run fill -58 100 -39 -26 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.CyanCougars replicate.timer.build6 matches 60.. if score replicate.CyanCougars replicate.stage matches 5 if score replicate.CyanCougars replicate.playersCompleted matches 4 run scoreboard players set replicate.CyanCougars replicate.stage 6