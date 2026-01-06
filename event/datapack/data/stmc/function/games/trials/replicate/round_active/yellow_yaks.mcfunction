# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 101 10 9 101 14 37 104 -67
# ----> clone 11 102 10 11 106 14 34 106 -67
# 1- build 2
# --> clone -9 102 2 -5 102 6 37 104 -67
# ----> clone -11 102 2 -11 106 6 34 106 -67
# 2- build 3
# --> clone -9 102 -6 -5 102 -2 37 104 -67
# ----> clone -11 102 -6 -11 106 -2 34 106 -67
# 3- build 4
# --> clone 5 101 -14 9 101 -10 37 104 -67
# ----> clone 11 102 -14 11 106 -10 34 106 -67
# 4- build 5
# --> clone 5 101 -6 9 101 -2 37 104 -67
# ----> clone 11 102 -6 11 106 -2 34 106 -67
# 5- build 6
# --> clone 5 101 2 9 101 6 37 104 -67
# ----> clone build 6: 11 102 2 11 106 6 34 106 -67
# 6- team complete

# REPLACE FINDABLE:
# player1:
# --> build: 37 105 -59 to 41 105 -55
# --> glass: 37 106 -59 to 41 106 -55
# player2:
# --> build: 47 105 -62 to 51 105 -58
# --> glass: 47 106 -62 to 51 106 -58
# player3:
# --> build: 47 105 -72 to 51 105 -68
# --> glass: 47 106 -72 to 51 106 -68
# player4:
# --> build: 37 105 -75 to 41 105 -71
# --> glass: 37 106 -75 to 41 106 -71
# lower template:
# --> build: 37 104 -67 to 41 104 -63
# upper template:
# --> build: 34 106 -67 to 34 110 -63
# whole box:
# --> 27 100 -82 to 59 114 -47

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
execute if score replicate.YellowYaks replicate.stage matches 0 run scoreboard players add replicate.YellowYaks replicate.timer.build1 1
execute if score replicate.YellowYaks replicate.stage matches 1 run scoreboard players add replicate.YellowYaks replicate.timer.build2 1
execute if score replicate.YellowYaks replicate.stage matches 2 run scoreboard players add replicate.YellowYaks replicate.timer.build3 1
execute if score replicate.YellowYaks replicate.stage matches 3 run scoreboard players add replicate.YellowYaks replicate.timer.build4 1
execute if score replicate.YellowYaks replicate.stage matches 4 run scoreboard players add replicate.YellowYaks replicate.timer.build5 1
execute if score replicate.YellowYaks replicate.stage matches 5 run scoreboard players add replicate.YellowYaks replicate.timer.build6 1

# determine # of players completed with active build
scoreboard players set replicate.YellowYaks replicate.playersCompleted 0

execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60.. if blocks 37 105 -59 41 105 -55 37 104 -67 all run scoreboard players add replicate.YellowYaks replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60.. if blocks 47 105 -62 51 105 -58 37 104 -67 all run scoreboard players add replicate.YellowYaks replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60.. if blocks 47 105 -72 51 105 -68 37 104 -67 all run scoreboard players add replicate.YellowYaks replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60.. if blocks 37 105 -75 41 105 -71 37 104 -67 all run scoreboard players add replicate.YellowYaks replicate.playersCompleted 1

# give players items
execute if score replicate.YellowYaks replicate.timer.build1 matches 4.. if score replicate.YellowYaks replicate.stage matches 0 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round1
execute if score replicate.YellowYaks replicate.timer.build2 matches 4.. if score replicate.YellowYaks replicate.stage matches 1 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round2
execute if score replicate.YellowYaks replicate.timer.build3 matches 4.. if score replicate.YellowYaks replicate.stage matches 2 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round3
execute if score replicate.YellowYaks replicate.timer.build4 matches 4.. if score replicate.YellowYaks replicate.stage matches 3 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round4
execute if score replicate.YellowYaks replicate.timer.build5 matches 4.. if score replicate.YellowYaks replicate.stage matches 4 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round5
execute if score replicate.YellowYaks replicate.timer.build6 matches 4.. if score replicate.YellowYaks replicate.stage matches 5 as @a[team=YELLOW_YAKS] run function stmc:games/trials/replicate/round_active/inventory/round6

# <===== BUILD 1 =====>

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 3 run clone 5 101 10 9 101 14 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build1 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build1 matches 60.. if score replicate.YellowYaks replicate.stage matches 0 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 1

# <===== BUILD 2 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks

# reset inventories
execute if score replicate.YellowYaks replicate.timer.build2 matches 3 run clear @a[team=YELLOW_YAKS]

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run clone -9 102 2 -5 102 6 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build2 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build2 matches 60.. if score replicate.YellowYaks replicate.stage matches 1 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 2

# <===== BUILD 3 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks

# reset inventories
execute if score replicate.YellowYaks replicate.timer.build3 matches 3 run clear @a[team=YELLOW_YAKS]

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run clone -9 102 -6 -5 102 -2 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build3 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build3 matches 60.. if score replicate.YellowYaks replicate.stage matches 2 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 3

# <===== BUILD 4 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks

# reset inventories
execute if score replicate.YellowYaks replicate.timer.build4 matches 3 run clear @a[team=YELLOW_YAKS]

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run clone 5 101 -14 9 101 -10 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build4 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build4 matches 60.. if score replicate.YellowYaks replicate.stage matches 3 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 4

# <===== BUILD 5 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks

# reset inventories
execute if score replicate.YellowYaks replicate.timer.build5 matches 3 run clear @a[team=YELLOW_YAKS]

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run clone 5 101 -6 9 101 -2 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build5 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build5 matches 60.. if score replicate.YellowYaks replicate.stage matches 4 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 5

# <===== BUILD 6 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 37 106 -59 41 106 -55 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 47 106 -62 51 106 -58 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 47 106 -72 51 106 -68 tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 37 106 -75 41 106 -71 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 37 105 -59 41 105 -55 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 37 104 -67 41 104 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 34 106 -67 34 110 -63 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 47 105 -62 51 105 -58 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 47 105 -72 51 105 -68 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run fill 37 105 -75 41 105 -71 chiseled_tuff_bricks

# reset inventories
execute if score replicate.YellowYaks replicate.timer.build6 matches 3 run clear @a[team=YELLOW_YAKS]

# clone the build
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run clone 5 101 2 9 101 6 37 104 -67
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 34 106 -67

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 60 run fill 27 100 -82 59 114 -47 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.YellowYaks replicate.timer.build6 matches 60 run fill 27 100 -82 59 114 -47 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.YellowYaks replicate.timer.build6 matches 60.. if score replicate.YellowYaks replicate.stage matches 5 if score replicate.YellowYaks replicate.playersCompleted matches 4 run scoreboard players set replicate.YellowYaks replicate.stage 6