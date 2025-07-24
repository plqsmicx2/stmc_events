# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <gold>Disco<gold>
# <red>Rounds Played: ##<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add replicate.sidebar dummy {"text": "  STMC Invitational Reloaded  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar replicate.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset replicate.RedRaccoons replicate.sidebar
scoreboard players reset replicate.OrangeOtters replicate.sidebar
scoreboard players reset replicate.PinkPikas replicate.sidebar
scoreboard players reset replicate.GreenGoats replicate.sidebar
scoreboard players reset replicate.CyanCougars replicate.sidebar
scoreboard players reset replicate.PurplePenguins replicate.sidebar

# add teams' build completion #
# they'll be automatically ranked by the scoreboard itself
scoreboard players operation replicate.RedRaccoons replicate.sidebar = replicate.RedRaccoons replicate.stage
scoreboard players display name replicate.RedRaccoons replicate.sidebar {"text": "  Red Raccoons", "color": "red"}
scoreboard players operation replicate.OrangeOtters replicate.sidebar = replicate.OrangeOtters replicate.stage
scoreboard players display name replicate.OrangeOtters replicate.sidebar {"text": "  Orange Otters", "color": "gold"}
scoreboard players operation replicate.PinkPikas replicate.sidebar = replicate.PinkPikas replicate.stage
scoreboard players display name replicate.PinkPikas replicate.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
scoreboard players operation replicate.GreenGoats replicate.sidebar = replicate.GreenGoats replicate.stage
scoreboard players display name replicate.GreenGoats replicate.sidebar {"text": "  Green Goats", "color": "dark_green"}
scoreboard players operation replicate.CyanCougars replicate.sidebar = replicate.CyanCougars replicate.stage
scoreboard players display name replicate.CyanCougars replicate.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
scoreboard players operation replicate.PurplePenguins replicate.sidebar = replicate.PurplePenguins replicate.stage
scoreboard players display name replicate.PurplePenguins replicate.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS replicate.RedRaccoons
team join ORANGE_OTTERS replicate.OrangeOtters
team join PINK_PIKAS replicate.PinkPikas
team join GREEN_GOATS replicate.GreenGoats
team join CYAN_COUGARS replicate.CyanCougars
team join PURPLE_PENGUINS replicate.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lCompleted: replicate.sidebar 11
scoreboard players reset §e§lPoints: replicate.sidebar

# blank line
scoreboard players set §b replicate.sidebar 12

# current game
scoreboard players set Replicate replicate.sidebar 13
scoreboard players display name Replicate replicate.sidebar {"text": "Replicate", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § replicate.sidebar 14