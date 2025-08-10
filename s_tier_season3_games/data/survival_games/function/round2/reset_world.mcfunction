# reset survival games world

# set the world spawn
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 2 run fill -8 175 -8 8 175 8 tinted_glass replace air

# replace chests (-,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 2 run fill -150 100 -150 0 125 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 3 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 3 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 3 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 4 run fill -150 100 -150 0 125 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 5 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 5 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 5 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 6 run fill -150 100 -150 0 125 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 7 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 7 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 7 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 8 run fill -150 100 -150 0 125 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 9 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 9 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 9 run kill @e[type=item]

# replace chests (+,- quadrant)
# east facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 12 run fill 150 100 -150 0 125 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 13 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 13 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 13 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 14 run fill 150 100 -150 0 125 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 15 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 15 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 15 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 16 run fill 150 100 -150 0 125 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 17 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 17 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 17 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 18 run fill 150 100 -150 0 125 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 19 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 19 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 19 run kill @e[type=item]

# replace chests (-,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 22 run fill -150 100 150 0 125 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 23 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 23 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 23 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 24 run fill -150 100 150 0 125 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 25 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 25 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 25 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 26 run fill -150 100 150 0 125 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 27 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 27 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 27 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 28 run fill -150 100 150 0 125 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 29 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 29 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 29 run kill @e[type=item]

# replace chests (+,+ quadrant)
# east facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 32 run fill 150 100 150 0 125 0 air replace chest[facing=east] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 33 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 33 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=east]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 33 run kill @e[type=item]

# north facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 34 run fill 150 100 150 0 125 0 air replace chest[facing=north] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 35 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 35 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=north]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 35 run kill @e[type=item]

# west facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 36 run fill 150 100 150 0 125 0 air replace chest[facing=west] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 37 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 37 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=west]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 37 run kill @e[type=item]

# south facing
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 38 run fill 150 100 150 0 125 0 air replace chest[facing=south] destroy
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 39 as @e[type=item] at @s positioned as @s unless block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:normal_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 39 as @e[type=item] at @s positioned as @s if block ~ ~-1 ~ crying_obsidian run setblock ~ ~ ~ chest[facing=south]{LootTable:"survival_games:improved_chest"}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.delay1 matches 39 run kill @e[type=item]