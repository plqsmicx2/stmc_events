# reset survival games world

# set the world spawn
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 2 run fill -8 175 -8 8 175 8 tinted_glass replace air

# REMOVE PLACED BLOCKS

# (-,- quadrant)
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 10 run fill -150 75 -150 0 175 0 air replace gray_concrete

# (+,- quadrant)
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 20 run fill 150 75 -150 0 175 0 air replace gray_concrete

# (-,+ quadrant)
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 30 run fill -150 75 150 0 175 0 air replace gray_concrete

# (+,+ quadrant)
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 40 run fill 150 75 150 0 175 0 air replace gray_concrete

# REPLACE NORMAL CHESTS

# replace chests (-,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 2 run fill -150 75 -150 0 175 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 3 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 3 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 4 run fill -150 75 -150 0 175 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 5 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 5 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 6 run fill -150 75 -150 0 175 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 7 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 7 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 8 run fill -150 75 -150 0 175 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 9 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 9 run kill @e[type=item]

# replace chests (+,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 12 run fill 150 75 -150 0 175 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 13 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 13 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 14 run fill 150 75 -150 0 175 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 15 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 15 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 16 run fill 150 75 -150 0 175 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 17 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 17 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 18 run fill 150 75 -150 0 175 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 19 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 19 run kill @e[type=item]

# replace chests (-,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 22 run fill -150 75 150 0 175 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 23 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 23 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 24 run fill -150 75 150 0 175 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 25 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 25 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 26 run fill -150 75 150 0 175 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 27 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 27 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 28 run fill -150 75 150 0 175 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 29 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 29 run kill @e[type=item]

# replace chests (+,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 32 run fill 150 75 150 0 175 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 33 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 33 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 34 run fill 150 75 150 0 175 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 35 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 35 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 36 run fill 150 75 150 0 175 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 37 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 37 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 38 run fill 150 75 150 0 175 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 39 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:manor_normal_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 39 run kill @e[type=item]

# REPLACE COPPER CHESTS

# replace chests (-,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 42 run fill -150 75 -150 0 175 0 air replace waxed_copper_chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 43 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=east]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 43 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 44 run fill -150 75 -150 0 175 0 air replace waxed_copper_chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 45 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=north]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 45 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 46 run fill -150 75 -150 0 175 0 air replace waxed_copper_chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 47 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=west]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 47 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 48 run fill -150 75 -150 0 175 0 air replace waxed_copper_chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 49 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=south]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 49 run kill @e[type=item]

# replace waxed_copper_chests (+,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 52 run fill 150 75 -150 0 175 0 air replace waxed_copper_chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 53 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=east]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 53 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 54 run fill 150 75 -150 0 175 0 air replace waxed_copper_chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 55 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=north]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 55 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 56 run fill 150 75 -150 0 175 0 air replace waxed_copper_chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 57 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=west]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 57 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 58 run fill 150 75 -150 0 175 0 air replace waxed_copper_chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 59 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=south]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 59 run kill @e[type=item]

# replace waxed_copper_chests (-,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 62 run fill -150 75 150 0 175 0 air replace waxed_copper_chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 63 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=east]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 63 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 64 run fill -150 75 150 0 175 0 air replace waxed_copper_chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 65 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=north]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 65 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 66 run fill -150 75 150 0 175 0 air replace waxed_copper_chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 67 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=west]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 67 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 68 run fill -150 75 150 0 175 0 air replace waxed_copper_chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 69 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=south]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 69 run kill @e[type=item]

# replace waxed_copper_chests (+,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 72 run fill 150 75 150 0 175 0 air replace waxed_copper_chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 73 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=east]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 73 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 74 run fill 150 75 150 0 175 0 air replace waxed_copper_chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 75 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=north]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 75 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 76 run fill 150 75 150 0 175 0 air replace waxed_copper_chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 77 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=west]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 77 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 78 run fill 150 75 150 0 175 0 air replace waxed_copper_chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 79 as @e[type=item] at @s positioned as @s run setblock ~ ~ ~ waxed_copper_chest[facing=south]{LootTable:"survival_games:manor_copper_chest"}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.delay1 matches 79 run kill @e[type=item]