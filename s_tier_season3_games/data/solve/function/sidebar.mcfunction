# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <yellow>Solve<yellow>
# 
# <yellow>Rooms Completed:<yellow>
# <team color><Team>: <Rooms><team color>
# <team color><Team>: <Rooms><team color>
# <team color><Team>: <Rooms><team color>

scoreboard objectives add solve.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar solve.sidebar

# <===== RANK TEAMS =====>

function solve:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset solve.RedRaccoons solve.sidebar
scoreboard players reset solve.OrangeOtters solve.sidebar
scoreboard players reset solve.PinkPikas solve.sidebar
scoreboard players reset solve.GreenGoats solve.sidebar
scoreboard players reset solve.CyanCougars solve.sidebar
scoreboard players reset solve.PurplePenguins solve.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score solve.RedRaccoons solve.points.team.rank matches 1..3 run scoreboard players operation solve.RedRaccoons solve.sidebar = solve.RedRaccoons solve.stats.roomsCompleted
execute if score solve.RedRaccoons solve.points.team.rank matches 1..3 run scoreboard players display name solve.RedRaccoons solve.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score solve.OrangeOtters solve.points.team.rank matches 1..3 run scoreboard players operation solve.OrangeOtters solve.sidebar = solve.OrangeOtters solve.stats.roomsCompleted
execute if score solve.OrangeOtters solve.points.team.rank matches 1..3 run scoreboard players display name solve.OrangeOtters solve.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score solve.PinkPikas solve.points.team.rank matches 1..3 run scoreboard players operation solve.PinkPikas solve.sidebar = solve.PinkPikas solve.stats.roomsCompleted
execute if score solve.PinkPikas solve.points.team.rank matches 1..3 run scoreboard players display name solve.PinkPikas solve.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score solve.GreenGoats solve.points.team.rank matches 1..3 run scoreboard players operation solve.GreenGoats solve.sidebar = solve.GreenGoats solve.stats.roomsCompleted
execute if score solve.GreenGoats solve.points.team.rank matches 1..3 run scoreboard players display name solve.GreenGoats solve.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score solve.CyanCougars solve.points.team.rank matches 1..3 run scoreboard players operation solve.CyanCougars solve.sidebar = solve.CyanCougars solve.stats.roomsCompleted
execute if score solve.CyanCougars solve.points.team.rank matches 1..3 run scoreboard players display name solve.CyanCougars solve.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score solve.PurplePenguins solve.points.team.rank matches 1..3 run scoreboard players operation solve.PurplePenguins solve.sidebar = solve.PurplePenguins solve.stats.roomsCompleted
execute if score solve.PurplePenguins solve.points.team.rank matches 1..3 run scoreboard players display name solve.PurplePenguins solve.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS solve.RedRaccoons
team join ORANGE_OTTERS solve.OrangeOtters
team join PINK_PIKAS solve.PinkPikas
team join GREEN_GOATS solve.GreenGoats
team join CYAN_COUGARS solve.CyanCougars
team join PURPLE_PENGUINS solve.PurplePenguins

# <==== HEADER INFO =====>

# rooms completed header
# no need to override display since it can be done in one line
scoreboard players set RoomsCompleted solve.sidebar 10
scoreboard players display name RoomsCompleted solve.sidebar {"text": "Rooms Completed:", "color": "yellow", "bold": true}

# blank line
scoreboard players set §a solve.sidebar 11

# current game
scoreboard players set Solve solve.sidebar 12
scoreboard players display name Solve solve.sidebar {"text": "Solve", "color": "yellow", "bold": true}

# blank line #2
scoreboard players set § solve.sidebar 13