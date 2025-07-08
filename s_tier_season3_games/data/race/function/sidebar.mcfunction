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

scoreboard objectives add race.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar race.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

# save values in a temporary place (to use later in the sidebar)
scoreboard objectives add race.points.team.temp dummy
scoreboard players operation race.RedRaccoons race.points.team.temp = race.RedRaccoons race.points.team
scoreboard players operation race.OrangeOtters race.points.team.temp = race.OrangeOtters race.points.team
scoreboard players operation race.PinkPikas race.points.team.temp = race.PinkPikas race.points.team
scoreboard players operation race.GreenGoats race.points.team.temp = race.GreenGoats race.points.team
scoreboard players operation race.CyanCougars race.points.team.temp = race.CyanCougars race.points.team
scoreboard players operation race.PurplePenguins race.points.team.temp = race.PurplePenguins race.points.team

# set a dummy player to -1
scoreboard players set $race.highest race.points.team -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $race.highest race.points.team > race.RedRaccoons race.points.team
scoreboard players operation $race.highest race.points.team > race.OrangeOtters race.points.team
scoreboard players operation $race.highest race.points.team > race.PinkPikas race.points.team
scoreboard players operation $race.highest race.points.team > race.GreenGoats race.points.team
scoreboard players operation $race.highest race.points.team > race.CyanCougars race.points.team
scoreboard players operation $race.highest race.points.team > race.PurplePenguins race.points.team

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score race.RedRaccoons race.points.team = $race.highest race.points.team run scoreboard players set race.RedRaccoons race.points.team.rank 1
execute if score race.OrangeOtters race.points.team = $race.highest race.points.team run scoreboard players set race.OrangeOtters race.points.team.rank 1
execute if score race.PinkPikas race.points.team = $race.highest race.points.team run scoreboard players set race.PinkPikas race.points.team.rank 1
execute if score race.GreenGoats race.points.team = $race.highest race.points.team run scoreboard players set race.GreenGoats race.points.team.rank 1
execute if score race.CyanCougars race.points.team = $race.highest race.points.team run scoreboard players set race.CyanCougars race.points.team.rank 1
execute if score race.PurplePenguins race.points.team = $race.highest race.points.team run scoreboard players set race.PurplePenguins race.points.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score race.RedRaccoons race.points.team.rank matches 1 run scoreboard players reset race.RedRaccoons race.points.team
execute if score race.OrangeOtters race.points.team.rank matches 1 run scoreboard players reset race.OrangeOtters race.points.team
execute if score race.PinkPikas race.points.team.rank matches 1 run scoreboard players reset race.PinkPikas race.points.team
execute if score race.GreenGoats race.points.team.rank matches 1 run scoreboard players reset race.GreenGoats race.points.team
execute if score race.CyanCougars race.points.team.rank matches 1 run scoreboard players reset race.CyanCougars race.points.team
execute if score race.PurplePenguins race.points.team.rank matches 1 run scoreboard players reset race.PurplePenguins race.points.team

# and repeat two more times
scoreboard players set $race.highest race.points.team -1
scoreboard players operation $race.highest race.points.team > race.RedRaccoons race.points.team
scoreboard players operation $race.highest race.points.team > race.OrangeOtters race.points.team
scoreboard players operation $race.highest race.points.team > race.PinkPikas race.points.team
scoreboard players operation $race.highest race.points.team > race.GreenGoats race.points.team
scoreboard players operation $race.highest race.points.team > race.CyanCougars race.points.team
scoreboard players operation $race.highest race.points.team > race.PurplePenguins race.points.team
execute if score race.RedRaccoons race.points.team = $race.highest race.points.team run scoreboard players set race.RedRaccoons race.points.team.rank 2
execute if score race.OrangeOtters race.points.team = $race.highest race.points.team run scoreboard players set race.OrangeOtters race.points.team.rank 2
execute if score race.PinkPikas race.points.team = $race.highest race.points.team run scoreboard players set race.PinkPikas race.points.team.rank 2
execute if score race.GreenGoats race.points.team = $race.highest race.points.team run scoreboard players set race.GreenGoats race.points.team.rank 2
execute if score race.CyanCougars race.points.team = $race.highest race.points.team run scoreboard players set race.CyanCougars race.points.team.rank 2
execute if score race.PurplePenguins race.points.team = $race.highest race.points.team run scoreboard players set race.PurplePenguins race.points.team.rank 2
execute if score race.RedRaccoons race.points.team.rank matches 2 run scoreboard players reset race.RedRaccoons race.points.team
execute if score race.OrangeOtters race.points.team.rank matches 2 run scoreboard players reset race.OrangeOtters race.points.team
execute if score race.PinkPikas race.points.team.rank matches 2 run scoreboard players reset race.PinkPikas race.points.team
execute if score race.GreenGoats race.points.team.rank matches 2 run scoreboard players reset race.GreenGoats race.points.team
execute if score race.CyanCougars race.points.team.rank matches 2 run scoreboard players reset race.CyanCougars race.points.team
execute if score race.PurplePenguins race.points.team.rank matches 2 run scoreboard players reset race.PurplePenguins race.points.team

scoreboard players set $race.highest race.points.team -1
scoreboard players operation $race.highest race.points.team > race.RedRaccoons race.points.team
scoreboard players operation $race.highest race.points.team > race.OrangeOtters race.points.team
scoreboard players operation $race.highest race.points.team > race.PinkPikas race.points.team
scoreboard players operation $race.highest race.points.team > race.GreenGoats race.points.team
scoreboard players operation $race.highest race.points.team > race.CyanCougars race.points.team
scoreboard players operation $race.highest race.points.team > race.PurplePenguins race.points.team
execute if score race.RedRaccoons race.points.team = $race.highest race.points.team run scoreboard players set race.RedRaccoons race.points.team.rank 3
execute if score race.OrangeOtters race.points.team = $race.highest race.points.team run scoreboard players set race.OrangeOtters race.points.team.rank 3
execute if score race.PinkPikas race.points.team = $race.highest race.points.team run scoreboard players set race.PinkPikas race.points.team.rank 3
execute if score race.GreenGoats race.points.team = $race.highest race.points.team run scoreboard players set race.GreenGoats race.points.team.rank 3
execute if score race.CyanCougars race.points.team = $race.highest race.points.team run scoreboard players set race.CyanCougars race.points.team.rank 3
execute if score race.PurplePenguins race.points.team = $race.highest race.points.team run scoreboard players set race.PurplePenguins race.points.team.rank 3
scoreboard players reset race.RedRaccoons race.points.team
scoreboard players reset race.OrangeOtters race.points.team
scoreboard players reset race.PinkPikas race.points.team
scoreboard players reset race.GreenGoats race.points.team
scoreboard players reset race.CyanCougars race.points.team
scoreboard players reset race.PurplePenguins race.points.team

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset race.RedRaccoons race.sidebar
scoreboard players reset race.OrangeOtters race.sidebar
scoreboard players reset race.PinkPikas race.sidebar
scoreboard players reset race.GreenGoats race.sidebar
scoreboard players reset race.CyanCougars race.sidebar
scoreboard players reset race.PurplePenguins race.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score race.RedRaccoons race.points.team.rank matches 1..3 run scoreboard players operation race.RedRaccoons race.sidebar = race.RedRaccoons race.points.team.temp
execute if score race.RedRaccoons race.points.team.rank matches 1..3 run scoreboard players display name race.RedRaccoons race.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score race.OrangeOtters race.points.team.rank matches 1..3 run scoreboard players operation race.OrangeOtters race.sidebar = race.OrangeOtters race.points.team.temp
execute if score race.OrangeOtters race.points.team.rank matches 1..3 run scoreboard players display name race.OrangeOtters race.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score race.PinkPikas race.points.team.rank matches 1..3 run scoreboard players operation race.PinkPikas race.sidebar = race.PinkPikas race.points.team.temp
execute if score race.PinkPikas race.points.team.rank matches 1..3 run scoreboard players display name race.PinkPikas race.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score race.GreenGoats race.points.team.rank matches 1..3 run scoreboard players operation race.GreenGoats race.sidebar = race.GreenGoats race.points.team.temp
execute if score race.GreenGoats race.points.team.rank matches 1..3 run scoreboard players display name race.GreenGoats race.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score race.CyanCougars race.points.team.rank matches 1..3 run scoreboard players operation race.CyanCougars race.sidebar = race.CyanCougars race.points.team.temp
execute if score race.CyanCougars race.points.team.rank matches 1..3 run scoreboard players display name race.CyanCougars race.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score race.PurplePenguins race.points.team.rank matches 1..3 run scoreboard players operation race.PurplePenguins race.sidebar = race.PurplePenguins race.points.team.temp
execute if score race.PurplePenguins race.points.team.rank matches 1..3 run scoreboard players display name race.PurplePenguins race.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS race.RedRaccoons
team join ORANGE_OTTERS race.OrangeOtters
team join PINK_PIKAS race.PinkPikas
team join GREEN_GOATS race.GreenGoats
team join CYAN_COUGARS race.CyanCougars
team join PURPLE_PENGUINS race.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: race.sidebar 2481

# blank line
scoreboard players set §a race.sidebar 2482

# round number
scoreboard players set race.playersCompleted race.sidebar 2483
execute if score race.handler race.players_completed matches 0 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 0/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 1 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 1/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 2 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 2/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 3 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 3/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 4 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 4/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 5 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 5/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 6 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 6/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 7 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 7/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 8 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 8/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 9 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 9/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 10 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 10/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 11 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 11/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 12 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 12/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 13 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 13/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 14 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 14/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 15 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 15/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 16 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 16/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 17 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 17/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 18 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 18/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 19 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 19/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 20 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 20/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 21 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 21/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 22 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 22/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 23 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 23/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 24 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 24/24", "color": "gold", "bold": true}

# current game
scoreboard players set Disco race.sidebar 2484
scoreboard players display name Disco race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #2
scoreboard players set § race.sidebar 2485