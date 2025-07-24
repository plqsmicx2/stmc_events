# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <gold>Survival Games<gold>
# <red>Round #/3<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add sg.sidebar dummy {"text": "  STMC Invitational Reloaded  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar sg.sidebar

# <===== RANK TEAMS =====>

function survival_games:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset sg.RedRaccoons sg.sidebar
scoreboard players reset sg.OrangeOtters sg.sidebar
scoreboard players reset sg.PinkPikas sg.sidebar
scoreboard players reset sg.GreenGoats sg.sidebar
scoreboard players reset sg.CyanCougars sg.sidebar
scoreboard players reset sg.PurplePenguins sg.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score sg.RedRaccoons sg.points.team.rank matches 1..3 run scoreboard players operation sg.RedRaccoons sg.sidebar = sg.RedRaccoons sg.points.team.temp
execute if score sg.RedRaccoons sg.points.team.rank matches 1..3 run scoreboard players display name sg.RedRaccoons sg.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score sg.OrangeOtters sg.points.team.rank matches 1..3 run scoreboard players operation sg.OrangeOtters sg.sidebar = sg.OrangeOtters sg.points.team.temp
execute if score sg.OrangeOtters sg.points.team.rank matches 1..3 run scoreboard players display name sg.OrangeOtters sg.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score sg.PinkPikas sg.points.team.rank matches 1..3 run scoreboard players operation sg.PinkPikas sg.sidebar = sg.PinkPikas sg.points.team.temp
execute if score sg.PinkPikas sg.points.team.rank matches 1..3 run scoreboard players display name sg.PinkPikas sg.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score sg.GreenGoats sg.points.team.rank matches 1..3 run scoreboard players operation sg.GreenGoats sg.sidebar = sg.GreenGoats sg.points.team.temp
execute if score sg.GreenGoats sg.points.team.rank matches 1..3 run scoreboard players display name sg.GreenGoats sg.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score sg.CyanCougars sg.points.team.rank matches 1..3 run scoreboard players operation sg.CyanCougars sg.sidebar = sg.CyanCougars sg.points.team.temp
execute if score sg.CyanCougars sg.points.team.rank matches 1..3 run scoreboard players display name sg.CyanCougars sg.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score sg.PurplePenguins sg.points.team.rank matches 1..3 run scoreboard players operation sg.PurplePenguins sg.sidebar = sg.PurplePenguins sg.points.team.temp
execute if score sg.PurplePenguins sg.points.team.rank matches 1..3 run scoreboard players display name sg.PurplePenguins sg.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS sg.RedRaccoons
team join ORANGE_OTTERS sg.OrangeOtters
team join PINK_PIKAS sg.PinkPikas
team join GREEN_GOATS sg.GreenGoats
team join CYAN_COUGARS sg.CyanCougars
team join PURPLE_PENGUINS sg.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: sg.sidebar 4201

# blank line
scoreboard players set §a sg.sidebar 4202

# teams alive
scoreboard players set sg.teamsAlive sg.sidebar 4203
execute if score sg.handler sg.teams_alive matches 6 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 6/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 5 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 5/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 4 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 4/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 3 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 3/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 2 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 2/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 1 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 1/6", "color": "red", "bold": true}
execute if score sg.handler sg.teams_alive matches 0 run scoreboard players display name sg.teamsAlive sg.sidebar {"text": "Teams Alive: 0/6", "color": "red", "bold": true}

# blank line
scoreboard players set §b sg.sidebar 4204

# round number
scoreboard players set sg.roundNum sg.sidebar 4205
execute if score sg.handler sg.stage matches 0 run scoreboard players display name sg.roundNum sg.sidebar {"text": "Round: 1/3", "color": "dark_red", "bold": true}
execute if score sg.handler sg.stage matches 1 run scoreboard players display name sg.roundNum sg.sidebar {"text": "Round: 2/3", "color": "dark_red", "bold": true}
execute if score sg.handler sg.stage matches 2 run scoreboard players display name sg.roundNum sg.sidebar {"text": "Round: 3/3", "color": "dark_red", "bold": true}

# current game
scoreboard players set SurvivalGames sg.sidebar 4206
scoreboard players display name SurvivalGames sg.sidebar {"text": "Brawl", "color": "gold", "bold": true}

# blank line #2
scoreboard players set § sg.sidebar 4207