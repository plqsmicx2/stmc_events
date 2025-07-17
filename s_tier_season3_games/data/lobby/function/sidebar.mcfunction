# lobby sidebar

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add lobby.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar lobby.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset team.RedRaccoons lobby.sidebar
scoreboard players reset team.OrangeOtters lobby.sidebar
scoreboard players reset team.PinkPikas lobby.sidebar
scoreboard players reset team.GreenGoats lobby.sidebar
scoreboard players reset team.CyanCougars lobby.sidebar
scoreboard players reset team.PurplePenguins lobby.sidebar

# they'll be automatically ranked by the scoreboard itself
scoreboard players operation team.RedRaccoons lobby.sidebar = stats.RedRaccoons stats.points.team
scoreboard players display name team.RedRaccoons lobby.sidebar {"text": "  Red Raccoons", "color": "red"}
scoreboard players operation team.OrangeOtters lobby.sidebar = stats.OrangeOtters stats.points.team
scoreboard players display name team.OrangeOtters lobby.sidebar {"text": "  Orange Otters", "color": "gold"}
scoreboard players operation team.PinkPikas lobby.sidebar = stats.PinkPikas stats.points.team
scoreboard players display name team.PinkPikas lobby.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
scoreboard players operation team.GreenGoats lobby.sidebar = stats.GreenGoats stats.points.team
scoreboard players display name team.GreenGoats lobby.sidebar {"text": "  Green Goats", "color": "dark_green"}
scoreboard players operation team.CyanCougars lobby.sidebar = stats.CyanCougars stats.points.team
scoreboard players display name team.CyanCougars lobby.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
scoreboard players operation team.PurplePenguins lobby.sidebar = stats.PurplePenguins stats.points.team
scoreboard players display name team.PurplePenguins lobby.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS team.RedRaccoons
team join ORANGE_OTTERS team.OrangeOtters
team join PINK_PIKAS team.PinkPikas
team join GREEN_GOATS team.GreenGoats
team join CYAN_COUGARS team.CyanCougars
team join PURPLE_PENGUINS team.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: lobby.sidebar 20000

# blank line
scoreboard players set §a lobby.sidebar 20001