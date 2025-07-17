# lobby sidebar

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add lobby.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar lobby.sidebar

# <===== TEAM POINTS CALCULATIONS =====>

# save values in a temporary place (to use later in the sidebar)
scoreboard objectives add stats.points.team.temp dummy
scoreboard players operation team.RedRaccoons stats.points.team.temp = team.RedRaccoons stats.points.team
scoreboard players operation team.OrangeOtters stats.points.team.temp = team.OrangeOtters stats.points.team
scoreboard players operation team.PinkPikas stats.points.team.temp = team.PinkPikas stats.points.team
scoreboard players operation team.GreenGoats stats.points.team.temp = team.GreenGoats stats.points.team
scoreboard players operation team.CyanCougars stats.points.team.temp = team.CyanCougars stats.points.team
scoreboard players operation team.PurplePenguins stats.points.team.temp = team.PurplePenguins stats.points.team

# set a dummy player to -1
scoreboard players set $stats.highest stats.points.team -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 1
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 1
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 1
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 1
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 1
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score team.RedRaccoons stats.points.team.rank matches 1 run scoreboard players reset team.RedRaccoons stats.points.team
execute if score team.OrangeOtters stats.points.team.rank matches 1 run scoreboard players reset team.OrangeOtters stats.points.team
execute if score team.PinkPikas stats.points.team.rank matches 1 run scoreboard players reset team.PinkPikas stats.points.team
execute if score team.GreenGoats stats.points.team.rank matches 1 run scoreboard players reset team.GreenGoats stats.points.team
execute if score team.CyanCougars stats.points.team.rank matches 1 run scoreboard players reset team.CyanCougars stats.points.team
execute if score team.PurplePenguins stats.points.team.rank matches 1 run scoreboard players reset team.PurplePenguins stats.points.team

# and repeat five more times
scoreboard players set $stats.highest stats.points.team -1
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 2
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 2
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 2
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 2
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 2
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 2
execute if score team.RedRaccoons stats.points.team.rank matches 2 run scoreboard players reset team.RedRaccoons stats.points.team
execute if score team.OrangeOtters stats.points.team.rank matches 2 run scoreboard players reset team.OrangeOtters stats.points.team
execute if score team.PinkPikas stats.points.team.rank matches 2 run scoreboard players reset team.PinkPikas stats.points.team
execute if score team.GreenGoats stats.points.team.rank matches 2 run scoreboard players reset team.GreenGoats stats.points.team
execute if score team.CyanCougars stats.points.team.rank matches 2 run scoreboard players reset team.CyanCougars stats.points.team
execute if score team.PurplePenguins stats.points.team.rank matches 2 run scoreboard players reset team.PurplePenguins stats.points.team

scoreboard players set $stats.highest stats.points.team -1
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 3
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 3
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 3
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 3
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 3
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 3
execute if score team.RedRaccoons stats.points.team.rank matches 3 run scoreboard players reset team.RedRaccoons stats.points.team
execute if score team.OrangeOtters stats.points.team.rank matches 3 run scoreboard players reset team.OrangeOtters stats.points.team
execute if score team.PinkPikas stats.points.team.rank matches 3 run scoreboard players reset team.PinkPikas stats.points.team
execute if score team.GreenGoats stats.points.team.rank matches 3 run scoreboard players reset team.GreenGoats stats.points.team
execute if score team.CyanCougars stats.points.team.rank matches 3 run scoreboard players reset team.CyanCougars stats.points.team
execute if score team.PurplePenguins stats.points.team.rank matches 3 run scoreboard players reset team.PurplePenguins stats.points.team

scoreboard players set $stats.highest stats.points.team -1
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 3
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 3
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 3
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 3
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 3
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 3
execute if score team.RedRaccoons stats.points.team.rank matches 4 run scoreboard players reset team.RedRaccoons stats.points.team
execute if score team.OrangeOtters stats.points.team.rank matches 4 run scoreboard players reset team.OrangeOtters stats.points.team
execute if score team.PinkPikas stats.points.team.rank matches 4 run scoreboard players reset team.PinkPikas stats.points.team
execute if score team.GreenGoats stats.points.team.rank matches 4 run scoreboard players reset team.GreenGoats stats.points.team
execute if score team.CyanCougars stats.points.team.rank matches 4 run scoreboard players reset team.CyanCougars stats.points.team
execute if score team.PurplePenguins stats.points.team.rank matches 4 run scoreboard players reset team.PurplePenguins stats.points.team

scoreboard players set $stats.highest stats.points.team -1
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 3
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 3
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 3
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 3
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 3
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 3
execute if score team.RedRaccoons stats.points.team.rank matches 5 run scoreboard players reset team.RedRaccoons stats.points.team
execute if score team.OrangeOtters stats.points.team.rank matches 5 run scoreboard players reset team.OrangeOtters stats.points.team
execute if score team.PinkPikas stats.points.team.rank matches 5 run scoreboard players reset team.PinkPikas stats.points.team
execute if score team.GreenGoats stats.points.team.rank matches 5 run scoreboard players reset team.GreenGoats stats.points.team
execute if score team.CyanCougars stats.points.team.rank matches 5 run scoreboard players reset team.CyanCougars stats.points.team
execute if score team.PurplePenguins stats.points.team.rank matches 5 run scoreboard players reset team.PurplePenguins stats.points.team

scoreboard players set $stats.highest stats.points.team -1
scoreboard players operation $stats.highest stats.points.team > team.RedRaccoons stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.OrangeOtters stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PinkPikas stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.GreenGoats stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.CyanCougars stats.points.team
scoreboard players operation $stats.highest stats.points.team > team.PurplePenguins stats.points.team
execute if score team.RedRaccoons stats.points.team = $stats.highest stats.points.team run scoreboard players set team.RedRaccoons stats.points.team.rank 3
execute if score team.OrangeOtters stats.points.team = $stats.highest stats.points.team run scoreboard players set team.OrangeOtters stats.points.team.rank 3
execute if score team.PinkPikas stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PinkPikas stats.points.team.rank 3
execute if score team.GreenGoats stats.points.team = $stats.highest stats.points.team run scoreboard players set team.GreenGoats stats.points.team.rank 3
execute if score team.CyanCougars stats.points.team = $stats.highest stats.points.team run scoreboard players set team.CyanCougars stats.points.team.rank 3
execute if score team.PurplePenguins stats.points.team = $stats.highest stats.points.team run scoreboard players set team.PurplePenguins stats.points.team.rank 3
scoreboard players reset team.RedRaccoons stats.points.team
scoreboard players reset team.OrangeOtters stats.points.team
scoreboard players reset team.PinkPikas stats.points.team
scoreboard players reset team.GreenGoats stats.points.team
scoreboard players reset team.CyanCougars stats.points.team
scoreboard players reset team.PurplePenguins stats.points.team

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset team.RedRaccoons lobby.sidebar
scoreboard players reset team.OrangeOtters lobby.sidebar
scoreboard players reset team.PinkPikas lobby.sidebar
scoreboard players reset team.GreenGoats lobby.sidebar
scoreboard players reset team.CyanCougars lobby.sidebar
scoreboard players reset team.PurplePenguins lobby.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score team.RedRaccoons stats.points.team.rank matches 1..6 run scoreboard players operation team.RedRaccoons lobby.sidebar = stats.RedRaccoons stats.points.team.temp
execute if score team.RedRaccoons stats.points.team.rank matches 1..6 run scoreboard players display name team.RedRaccoons lobby.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score team.OrangeOtters stats.points.team.rank matches 1..6 run scoreboard players operation team.OrangeOtters lobby.sidebar = stats.OrangeOtters stats.points.team.temp
execute if score team.OrangeOtters stats.points.team.rank matches 1..6 run scoreboard players display name team.OrangeOtters lobby.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score team.PinkPikas stats.points.team.rank matches 1..6 run scoreboard players operation team.PinkPikas lobby.sidebar = stats.PinkPikas stats.points.team.temp
execute if score team.PinkPikas stats.points.team.rank matches 1..6 run scoreboard players display name team.PinkPikas lobby.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score team.GreenGoats stats.points.team.rank matches 1..6 run scoreboard players operation team.GreenGoats lobby.sidebar = stats.GreenGoats stats.points.team.temp
execute if score team.GreenGoats stats.points.team.rank matches 1..6 run scoreboard players display name team.GreenGoats lobby.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score team.CyanCougars stats.points.team.rank matches 1..6 run scoreboard players operation team.CyanCougars lobby.sidebar = stats.CyanCougars stats.points.team.temp
execute if score team.CyanCougars stats.points.team.rank matches 1..6 run scoreboard players display name team.CyanCougars lobby.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score team.PurplePenguins stats.points.team.rank matches 1..6 run scoreboard players operation team.PurplePenguins lobby.sidebar = stats.PurplePenguins stats.points.team.temp
execute if score team.PurplePenguins stats.points.team.rank matches 1..6 run scoreboard players display name team.PurplePenguins lobby.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS team.RedRaccoons
team join ORANGE_OTTERS team.OrangeOtters
team join PINK_PIKAS team.PinkPikas
team join GREEN_GOATS team.GreenGoats
team join CYAN_COUGARS team.CyanCougars
team join PURPLE_PENGUINS team.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: lobby.sidebar 20000

# blank line
scoreboard players set §a lobby.sidebar 20001