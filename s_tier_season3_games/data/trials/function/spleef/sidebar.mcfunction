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

scoreboard objectives add spleef.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar spleef.sidebar

# determine ranking
function trials:spleef/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset spleef.RedRaccoons spleef.sidebar
scoreboard players reset spleef.OrangeOtters spleef.sidebar
scoreboard players reset spleef.PinkPikas spleef.sidebar
scoreboard players reset spleef.GreenGoats spleef.sidebar
scoreboard players reset spleef.CyanCougars spleef.sidebar
scoreboard players reset spleef.PurplePenguins spleef.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score spleef.RedRaccoons spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.RedRaccoons spleef.sidebar = spleef.RedRaccoons spleef.points.team
execute if score spleef.RedRaccoons spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.RedRaccoons spleef.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.OrangeOtters spleef.sidebar = spleef.OrangeOtters spleef.points.team
execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.OrangeOtters spleef.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PinkPikas spleef.sidebar = spleef.PinkPikas spleef.points.team
execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PinkPikas spleef.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.GreenGoats spleef.sidebar = spleef.GreenGoats spleef.points.team
execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.GreenGoats spleef.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.CyanCougars spleef.sidebar = spleef.CyanCougars spleef.points.team
execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.CyanCougars spleef.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PurplePenguins spleef.sidebar = spleef.PurplePenguins spleef.points.team
execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PurplePenguins spleef.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS spleef.RedRaccoons
team join ORANGE_OTTERS spleef.OrangeOtters
team join PINK_PIKAS spleef.PinkPikas
team join GREEN_GOATS spleef.GreenGoats
team join CYAN_COUGARS spleef.CyanCougars
team join PURPLE_PENGUINS spleef.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: spleef.sidebar 741

# blank line
scoreboard players set §a spleef.sidebar 742

# teams alive
scoreboard players set spleef.teamsAlive spleef.sidebar 743
execute if score spleef.handler spleef.teams_alive matches 6 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 6/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 5 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 5/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 4 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 4/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 3 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 3/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 2 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 2/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 1 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 1/6", "color": "red", "bold": true}
execute if score spleef.handler spleef.teams_alive matches 0 run scoreboard players display name spleef.teamsAlive spleef.sidebar {"text": "Teams Alive: 0/6", "color": "red", "bold": true}

# blank line
scoreboard players set §b spleef.sidebar 744

# current game
scoreboard players set Spleef spleef.sidebar 745
scoreboard players display name Spleef spleef.sidebar {"text": "Spleef", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § spleef.sidebar 746

# <===== Actionbar =====>

# sets player actionbar to their points
execute as @a if score spleef.handler spleef.stage matches 5..6 run title @s actionbar ["",{text:"Individual Points: ",bold:true,color:"yellow"},{score:{name:"@s",objective:"spleef.points.indiv"},bold:true,color:"red"}]