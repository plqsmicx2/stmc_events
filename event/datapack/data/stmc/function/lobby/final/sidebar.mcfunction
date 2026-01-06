# lobby sidebar

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add lobby.sidebar dummy
$scoreboard objectives modify lobby.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar lobby.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset team.RedRaccoons lobby.sidebar
scoreboard players reset team.OrangeOtters lobby.sidebar
scoreboard players reset team.PinkPikas lobby.sidebar
scoreboard players reset team.YellowYaks lobby.sidebar
scoreboard players reset team.GreenGoats lobby.sidebar
scoreboard players reset team.CyanCougars lobby.sidebar
scoreboard players reset team.PurplePenguins lobby.sidebar
scoreboard players reset team.BlueBears lobby.sidebar

# they'll be automatically ranked by the scoreboard itself
scoreboard players set team.RedRaccoons lobby.sidebar 1
scoreboard players display name team.RedRaccoons lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.OrangeOtters lobby.sidebar 1
scoreboard players display name team.OrangeOtters lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.PinkPikas lobby.sidebar 1
scoreboard players display name team.PinkPikas lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.YellowYaks lobby.sidebar 1
scoreboard players display name team.YellowYaks lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.GreenGoats lobby.sidebar 1
scoreboard players display name team.GreenGoats lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.CyanCougars lobby.sidebar 1
scoreboard players display name team.CyanCougars lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.PurplePenguins lobby.sidebar 1
scoreboard players display name team.PurplePenguins lobby.sidebar {"text": "????", "color": "dark_gray"}
scoreboard players set team.BlueBears lobby.sidebar 1
scoreboard players display name team.BlueBears lobby.sidebar {"text": "????", "color": "dark_gray"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS team.RedRaccoons
team join ORANGE_OTTERS team.OrangeOtters
team join PINK_PIKAS team.PinkPikas
team join YELLOW_YAKS team.YellowYaks
team join GREEN_GOATS team.GreenGoats
team join CYAN_COUGARS team.CyanCougars
team join PURPLE_PENGUINS team.PurplePenguins
team join BLUE_BEARS team.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: lobby.sidebar 7000

# blank line
scoreboard players set §a lobby.sidebar 7001

scoreboard players set lobby.header lobby.sidebar 7002
scoreboard players display name lobby.header lobby.sidebar {text:"Finale!",color:white,bold:true}

# blank line
scoreboard players set §b lobby.sidebar 7003