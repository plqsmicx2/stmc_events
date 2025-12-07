# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 102 10 9 102 14 -40 104 -67
# ----> clone 11 102 10 11 106 14 -33 106 -67
# 1- build 2
# --> clone -9 101 2 -5 101 6 -40 104 -67
# ----> clone -11 102 2 -11 106 6 -33 106 -67
# 2- build 3
# --> clone -9 101 -6 -5 101 -2 -40 104 -67
# ----> clone -11 102 -6 -11 106 -2 -33 106 -67
# 3- build 4
# --> clone 5 102 -14 9 102 -10 -40 104 -67
# ----> clone 11 102 -14 11 106 -10 -33 106 -67
# 4- build 5
# --> clone 5 102 -6 9 102 -2 -40 104 -67
# ----> clone 11 102 -6 11 106 -2 -33 106 -67
# 5- build 6
# --> clone 5 102 2 9 102 6 -40 104 -67
# ----> clone build 6: 11 102 2 11 106 6 -33 106 -67
# 6- team complete

# REPLACE FINDABLE:
# player1:
# --> build: -40 105 -75 to -36 105 -71
# --> glass: -40 106 -75 to -36 106 -71
# player2:
# --> build: -50 105 -72 to -46 105 -68
# --> glass: -50 106 -72 to -46 106 -68
# player3:
# --> build: -50 105 -62 to -46 105 -58
# --> glass: -50 106 -62 to -46 106 -58
# player4:
# --> build: -40 105 -59 to -36 105 -55
# --> glass: -40 106 -59 to -36 106 -55
# lower template:
# --> build: -40 104 -67 to -36 104 -63
# upper template:
# --> build: -33 106 -67 to -33 110 -63
# whole box:
# --> -58 100 -82 to -26 114 -47

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
execute if score replicate.GreenGoats replicate.stage matches 0 run scoreboard players add replicate.GreenGoats replicate.timer.build1 1
execute if score replicate.GreenGoats replicate.stage matches 1 run scoreboard players add replicate.GreenGoats replicate.timer.build2 1
execute if score replicate.GreenGoats replicate.stage matches 2 run scoreboard players add replicate.GreenGoats replicate.timer.build3 1
execute if score replicate.GreenGoats replicate.stage matches 3 run scoreboard players add replicate.GreenGoats replicate.timer.build4 1
execute if score replicate.GreenGoats replicate.stage matches 4 run scoreboard players add replicate.GreenGoats replicate.timer.build5 1
execute if score replicate.GreenGoats replicate.stage matches 5 run scoreboard players add replicate.GreenGoats replicate.timer.build6 1

# end game if we're in stage 6
execute if score replicate.GreenGoats replicate.stage matches 6 run scoreboard players set replicate.GreenGoats replicate.completed 1
execute if score replicate.GreenGoats replicate.stage matches 6 run gamemode spectator @a[team=GREEN_GOATS]
execute if score replicate.GreenGoats replicate.stage matches 6 run return 0

# determine # of players completed with active build
scoreboard players set replicate.GreenGoats replicate.playersCompleted 0

execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60.. if blocks -40 105 -75 -36 105 -71 -40 104 -67 all run scoreboard players add replicate.GreenGoats replicate.playersCompleted 1
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60.. if blocks -50 105 -72 -46 105 -68 -40 104 -67 all run scoreboard players add replicate.GreenGoats replicate.playersCompleted 1
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60.. if blocks -50 105 -62 -46 105 -58 -40 104 -67 all run scoreboard players add replicate.GreenGoats replicate.playersCompleted 1
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60.. if blocks -40 105 -59 -36 105 -55 -40 104 -67 all run scoreboard players add replicate.GreenGoats replicate.playersCompleted 1

# give players items
execute if score replicate.GreenGoats replicate.timer.build1 matches 4.. if score replicate.GreenGoats replicate.stage matches 0 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round1
execute if score replicate.GreenGoats replicate.timer.build2 matches 4.. if score replicate.GreenGoats replicate.stage matches 1 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round2
execute if score replicate.GreenGoats replicate.timer.build3 matches 4.. if score replicate.GreenGoats replicate.stage matches 2 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round3
execute if score replicate.GreenGoats replicate.timer.build4 matches 4.. if score replicate.GreenGoats replicate.stage matches 3 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round4
execute if score replicate.GreenGoats replicate.timer.build5 matches 4.. if score replicate.GreenGoats replicate.stage matches 4 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round5
execute if score replicate.GreenGoats replicate.timer.build6 matches 4.. if score replicate.GreenGoats replicate.stage matches 5 as @a[team=GREEN_GOATS] run function trials:replicate/round_active/inventory/round6

# <===== BUILD 1 =====>

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 3 run clone 5 102 10 9 102 14 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build1 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build1 matches 60.. if score replicate.GreenGoats replicate.stage matches 0 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 1

# <===== BUILD 2 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks

# reset inventories
execute if score replicate.GreenGoats replicate.timer.build2 matches 3 run clear @a[team=GREEN_GOATS]

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run clone -9 101 2 -5 101 6 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build2 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build2 matches 60.. if score replicate.GreenGoats replicate.stage matches 1 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 2

# <===== BUILD 3 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks

# reset inventories
execute if score replicate.GreenGoats replicate.timer.build3 matches 3 run clear @a[team=GREEN_GOATS]

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run clone -9 101 -6 -5 101 -2 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build3 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build3 matches 60.. if score replicate.GreenGoats replicate.stage matches 2 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 3

# <===== BUILD 4 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks

# reset inventories
execute if score replicate.GreenGoats replicate.timer.build4 matches 3 run clear @a[team=GREEN_GOATS]

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run clone 5 102 -14 9 102 -10 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build4 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build4 matches 60.. if score replicate.GreenGoats replicate.stage matches 3 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 4

# <===== BUILD 5 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks

# reset inventories
execute if score replicate.GreenGoats replicate.timer.build5 matches 3 run clear @a[team=GREEN_GOATS]

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run clone 5 102 -6 9 102 -2 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build5 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build5 matches 60.. if score replicate.GreenGoats replicate.stage matches 4 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 5

# <===== BUILD 6 =====>

# re-add the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -40 106 -75 -36 106 -71 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -50 106 -72 -46 106 -68 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -50 106 -62 -46 106 -58 tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -40 106 -59 -36 106 -55 tinted_glass
# re-add chiseled tuff bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -40 105 -75 -36 105 -71 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -40 104 -67 -36 104 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -33 106 -67 -33 110 -63 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -50 105 -72 -46 105 -68 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -50 105 -62 -46 105 -58 chiseled_tuff_bricks
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run fill -40 105 -59 -36 105 -55 chiseled_tuff_bricks

# reset inventories
execute if score replicate.GreenGoats replicate.timer.build6 matches 3 run clear @a[team=GREEN_GOATS]

# clone the build
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run clone 5 102 2 9 102 6 -40 104 -67
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 -33 106 -67

# remove the tinted glass barrier
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 60 run fill -58 100 -82 -26 114 -47 air replace tinted_glass
execute in trials:replicate if score replicate.GreenGoats replicate.timer.build6 matches 60 run fill -58 100 -82 -26 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.GreenGoats replicate.timer.build6 matches 60.. if score replicate.GreenGoats replicate.stage matches 5 if score replicate.GreenGoats replicate.playersCompleted matches 4 run scoreboard players set replicate.GreenGoats replicate.stage 6