# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <yellow>Solve<yellow>
# 
# <yellow>Rooms stats.roomCompleted:<yellow>
# <team color><Team>: <Rooms><team color>
# <team color><Team>: <Rooms><team color>
# <team color><Team>: <Rooms><team color>

scoreboard objectives add solve.sidebar dummy
$scoreboard objectives modify solve.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar solve.sidebar

# <===== RANK TEAMS =====>

function stmc:games/solve/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset solve.RedRaccoons solve.sidebar
scoreboard players reset solve.OrangeOtters solve.sidebar
scoreboard players reset solve.PinkPikas solve.sidebar
scoreboard players reset solve.YellowYaks solve.sidebar
scoreboard players reset solve.GreenGoats solve.sidebar
scoreboard players reset solve.CyanCougars solve.sidebar
scoreboard players reset solve.PurplePenguins solve.sidebar
scoreboard players reset solve.BlueBears solve.sidebar

# add teams' room completion #
# they'll be automatically ranked by the scoreboard itself
scoreboard players operation solve.RedRaccoons solve.sidebar = solve.RedRaccoons solve.stats.roomsCompleted
$scoreboard players display name solve.RedRaccoons solve.sidebar {"text": "  $(redName)", "color": "red"}
scoreboard players operation solve.OrangeOtters solve.sidebar = solve.OrangeOtters solve.stats.roomsCompleted
$scoreboard players display name solve.OrangeOtters solve.sidebar {"text": "  $(orangeName)", "color": "gold"}
scoreboard players operation solve.PinkPikas solve.sidebar = solve.PinkPikas solve.stats.roomsCompleted
$scoreboard players display name solve.PinkPikas solve.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
scoreboard players operation solve.YellowYaks solve.sidebar = solve.YellowYaks solve.stats.roomsCompleted
$scoreboard players display name solve.YellowYaks solve.sidebar {"text": "  $(yellowName)", "color": "yellow"}
scoreboard players operation solve.GreenGoats solve.sidebar = solve.GreenGoats solve.stats.roomsCompleted
$scoreboard players display name solve.GreenGoats solve.sidebar {"text": "  $(greenName)", "color": "dark_green"}
scoreboard players operation solve.CyanCougars solve.sidebar = solve.CyanCougars solve.stats.roomsCompleted
$scoreboard players display name solve.CyanCougars solve.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
scoreboard players operation solve.PurplePenguins solve.sidebar = solve.PurplePenguins solve.stats.roomsCompleted
$scoreboard players display name solve.PurplePenguins solve.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
scoreboard players operation solve.BlueBears solve.sidebar = solve.BlueBears solve.stats.roomsCompleted
$scoreboard players display name solve.BlueBears solve.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS solve.RedRaccoons
team join ORANGE_OTTERS solve.OrangeOtters
team join PINK_PIKAS solve.PinkPikas
team join YELLOW_YAKS solve.YellowYaks
team join GREEN_GOATS solve.GreenGoats
team join CYAN_COUGARS solve.CyanCougars
team join PURPLE_PENGUINS solve.PurplePenguins
team join BLUE_BEARS solve.BlueBears

# <==== HEADER INFO =====>

# rooms stats.roomCompleted header
# no need to override display since it can be done in one line
scoreboard players set Roomscompleted solve.sidebar 10
scoreboard players display name Roomscompleted solve.sidebar {"text": "Rooms completed:", "color": "yellow", "bold": true}

# blank line
scoreboard players set §a solve.sidebar 11

# current game
scoreboard players set Solve solve.sidebar 12
scoreboard players display name Solve solve.sidebar {"text": "Solve", "color": "yellow", "bold": true}

# blank line #2
scoreboard players set § solve.sidebar 13