# Announces the overall placement of each team

tellraw @a [""]
tellraw @a ["",{"text":"Overall Rankings:","color":aqua,bold:true}]
tellraw @a [""]

# 1st place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 1 run tellraw @a ["",{"text": "#1: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 2nd place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 2 run tellraw @a ["",{"text": "#2: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 3rd place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 3 run tellraw @a ["",{"text": "#3: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 4th place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 4 run tellraw @a ["",{"text": "#4: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 5th place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 5 run tellraw @a ["",{"text": "#5: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 6th place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 6 run tellraw @a ["",{"text": "#6: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 7th place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 7 run tellraw @a ["",{"text": "#7: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]

# 8th place
$execute if score replicate.RedRaccoons replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(redName)", "color": "dark_red"}]
$execute if score replicate.OrangeOtters replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(orangeName)", "color": "gold"}]
$execute if score replicate.PinkPikas replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(pinkName)", "color": "light_purple"}]
$execute if score replicate.YellowYaks replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(yellowName)", "color": "yellow"}]
$execute if score replicate.GreenGoats replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(greenName)", "color": "dark_green"}]
$execute if score replicate.CyanCougars replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(cyanName)", "color": "dark_aqua"}]
$execute if score replicate.PurplePenguins replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(purpleName)", "color": "dark_purple"}]
$execute if score replicate.BlueBears replicate.points.rank.overall matches 8 run tellraw @a ["",{"text": "#8: ", "color": "aqua"}, {"text": " $(blueName)", "color": "blue"}]