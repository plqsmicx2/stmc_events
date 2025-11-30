# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <pink>Blitz<pink>
# 
# <yellow>Cores:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add blitz.sidebar dummy {"text": "  STMC Invitational II  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar blitz.sidebar

# <===== RANK TEAMS =====>

function blitz:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset blitz.RedRaccoons blitz.sidebar
scoreboard players reset blitz.OrangeOtters blitz.sidebar
scoreboard players reset blitz.PinkPikas blitz.sidebar
scoreboard players reset blitz.YellowYaks blitz.sidebar
scoreboard players reset blitz.GreenGoats blitz.sidebar
scoreboard players reset blitz.CyanCougars blitz.sidebar
scoreboard players reset blitz.PurplePenguins blitz.sidebar
scoreboard players reset blitz.BlueBears blitz.sidebar

# track teams' core status:

#scoreboard players set blitz.RedRaccoons blitz.sidebar 1
#execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.RedRaccoons blitz.sidebar {"text": "✔ Red Raccoons", "color": "red"}
#execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.RedRaccoons blitz.sidebar {"text": "✘ Red Raccoons", "color": "red"}
scoreboard players set blitz.OrangeOtters blitz.sidebar 1
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.OrangeOtters blitz.sidebar {"text": "✔ Orange Otters", "color": "gold"}
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.OrangeOtters blitz.sidebar {"text": "✘ Orange Otters", "color": "gold"}
#scoreboard players set blitz.PinkPikas blitz.sidebar 1
#execute if score blitz.PinkPikas blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.PinkPikas blitz.sidebar {"text": "✔ Pink Pikas", "color": "light_purple"}
#execute if score blitz.PinkPikas blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.PinkPikas blitz.sidebar {"text": "✘ Pink Pikas", "color": "light_purple"}
scoreboard players set blitz.YellowYaks blitz.sidebar 1
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.YellowYaks blitz.sidebar {"text": "✔ Yellow Yaks", "color": "yellow"}
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.YellowYaks blitz.sidebar {"text": "✘ Yellow Yaks", "color": "yellow"}
scoreboard players set blitz.GreenGoats blitz.sidebar 1
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.GreenGoats blitz.sidebar {"text": "✔ Green Goats", "color": "green"}
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.GreenGoats blitz.sidebar {"text": "✘ Green Goats", "color": "green"}
scoreboard players set blitz.CyanCougars blitz.sidebar 1
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.CyanCougars blitz.sidebar {"text": "✔ Cyan Cougars", "color": "dark_aqua"}
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.CyanCougars blitz.sidebar {"text": "✘ Cyan Cougars", "color": "dark_aqua"}
scoreboard players set blitz.PurplePenguins blitz.sidebar 1
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.PurplePenguins blitz.sidebar {"text": "✔ Purple Penguins", "color": "dark_purple"}
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.PurplePenguins blitz.sidebar {"text": "✘ Purple Penguins", "color": "dark_purple"}
scoreboard players set blitz.BlueBears blitz.sidebar 1
execute if score blitz.BlueBears blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.BlueBears blitz.sidebar {"text": "✔ Blue Bears", "color": "blue"}
execute if score blitz.BlueBears blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.BlueBears blitz.sidebar {"text": "✘ Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS blitz.RedRaccoons
team join ORANGE_OTTERS blitz.OrangeOtters
team join PINK_PIKAS blitz.PinkPikas
team join YELLOW_YAKS blitz.YellowYaks
team join GREEN_GOATS blitz.GreenGoats
team join CYAN_COUGARS blitz.CyanCougars
team join PURPLE_PENGUINS blitz.PurplePenguins
team join BLUE_BEARS blitz.BlueBears

# <==== HEADER INFO =====>

# cores header
scoreboard players set §e§lCores: blitz.sidebar 10

# blank line
scoreboard players set §a blitz.sidebar 11

# timer
scoreboard players set blitz.timer blitz.sidebar 12
execute as @a if score blitz.handler blitz.timer.game.secsRemaining matches 10.. run scoreboard players display name blitz.timer blitz.sidebar ["",{"text": "Elapsed: ", "color": "light_purple", "bold": true},{"score": {"name": "blitz.handler", "objective": "blitz.timer.game.minsRemaining"},"color":"light_purple"}, {"text": ":","color":"light_purple"}, {"score": {"name": "blitz.handler", "objective": "blitz.timer.game.secsRemaining"},"color":"light_purple"}]
execute as @a if score blitz.handler blitz.timer.game.secsRemaining matches 0..9 run scoreboard players display name blitz.timer blitz.sidebar ["",{"text": "Elapsed: ", "color": "light_purple", "bold": true},{"score": {"name": "blitz.handler", "objective": "blitz.timer.game.minsRemaining"},"color":"light_purple"}, {"text": ":0","color":"light_purple"}, {"score": {"name": "blitz.handler", "objective": "blitz.timer.game.secsRemaining"},"color":"light_purple"}]

# current game
scoreboard players set blitz.head blitz.sidebar 13
scoreboard players display name blitz.head blitz.sidebar {"text": "Blitz", "color": "light_purple", "bold": true}

# blank line #2
scoreboard players set § blitz.sidebar 14