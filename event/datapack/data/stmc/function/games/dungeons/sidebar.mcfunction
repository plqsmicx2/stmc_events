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

scoreboard objectives add dungeons.sidebar dummy
$scoreboard objectives modify dungeons.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar dungeons.sidebar

# <===== RANK TEAMS =====>

function stmc:games/solve/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset RED_RACCOONS dungeons.sidebar
scoreboard players reset ORANGE_OTTERS dungeons.sidebar
scoreboard players reset PINK_PIKAS dungeons.sidebar
scoreboard players reset YELLOW_YAKS dungeons.sidebar
scoreboard players reset GREEN_GOATS dungeons.sidebar
scoreboard players reset CYAN_COUGARS dungeons.sidebar
scoreboard players reset PURPLE_PENGUINS dungeons.sidebar
scoreboard players reset BLUE_BEARS dungeons.sidebar

# add teams' room completion #
# they'll be automatically ranked by the scoreboard itself
scoreboard players operation RED_RACCOONS dungeons.sidebar = RED_RACCOONS dungeons.roomdisplay
$scoreboard players display name RED_RACCOONS dungeons.sidebar {"text": "  $(redName)", "color": "red"}
scoreboard players operation ORANGE_OTTERS dungeons.sidebar = ORANGE_OTTERS dungeons.roomdisplay
$scoreboard players display name ORANGE_OTTERS dungeons.sidebar {"text": "  $(orangeName)", "color": "gold"}
scoreboard players operation PINK_PIKAS dungeons.sidebar = PINK_PIKAS dungeons.roomdisplay
$scoreboard players display name PINK_PIKAS dungeons.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
scoreboard players operation YELLOW_YAKS dungeons.sidebar = YELLOW_YAKS dungeons.roomdisplay
$scoreboard players display name YELLOW_YAKS dungeons.sidebar {"text": "  $(yellowName)", "color": "yellow"}
scoreboard players operation GREEN_GOATS dungeons.sidebar = GREEN_GOATS dungeons.roomdisplay
$scoreboard players display name GREEN_GOATS dungeons.sidebar {"text": "  $(greenName)", "color": "dark_green"}
scoreboard players operation CYAN_COUGARS dungeons.sidebar = CYAN_COUGARS dungeons.roomdisplay
$scoreboard players display name CYAN_COUGARS dungeons.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
scoreboard players operation PURPLE_PENGUINS dungeons.sidebar = PURPLE_PENGUINS dungeons.roomdisplay
$scoreboard players display name PURPLE_PENGUINS dungeons.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
scoreboard players operation BLUE_BEARS dungeons.sidebar = BLUE_BEARS dungeons.roomdisplay
$scoreboard players display name BLUE_BEARS dungeons.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS RED_RACCOONS
team join ORANGE_OTTERS ORANGE_OTTERS
team join PINK_PIKAS PINK_PIKAS
team join YELLOW_YAKS YELLOW_YAKS
team join GREEN_GOATS GREEN_GOATS
team join CYAN_COUGARS CYAN_COUGARS
team join PURPLE_PENGUINS PURPLE_PENGUINS
team join BLUE_BEARS BLUE_BEARS

# <==== HEADER INFO =====>

# rooms completed header
# no need to override display since it can be done in one line
scoreboard players set Roomscompleted dungeons.sidebar 10
scoreboard players display name Roomscompleted dungeons.sidebar {"text": "Rooms completed:", "color": "yellow", "bold": true}

# blank line
scoreboard players set §a dungeons.sidebar 11

# current game
scoreboard players set display.name dungeons.sidebar 12
scoreboard players display name display.name dungeons.sidebar {"text": "Dungeons", "color": "dark_red", "bold": true}

# blank line #2
scoreboard players set § dungeons.sidebar 13

# current game
scoreboard players set .currentGame dungeons.sidebar 14
$scoreboard players display name .currentGame dungeons.sidebar {text:"[ Game $(currentGame)/8 ]",color:gray}