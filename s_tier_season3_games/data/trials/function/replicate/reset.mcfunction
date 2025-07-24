# reset function for Replicate

# handles all of point awards & some important resets

# calculate rankings
function trials:replicate/calculate_rankings

# <===== POINTS =====>

# overall placement
# 1st place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.PinkPikas replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.GreenGoats replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.CyanCougars replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 100
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 2nd place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.PinkPikas replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.GreenGoats replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.CyanCougars replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 75
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 3rd place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.PinkPikas replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.GreenGoats replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.CyanCougars replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 50
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 4th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.PinkPikas replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.GreenGoats replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.CyanCougars replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 35
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 5th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.PinkPikas replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.GreenGoats replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.CyanCougars replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 20
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# 6th place
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 6 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 6 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.overall matches 6 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.overall matches 6 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.overall matches 6 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 6 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

# by build placement
tellraw @a " "
tellraw @a ["",{"text": "Build Placements", "color": "aqua"}]

# build 1
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 1 run tellraw @a ["",{"text": "Build #1: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build1 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build1 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build1 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build1 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build1 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build1 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 2
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 1 run tellraw @a ["",{"text": "Build #2: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build2 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build2 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build2 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build2 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build2 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build2 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 3
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 1 run tellraw @a ["",{"text": "Build #3: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build3 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build3 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build3 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build3 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build3 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build3 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 4
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 1 run tellraw @a ["",{"text": "Build #4: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build4 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build4 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build4 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build4 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build4 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 5
execute if score replicate.RedRaccoons replicate.points.rank.build4 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 1 run tellraw @a ["",{"text": "Build #5: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build5 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build5 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build5 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build5 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build5 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build5 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# build 6
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 1 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Red Raccoons", "color": "dark_red"}]
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 1 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Orange Otters", "color": "gold"}]
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 1 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Pink Pikas", "color": "light_purple"}]
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 1 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Green Goats", "color": "dark_green"}]
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 1 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Cyan Cougars", "color": "dark_aqua"}]
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 1 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 10
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 1 run tellraw @a ["",{"text": "Build #6: ", "color": "aqua"}, {"text": " Purple Penguins", "color": "dark_purple"}]

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 2 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 2 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 2 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 2 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 2 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 7
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 2 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 7

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 3 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 3 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 3 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 3 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 3 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 5
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 3 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 5

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 4 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 4 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 4 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 4 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 4 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 3
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 4 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 3

execute if score replicate.RedRaccoons replicate.points.rank.build6 matches 5 as @a[team=RED_RACCOONS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.OrangeOtters replicate.points.rank.build6 matches 5 as @a[team=ORANGE_OTTERS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PinkPikas replicate.points.rank.build6 matches 5 as @a[team=PINK_PIKAS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.GreenGoats replicate.points.rank.build6 matches 5 as @a[team=GREEN_GOATS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.CyanCougars replicate.points.rank.build6 matches 5 as @a[team=CYAN_COUGARS] run scoreboard players add @s replicate.points.indiv 2
execute if score replicate.PurplePenguins replicate.points.rank.build6 matches 5 as @a[team=PURPLE_PENGUINS] run scoreboard players add @s replicate.points.indiv 2

# update team scores
scoreboard players set replicate.RedRaccoons replicate.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation replicate.RedRaccoons replicate.points.team += @s replicate.points.indiv
scoreboard players set replicate.OrangeOtters replicate.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation replicate.OrangeOtters replicate.points.team += @s replicate.points.indiv
scoreboard players set replicate.PinkPikas replicate.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation replicate.PinkPikas replicate.points.team += @s replicate.points.indiv
scoreboard players set replicate.GreenGoats replicate.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation replicate.GreenGoats replicate.points.team += @s replicate.points.indiv
scoreboard players set replicate.CyanCougars replicate.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation replicate.CyanCougars replicate.points.team += @s replicate.points.indiv
scoreboard players set replicate.PurplePenguins replicate.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation replicate.PurplePenguins replicate.points.team += @s replicate.points.indiv

# reset effects
effect clear @a

# clear inventories
clear @a