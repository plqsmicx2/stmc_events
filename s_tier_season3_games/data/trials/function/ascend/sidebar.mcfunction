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

scoreboard objectives add ascend.sidebar dummy {"text": "  STMC Invitational II  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar ascend.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset ascend.RedRaccoons ascend.sidebar
scoreboard players reset ascend.OrangeOtters ascend.sidebar
scoreboard players reset ascend.PinkPikas ascend.sidebar
scoreboard players reset ascend.YellowYaks ascend.sidebar
scoreboard players reset ascend.GreenGoats ascend.sidebar
scoreboard players reset ascend.CyanCougars ascend.sidebar
scoreboard players reset ascend.PurplePenguins ascend.sidebar
scoreboard players reset ascend.BlueBears ascend.sidebar

# add teams' build completion #
# they'll be automatically ranked by the scoreboard itself
#scoreboard players operation ascend.RedRaccoons ascend.sidebar = ascend.RedRaccoons ascend.completed
#scoreboard players display name ascend.RedRaccoons ascend.sidebar {"text": "  Red Raccoons", "color": "red"}
scoreboard players operation ascend.OrangeOtters ascend.sidebar = ascend.OrangeOtters ascend.completed
scoreboard players display name ascend.OrangeOtters ascend.sidebar {"text": "  Orange Otters", "color": "gold"}
#scoreboard players operation ascend.PinkPikas ascend.sidebar = ascend.PinkPikas ascend.completed
#scoreboard players display name ascend.PinkPikas ascend.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
scoreboard players operation ascend.YellowYaks ascend.sidebar = ascend.YellowYaks ascend.completed
scoreboard players display name ascend.YellowYaks ascend.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
scoreboard players operation ascend.GreenGoats ascend.sidebar = ascend.GreenGoats ascend.completed
scoreboard players display name ascend.GreenGoats ascend.sidebar {"text": "  Green Goats", "color": "dark_green"}
scoreboard players operation ascend.CyanCougars ascend.sidebar = ascend.CyanCougars ascend.completed
scoreboard players display name ascend.CyanCougars ascend.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
scoreboard players operation ascend.PurplePenguins ascend.sidebar = ascend.PurplePenguins ascend.completed
scoreboard players display name ascend.PurplePenguins ascend.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
scoreboard players operation ascend.BlueBears ascend.sidebar = ascend.BlueBears ascend.completed
scoreboard players display name ascend.BlueBears ascend.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS ascend.RedRaccoons
team join ORANGE_OTTERS ascend.OrangeOtters
team join PINK_PIKAS ascend.PinkPikas
team join YELLOW_YAKS ascend.YellowYaks
team join GREEN_GOATS ascend.GreenGoats
team join CYAN_COUGARS ascend.CyanCougars
team join PURPLE_PENGUINS ascend.PurplePenguins
team join BLUE_BEARS ascend.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lCompleted: ascend.sidebar 11

# blank line
scoreboard players set §b ascend.sidebar 12

# current game
scoreboard players set ascend ascend.sidebar 13
scoreboard players display name ascend ascend.sidebar {"text": "Ascend", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § ascend.sidebar 14