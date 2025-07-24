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

scoreboard objectives add extract.sidebar dummy {"text": "  STMC Invitational Reloaded  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar extract.sidebar

# <===== RANK TEAMS =====>

function extract:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset extract.RedRaccoons extract.sidebar
scoreboard players reset extract.OrangeOtters extract.sidebar
scoreboard players reset extract.PinkPikas extract.sidebar
scoreboard players reset extract.GreenGoats extract.sidebar
scoreboard players reset extract.CyanCougars extract.sidebar
scoreboard players reset extract.PurplePenguins extract.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score extract.RedRaccoons extract.points.team.rank matches 1..3 run scoreboard players operation extract.RedRaccoons extract.sidebar = extract.RedRaccoons extract.points.team
execute if score extract.RedRaccoons extract.points.team.rank matches 1..3 run scoreboard players display name extract.RedRaccoons extract.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score extract.OrangeOtters extract.points.team.rank matches 1..3 run scoreboard players operation extract.OrangeOtters extract.sidebar = extract.OrangeOtters extract.points.team
execute if score extract.OrangeOtters extract.points.team.rank matches 1..3 run scoreboard players display name extract.OrangeOtters extract.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score extract.PinkPikas extract.points.team.rank matches 1..3 run scoreboard players operation extract.PinkPikas extract.sidebar = extract.PinkPikas extract.points.team
execute if score extract.PinkPikas extract.points.team.rank matches 1..3 run scoreboard players display name extract.PinkPikas extract.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score extract.GreenGoats extract.points.team.rank matches 1..3 run scoreboard players operation extract.GreenGoats extract.sidebar = extract.GreenGoats extract.points.team
execute if score extract.GreenGoats extract.points.team.rank matches 1..3 run scoreboard players display name extract.GreenGoats extract.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score extract.CyanCougars extract.points.team.rank matches 1..3 run scoreboard players operation extract.CyanCougars extract.sidebar = extract.CyanCougars extract.points.team
execute if score extract.CyanCougars extract.points.team.rank matches 1..3 run scoreboard players display name extract.CyanCougars extract.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score extract.PurplePenguins extract.points.team.rank matches 1..3 run scoreboard players operation extract.PurplePenguins extract.sidebar = extract.PurplePenguins extract.points.team
execute if score extract.PurplePenguins extract.points.team.rank matches 1..3 run scoreboard players display name extract.PurplePenguins extract.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS extract.RedRaccoons
team join ORANGE_OTTERS extract.OrangeOtters
team join PINK_PIKAS extract.PinkPikas
team join GREEN_GOATS extract.GreenGoats
team join CYAN_COUGARS extract.CyanCougars
team join PURPLE_PENGUINS extract.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: extract.sidebar 2601

# blank line
scoreboard players set §a extract.sidebar 2602

# round number
scoreboard players set extract.stats.roundsCompleted extract.sidebar 2603
execute if score extract.handler extract.stats.roundsCompleted matches 0 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 0/5", "color": "gold", "bold": true}
execute if score extract.handler extract.stats.roundsCompleted matches 1 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 1/5", "color": "gold", "bold": true}
execute if score extract.handler extract.stats.roundsCompleted matches 2 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 2/5", "color": "gold", "bold": true}
execute if score extract.handler extract.stats.roundsCompleted matches 3 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 3/5", "color": "gold", "bold": true}
execute if score extract.handler extract.stats.roundsCompleted matches 4 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 4/5", "color": "gold", "bold": true}
execute if score extract.handler extract.stats.roundsCompleted matches 5 run scoreboard players display name extract.stats.roundsCompleted extract.sidebar {"text": "Rounds Completed: 5/5", "color": "gold", "bold": true}

# current game
scoreboard players set Disco extract.sidebar 2604
scoreboard players display name Disco extract.sidebar {"text": "Extract", "color": "red", "bold": true}

# blank line #2
scoreboard players set § extract.sidebar 2605