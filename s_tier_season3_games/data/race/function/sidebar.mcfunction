# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <lime>Race<lime>
# <gold>Players Completed: ##<gold>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add race.sidebar dummy {"text": "  STMC Open  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar race.sidebar

# <===== RANK TEAMS =====>

function race:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset race.RedRaccoons race.sidebar
scoreboard players reset race.OrangeOtters race.sidebar
scoreboard players reset race.PinkPikas race.sidebar
scoreboard players reset race.YellowYaks race.sidebar
scoreboard players reset race.GreenGoats race.sidebar
scoreboard players reset race.CyanCougars race.sidebar
scoreboard players reset race.PurplePenguins race.sidebar
scoreboard players reset race.BlueBears race.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score race.RedRaccoons race.points.team.rank matches 1..3 run scoreboard players operation race.RedRaccoons race.sidebar = race.RedRaccoons race.points.team
execute if score race.RedRaccoons race.points.team.rank matches 1..3 run scoreboard players display name race.RedRaccoons race.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score race.OrangeOtters race.points.team.rank matches 1..3 run scoreboard players operation race.OrangeOtters race.sidebar = race.OrangeOtters race.points.team
execute if score race.OrangeOtters race.points.team.rank matches 1..3 run scoreboard players display name race.OrangeOtters race.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score race.PinkPikas race.points.team.rank matches 1..3 run scoreboard players operation race.PinkPikas race.sidebar = race.PinkPikas race.points.team
execute if score race.PinkPikas race.points.team.rank matches 1..3 run scoreboard players display name race.PinkPikas race.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score race.YellowYaks race.points.team.rank matches 1..3 run scoreboard players operation race.YellowYaks race.sidebar = race.YellowYaks race.points.team
execute if score race.YellowYaks race.points.team.rank matches 1..3 run scoreboard players display name race.YellowYaks race.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
execute if score race.GreenGoats race.points.team.rank matches 1..3 run scoreboard players operation race.GreenGoats race.sidebar = race.GreenGoats race.points.team
execute if score race.GreenGoats race.points.team.rank matches 1..3 run scoreboard players display name race.GreenGoats race.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score race.CyanCougars race.points.team.rank matches 1..3 run scoreboard players operation race.CyanCougars race.sidebar = race.CyanCougars race.points.team
execute if score race.CyanCougars race.points.team.rank matches 1..3 run scoreboard players display name race.CyanCougars race.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score race.PurplePenguins race.points.team.rank matches 1..3 run scoreboard players operation race.PurplePenguins race.sidebar = race.PurplePenguins race.points.team
execute if score race.PurplePenguins race.points.team.rank matches 1..3 run scoreboard players display name race.PurplePenguins race.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
execute if score race.BlueBears race.points.team.rank matches 1..3 run scoreboard players operation race.BlueBears race.sidebar = race.BlueBears race.points.team
execute if score race.BlueBears race.points.team.rank matches 1..3 run scoreboard players display name race.BlueBears race.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS race.RedRaccoons
team join ORANGE_OTTERS race.OrangeOtters
team join PINK_PIKAS race.PinkPikas
team join YELLOW_YAKS race.YellowYaks
team join GREEN_GOATS race.GreenGoats
team join CYAN_COUGARS race.CyanCougars
team join PURPLE_PENGUINS race.PurplePenguins
team join BLUE_BEARS race.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: race.sidebar 1410

# blank line
scoreboard players set §a race.sidebar 1411

# round number
scoreboard players set race.playersCompleted race.sidebar 1412
execute if score race.handler race.players_completed matches 0 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 0/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 1 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 1/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 2 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 2/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 3 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 3/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 4 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 4/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 5 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 5/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 6 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 6/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 7 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 7/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 8 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 8/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 9 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 9/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 10 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 10/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 11 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 11/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 12 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 12/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 13 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 13/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 14 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 14/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 15 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 15/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 16 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 16/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 17 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 17/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 18 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 18/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 19 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 19/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 20 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 20/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 21 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 21/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 22 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 22/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 23 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 23/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 24 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 24/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 25 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 25/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 26 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 26/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 27 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 27/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 28 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 28/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 29 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 29/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 30 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 30/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 31 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 31/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 32 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 32/32", "color": "gold", "bold": true}

# current game
scoreboard players set Disco race.sidebar 1413
scoreboard players display name Disco race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #2
scoreboard players set § race.sidebar 1414