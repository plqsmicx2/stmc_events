# tick function handling the active game for the Red Raccoons in replicate [REPLICATE]

# BUILDS FINDABLE:
# 0- build 1
# --> clone 5 101 10 9 101 14 37 104 -24
# ----> clone 11 102 10 11 106 14 34 106 -24
# 1- build 2
# --> clone -9 102 2 -5 102 6 37 104 -24
# ----> clone -11 102 2 -11 106 6 34 106 -24
# 2- build 3
# --> clone -9 102 -6 -5 102 -2 37 104 -24
# ----> clone -11 102 -6 -11 106 -2 34 106 -24
# 3- build 4
# --> clone 5 101 -14 9 101 -10 37 104 -24
# ----> clone 11 102 -14 11 106 -10 34 106 -24
# 4- build 5
# --> clone 5 101 -6 9 101 -2 37 104 -24
# ----> clone 11 102 -6 11 106 -2 34 106 -24
# 5- build 6
# --> clone 5 101 2 9 101 6 37 104 -24
# ----> clone build 6: 11 102 2 11 106 6 34 106 -24
# 6- team complete

# REPLACE FINDABLE:
# player1:
# --> build: 37 105 -16 to 41 105 -12
# --> glass: 37 106 -16 to 41 106 -12
# player2:
# --> build: 47 105 -19 to 51 105 -15
# --> glass: 47 106 -19 to 51 106 -15
# player3:
# --> build: 47 105 -29 to 51 105 -25
# --> glass: 47 106 -29 to 51 106 -25
# player4:
# --> build: 37 105 -32 to 41 105 -28
# --> glass: 37 106 -32 to 41 106 -28
# lower template:
# --> build: 37 104 -24 to 41 104 -20
# upper template:
# --> build: 34 106 -24 to 34 110 -20
# whole box:
# --> 27 100 -39 to 59 114 -4

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
execute if score replicate.PinkPikas replicate.stage matches 0 run scoreboard players add replicate.PinkPikas replicate.timer.build1 1
execute if score replicate.PinkPikas replicate.stage matches 1 run scoreboard players add replicate.PinkPikas replicate.timer.build2 1
execute if score replicate.PinkPikas replicate.stage matches 2 run scoreboard players add replicate.PinkPikas replicate.timer.build3 1
execute if score replicate.PinkPikas replicate.stage matches 3 run scoreboard players add replicate.PinkPikas replicate.timer.build4 1
execute if score replicate.PinkPikas replicate.stage matches 4 run scoreboard players add replicate.PinkPikas replicate.timer.build5 1
execute if score replicate.PinkPikas replicate.stage matches 5 run scoreboard players add replicate.PinkPikas replicate.timer.build6 1

# determine # of players completed with active build
scoreboard players set replicate.PinkPikas replicate.playersCompleted 0

execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60.. if blocks 37 105 -16 41 105 -12 37 104 -24 all run scoreboard players add replicate.PinkPikas replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60.. if blocks 47 105 -19 51 105 -15 37 104 -24 all run scoreboard players add replicate.PinkPikas replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60.. if blocks 47 105 -29 51 105 -25 37 104 -24 all run scoreboard players add replicate.PinkPikas replicate.playersCompleted 1
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60.. if blocks 37 105 -32 41 105 -28 37 104 -24 all run scoreboard players add replicate.PinkPikas replicate.playersCompleted 1

# give players items
execute if score replicate.PinkPikas replicate.timer.build1 matches 4.. if score replicate.PinkPikas replicate.stage matches 0 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round1
execute if score replicate.PinkPikas replicate.timer.build2 matches 4.. if score replicate.PinkPikas replicate.stage matches 1 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round2
execute if score replicate.PinkPikas replicate.timer.build3 matches 4.. if score replicate.PinkPikas replicate.stage matches 2 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round3
execute if score replicate.PinkPikas replicate.timer.build4 matches 4.. if score replicate.PinkPikas replicate.stage matches 3 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round4
execute if score replicate.PinkPikas replicate.timer.build5 matches 4.. if score replicate.PinkPikas replicate.stage matches 4 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round5
execute if score replicate.PinkPikas replicate.timer.build6 matches 4.. if score replicate.PinkPikas replicate.stage matches 5 as @a[team=PINK_PIKAS] run function stmc:games/trials/replicate/round_active/inventory/round6

# <===== BUILD 1 =====>

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 3 run clone 5 101 10 9 101 14 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 3 run clone 11 102 10 11 106 14 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build1 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build1 matches 60.. if score replicate.PinkPikas replicate.stage matches 0 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 1

# <===== BUILD 2 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PinkPikas replicate.timer.build2 matches 3 run clear @a[team=PINK_PIKAS]

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run clone -9 102 2 -5 102 6 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 3 run clone -11 102 2 -11 106 6 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build2 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build2 matches 60.. if score replicate.PinkPikas replicate.stage matches 1 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 2

# <===== BUILD 3 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PinkPikas replicate.timer.build3 matches 3 run clear @a[team=PINK_PIKAS]

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run clone -9 102 -6 -5 102 -2 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 3 run clone -11 102 -6 -11 106 -2 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build3 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build3 matches 60.. if score replicate.PinkPikas replicate.stage matches 2 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 3

# <===== BUILD 4 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PinkPikas replicate.timer.build4 matches 3 run clear @a[team=PINK_PIKAS]

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run clone 5 101 -14 9 101 -10 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 3 run clone 11 102 -14 11 106 -10 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build4 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build4 matches 60.. if score replicate.PinkPikas replicate.stage matches 3 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 4

# <===== BUILD 5 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PinkPikas replicate.timer.build5 matches 3 run clear @a[team=PINK_PIKAS]

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run clone 5 101 -6 9 101 -2 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 3 run clone 11 102 -6 11 106 -2 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build5 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build5 matches 60.. if score replicate.PinkPikas replicate.stage matches 4 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 5

# <===== BUILD 6 =====>

# re-add the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 37 106 -16 41 106 -12 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 47 106 -19 51 106 -15 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 47 106 -29 51 106 -25 tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 37 106 -32 41 106 -28 tinted_glass
# re-add chiseled tuff bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 37 105 -16 41 105 -12 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 37 104 -24 41 104 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 34 106 -24 34 110 -20 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 47 105 -19 51 105 -15 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 47 105 -29 51 105 -25 chiseled_tuff_bricks
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run fill 37 105 -32 41 105 -28 chiseled_tuff_bricks

# reset inventories
execute if score replicate.PinkPikas replicate.timer.build6 matches 3 run clear @a[team=PINK_PIKAS]

# clone the build
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run clone 5 101 2 9 101 6 37 104 -24
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 3 run clone 11 102 2 11 106 6 34 106 -24

# remove the tinted glass barrier
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 60 run fill 27 100 -39 59 114 -4 air replace tinted_glass
execute in stmc:trials/replicate if score replicate.PinkPikas replicate.timer.build6 matches 60 run fill 27 100 -39 59 114 -4 air replace chiseled_tuff_bricks

# move to next build
execute if score replicate.PinkPikas replicate.timer.build6 matches 60.. if score replicate.PinkPikas replicate.stage matches 5 if score replicate.PinkPikas replicate.playersCompleted matches 4 run scoreboard players set replicate.PinkPikas replicate.stage 6