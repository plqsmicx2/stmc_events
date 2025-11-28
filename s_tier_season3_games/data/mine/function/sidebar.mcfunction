# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <lime>Race<lime>
# <gold>Players Completed: ##<gold>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add mine.sidebar dummy {"text": "  STMC Invitational II  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar mine.sidebar

# <===== CALCULATE PLAYER POINTS =====>

execute unless score mine.handler mine.stage.lobby matches 1 run scoreboard players add @a[scores={mine.game.mined.diamond_ore=1..}] mine.points.indiv 1
scoreboard players reset @a mine.game.mined.diamond_ore

# <===== RANK TEAMS =====>

function mine:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset mine.RedRaccoons mine.sidebar
scoreboard players reset mine.OrangeOtters mine.sidebar
scoreboard players reset mine.PinkPikas mine.sidebar
scoreboard players reset mine.YellowYaks mine.sidebar
scoreboard players reset mine.GreenGoats mine.sidebar
scoreboard players reset mine.CyanCougars mine.sidebar
scoreboard players reset mine.PurplePenguins mine.sidebar
scoreboard players reset mine.BlueBears mine.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
#execute if score mine.RedRaccoons mine.points.team.rank matches 1..3 run scoreboard players operation mine.RedRaccoons mine.sidebar = mine.RedRaccoons mine.points.team
#execute if score mine.RedRaccoons mine.points.team.rank matches 1..3 run scoreboard players display name mine.RedRaccoons mine.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score mine.OrangeOtters mine.points.team.rank matches 1..3 run scoreboard players operation mine.OrangeOtters mine.sidebar = mine.OrangeOtters mine.points.team
execute if score mine.OrangeOtters mine.points.team.rank matches 1..3 run scoreboard players display name mine.OrangeOtters mine.sidebar {"text": "  Orange Otters", "color": "gold"}
#execute if score mine.PinkPikas mine.points.team.rank matches 1..3 run scoreboard players operation mine.PinkPikas mine.sidebar = mine.PinkPikas mine.points.team
#execute if score mine.PinkPikas mine.points.team.rank matches 1..3 run scoreboard players display name mine.PinkPikas mine.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score mine.YellowYaks mine.points.team.rank matches 1..3 run scoreboard players operation mine.YellowYaks mine.sidebar = mine.YellowYaks mine.points.team
execute if score mine.YellowYaks mine.points.team.rank matches 1..3 run scoreboard players display name mine.YellowYaks mine.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
execute if score mine.GreenGoats mine.points.team.rank matches 1..3 run scoreboard players operation mine.GreenGoats mine.sidebar = mine.GreenGoats mine.points.team
execute if score mine.GreenGoats mine.points.team.rank matches 1..3 run scoreboard players display name mine.GreenGoats mine.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score mine.CyanCougars mine.points.team.rank matches 1..3 run scoreboard players operation mine.CyanCougars mine.sidebar = mine.CyanCougars mine.points.team
execute if score mine.CyanCougars mine.points.team.rank matches 1..3 run scoreboard players display name mine.CyanCougars mine.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score mine.PurplePenguins mine.points.team.rank matches 1..3 run scoreboard players operation mine.PurplePenguins mine.sidebar = mine.PurplePenguins mine.points.team
execute if score mine.PurplePenguins mine.points.team.rank matches 1..3 run scoreboard players display name mine.PurplePenguins mine.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
execute if score mine.BlueBears mine.points.team.rank matches 1..3 run scoreboard players operation mine.BlueBears mine.sidebar = mine.BlueBears mine.points.team
execute if score mine.BlueBears mine.points.team.rank matches 1..3 run scoreboard players display name mine.BlueBears mine.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS mine.RedRaccoons
team join ORANGE_OTTERS mine.OrangeOtters
team join PINK_PIKAS mine.PinkPikas
team join YELLOW_YAKS mine.YellowYaks
team join GREEN_GOATS mine.GreenGoats
team join CYAN_COUGARS mine.CyanCougars
team join PURPLE_PENGUINS mine.PurplePenguins
team join BLUE_BEARS mine.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: mine.sidebar 500

# points header
# no need to override display since it can be done in one line
scoreboard players set § mine.sidebar 501

# current game
scoreboard players set Mine mine.sidebar 502
scoreboard players display name Mine mine.sidebar {"text": "Mine", "color": "gray", "bold": true}

# points header
# no need to override display since it can be done in one line
scoreboard players set §a mine.sidebar 503