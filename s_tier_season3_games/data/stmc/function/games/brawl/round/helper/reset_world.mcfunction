# reset survival games world
# function is run in stmc:brawl/main

# set the world spawn
execute if score brawl.handler brawl.timer.round matches 2 run fill -8 170 -8 8 170 8 tinted_glass replace air

# REMOVE PLACED BLOCKS

# (-,- quadrant)
execute if score brawl.handler brawl.timer.round matches 4 run fill -150 75 -150 0 175 0 air replace gray_concrete

# (+,- quadrant)
execute if score brawl.handler brawl.timer.round matches 8 run fill 150 75 -150 0 175 0 air replace gray_concrete

# (-,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 12 run fill -150 75 150 0 175 0 air replace gray_concrete

# (+,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 16 run fill 150 75 150 0 175 0 air replace gray_concrete

# REPLACE NORMAL CHESTS

# replace chests (-,- quadrant)
execute if score brawl.handler brawl.timer.round matches 18 run fill -150 75 -150 0 175 0 chest[facing=east]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 19 run fill -150 75 -150 0 175 0 chest[facing=west]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 20 run fill -150 75 -150 0 175 0 chest[facing=north]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 21 run fill -150 75 -150 0 175 0 chest[facing=south]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=south]

# replace chests (+,- quadrant)
execute if score brawl.handler brawl.timer.round matches 22 run fill 150 75 -150 0 175 0 chest[facing=east]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 23 run fill 150 75 -150 0 175 0 chest[facing=west]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 24 run fill 150 75 -150 0 175 0 chest[facing=north]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 25 run fill 150 75 -150 0 175 0 chest[facing=south]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=south]

# replace chests (-,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 26 run fill -150 75 150 0 175 0 chest[facing=east]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 27 run fill -150 75 150 0 175 0 chest[facing=west]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 28 run fill -150 75 150 0 175 0 chest[facing=north]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 29 run fill -150 75 150 0 175 0 chest[facing=south]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=south]

# replace chests (+,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 30 run fill 150 75 150 0 175 0 chest[facing=east]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 31 run fill 150 75 150 0 175 0 chest[facing=west]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 32 run fill 150 75 150 0 175 0 chest[facing=north]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 33 run fill 150 75 150 0 175 0 chest[facing=south]{LootTable:"stmc:brawl/manor/normal_chest"} replace chest[facing=south]

# REPLACE COPPER CHESTS

# replace chests (-,- quadrant)
execute if score brawl.handler brawl.timer.round matches 34 run fill -150 75 -150 0 175 0 waxed_copper_chest[facing=east]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 35 run fill -150 75 -150 0 175 0 waxed_copper_chest[facing=west]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 36 run fill -150 75 -150 0 175 0 waxed_copper_chest[facing=north]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 37 run fill -150 75 -150 0 175 0 waxed_copper_chest[facing=south]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=south]

# replace chests (+,- quadrant)
execute if score brawl.handler brawl.timer.round matches 38 run fill 150 75 -150 0 175 0 waxed_copper_chest[facing=east]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 39 run fill 150 75 -150 0 175 0 waxed_copper_chest[facing=west]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 40 run fill 150 75 -150 0 175 0 waxed_copper_chest[facing=north]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 41 run fill 150 75 -150 0 175 0 waxed_copper_chest[facing=south]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=south]

# replace chests (-,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 42 run fill -150 75 150 0 175 0 waxed_copper_chest[facing=east]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 43 run fill -150 75 150 0 175 0 waxed_copper_chest[facing=west]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 44 run fill -150 75 150 0 175 0 waxed_copper_chest[facing=north]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 45 run fill -150 75 150 0 175 0 waxed_copper_chest[facing=south]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=south]

# replace chests (+,+ quadrant)
execute if score brawl.handler brawl.timer.round matches 46 run fill 150 75 150 0 175 0 waxed_copper_chest[facing=east]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=east]
execute if score brawl.handler brawl.timer.round matches 47 run fill 150 75 150 0 175 0 waxed_copper_chest[facing=west]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=west]
execute if score brawl.handler brawl.timer.round matches 48 run fill 150 75 150 0 175 0 waxed_copper_chest[facing=north]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=north]
execute if score brawl.handler brawl.timer.round matches 49 run fill 150 75 150 0 175 0 waxed_copper_chest[facing=south]{LootTable:"stmc:brawl/manor/copper_chest"} replace waxed_copper_chest[facing=south]
