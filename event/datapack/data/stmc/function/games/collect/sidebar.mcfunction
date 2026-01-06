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

scoreboard objectives add collect.sidebar dummy
$scoreboard objectives modify collect.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar collect.sidebar

# <===== RANK TEAMS =====>

function stmc:games/collect/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset collect.RedRaccoons collect.sidebar
scoreboard players reset collect.OrangeOtters collect.sidebar
scoreboard players reset collect.PinkPikas collect.sidebar
scoreboard players reset collect.YellowYaks collect.sidebar
scoreboard players reset collect.GreenGoats collect.sidebar
scoreboard players reset collect.CyanCougars collect.sidebar
scoreboard players reset collect.PurplePenguins collect.sidebar
scoreboard players reset collect.BlueBears collect.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score collect.RedRaccoons collect.points.team.rank matches 1..3 run scoreboard players operation collect.RedRaccoons collect.sidebar = collect.RedRaccoons collect.points.team
$execute if score collect.RedRaccoons collect.points.team.rank matches 1..3 run scoreboard players display name collect.RedRaccoons collect.sidebar {"text": "  $(redName)", "color": "red"}
execute if score collect.OrangeOtters collect.points.team.rank matches 1..3 run scoreboard players operation collect.OrangeOtters collect.sidebar = collect.OrangeOtters collect.points.team
$execute if score collect.OrangeOtters collect.points.team.rank matches 1..3 run scoreboard players display name collect.OrangeOtters collect.sidebar {"text": "  $(orangeName)", "color": "gold"}
execute if score collect.PinkPikas collect.points.team.rank matches 1..3 run scoreboard players operation collect.PinkPikas collect.sidebar = collect.PinkPikas collect.points.team
$execute if score collect.PinkPikas collect.points.team.rank matches 1..3 run scoreboard players display name collect.PinkPikas collect.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
execute if score collect.YellowYaks collect.points.team.rank matches 1..3 run scoreboard players operation collect.YellowYaks collect.sidebar = collect.YellowYaks collect.points.team
$execute if score collect.YellowYaks collect.points.team.rank matches 1..3 run scoreboard players display name collect.YellowYaks collect.sidebar {"text": "  $(yellowName)", "color": "yellow"}
execute if score collect.GreenGoats collect.points.team.rank matches 1..3 run scoreboard players operation collect.GreenGoats collect.sidebar = collect.GreenGoats collect.points.team
$execute if score collect.GreenGoats collect.points.team.rank matches 1..3 run scoreboard players display name collect.GreenGoats collect.sidebar {"text": "  $(greenName)", "color": "dark_green"}
execute if score collect.CyanCougars collect.points.team.rank matches 1..3 run scoreboard players operation collect.CyanCougars collect.sidebar = collect.CyanCougars collect.points.team
$execute if score collect.CyanCougars collect.points.team.rank matches 1..3 run scoreboard players display name collect.CyanCougars collect.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
execute if score collect.PurplePenguins collect.points.team.rank matches 1..3 run scoreboard players operation collect.PurplePenguins collect.sidebar = collect.PurplePenguins collect.points.team
$execute if score collect.PurplePenguins collect.points.team.rank matches 1..3 run scoreboard players display name collect.PurplePenguins collect.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
execute if score collect.BlueBears collect.points.team.rank matches 1..3 run scoreboard players operation collect.BlueBears collect.sidebar = collect.BlueBears collect.points.team
$execute if score collect.BlueBears collect.points.team.rank matches 1..3 run scoreboard players display name collect.BlueBears collect.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS collect.RedRaccoons
team join ORANGE_OTTERS collect.OrangeOtters
team join PINK_PIKAS collect.PinkPikas
team join YELLOW_YAKS collect.YellowYaks
team join GREEN_GOATS collect.GreenGoats
team join CYAN_COUGARS collect.CyanCougars
team join PURPLE_PENGUINS collect.PurplePenguins
team join BLUE_BEARS collect.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: collect.sidebar 500

# points header
# no need to override display since it can be done in one line
scoreboard players set § collect.sidebar 501

# timer
scoreboard players set collect.timer collect.sidebar 502
execute as @a if score collect.handler collect.timer.game.secs matches 10.. run scoreboard players display name collect.timer collect.sidebar ["",{"text": "Time Left: ", "color": "aqua", "bold": true},{"score": {"name": "collect.handler", "objective": "collect.timer.game.mins"},"color":"aqua"}, {"text": ":","color":"aqua"}, {"score": {"name": "collect.handler", "objective": "collect.timer.game.secs"},"color":"aqua"}]
execute as @a if score collect.handler collect.timer.game.secs matches 0..9 run scoreboard players display name collect.timer collect.sidebar ["",{"text": "Time Left: ", "color": "aqua", "bold": true},{"score": {"name": "collect.handler", "objective": "collect.timer.game.mins"},"color":"aqua"}, {"text": ":0","color":"aqua"}, {"score": {"name": "collect.handler", "objective": "collect.timer.game.secs"},"color":"aqua"}]

# current game
scoreboard players set collect collect.sidebar 503
scoreboard players display name collect collect.sidebar {"text": "Collect", "color": "aqua", "bold": true}

# points header
# no need to override display since it can be done in one line
scoreboard players set §a collect.sidebar 504