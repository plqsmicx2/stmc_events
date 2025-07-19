# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <lime>Delve<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add delve.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar delve.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function delve:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset delve.RedRaccoons delve.sidebar
scoreboard players reset delve.OrangeOtters delve.sidebar
scoreboard players reset delve.PinkPikas delve.sidebar
scoreboard players reset delve.GreenGoats delve.sidebar
scoreboard players reset delve.CyanCougars delve.sidebar
scoreboard players reset delve.PurplePenguins delve.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score delve.RedRaccoons delve.points.team.rank matches 1..3 run scoreboard players operation delve.RedRaccoons delve.sidebar = delve.RedRaccoons delve.points.team
execute if score delve.RedRaccoons delve.points.team.rank matches 1..3 run scoreboard players display name delve.RedRaccoons delve.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score delve.OrangeOtters delve.points.team.rank matches 1..3 run scoreboard players operation delve.OrangeOtters delve.sidebar = delve.OrangeOtters delve.points.team
execute if score delve.OrangeOtters delve.points.team.rank matches 1..3 run scoreboard players display name delve.OrangeOtters delve.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score delve.PinkPikas delve.points.team.rank matches 1..3 run scoreboard players operation delve.PinkPikas delve.sidebar = delve.PinkPikas delve.points.team
execute if score delve.PinkPikas delve.points.team.rank matches 1..3 run scoreboard players display name delve.PinkPikas delve.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score delve.GreenGoats delve.points.team.rank matches 1..3 run scoreboard players operation delve.GreenGoats delve.sidebar = delve.GreenGoats delve.points.team
execute if score delve.GreenGoats delve.points.team.rank matches 1..3 run scoreboard players display name delve.GreenGoats delve.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score delve.CyanCougars delve.points.team.rank matches 1..3 run scoreboard players operation delve.CyanCougars delve.sidebar = delve.CyanCougars delve.points.team
execute if score delve.CyanCougars delve.points.team.rank matches 1..3 run scoreboard players display name delve.CyanCougars delve.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score delve.PurplePenguins delve.points.team.rank matches 1..3 run scoreboard players operation delve.PurplePenguins delve.sidebar = delve.PurplePenguins delve.points.team
execute if score delve.PurplePenguins delve.points.team.rank matches 1..3 run scoreboard players display name delve.PurplePenguins delve.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS delve.RedRaccoons
team join ORANGE_OTTERS delve.OrangeOtters
team join PINK_PIKAS delve.PinkPikas
team join GREEN_GOATS delve.GreenGoats
team join CYAN_COUGARS delve.CyanCougars
team join PURPLE_PENGUINS delve.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: delve.sidebar 2481

# blank line
scoreboard players set §a delve.sidebar 2482

# current game
scoreboard players set Delve delve.sidebar 2484
scoreboard players display name Delve delve.sidebar {"text": "Delve", "color": "dark_purple", "bold": true}

# blank line #2
scoreboard players set § delve.sidebar 2485