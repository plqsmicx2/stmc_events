# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <gold>Towers<gold>
# <red>Rounds Played: ##<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add towers.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar towers.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

# save values in a temporary place (to use later in the sidebar)
scoreboard objectives add towers.points.team.temp dummy
scoreboard players operation towers.RedRaccoons towers.points.team.temp = towers.RedRaccoons towers.points.team
scoreboard players operation towers.OrangeOtters towers.points.team.temp = towers.OrangeOtters towers.points.team
scoreboard players operation towers.PinkPikas towers.points.team.temp = towers.PinkPikas towers.points.team
scoreboard players operation towers.GreenGoats towers.points.team.temp = towers.GreenGoats towers.points.team
scoreboard players operation towers.CyanCougars towers.points.team.temp = towers.CyanCougars towers.points.team
scoreboard players operation towers.PurplePenguins towers.points.team.temp = towers.PurplePenguins towers.points.team

# set a dummy player to -1
scoreboard players set $towers.highest towers.points.team -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $towers.highest towers.points.team > towers.RedRaccoons towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.OrangeOtters towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PinkPikas towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.GreenGoats towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.CyanCougars towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PurplePenguins towers.points.team

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score towers.RedRaccoons towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.RedRaccoons towers.points.team.rank 1
execute if score towers.OrangeOtters towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.OrangeOtters towers.points.team.rank 1
execute if score towers.PinkPikas towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PinkPikas towers.points.team.rank 1
execute if score towers.GreenGoats towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.GreenGoats towers.points.team.rank 1
execute if score towers.CyanCougars towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.CyanCougars towers.points.team.rank 1
execute if score towers.PurplePenguins towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PurplePenguins towers.points.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score towers.RedRaccoons towers.points.team.rank matches 1 run scoreboard players reset towers.RedRaccoons towers.points.team
execute if score towers.OrangeOtters towers.points.team.rank matches 1 run scoreboard players reset towers.OrangeOtters towers.points.team
execute if score towers.PinkPikas towers.points.team.rank matches 1 run scoreboard players reset towers.PinkPikas towers.points.team
execute if score towers.GreenGoats towers.points.team.rank matches 1 run scoreboard players reset towers.GreenGoats towers.points.team
execute if score towers.CyanCougars towers.points.team.rank matches 1 run scoreboard players reset towers.CyanCougars towers.points.team
execute if score towers.PurplePenguins towers.points.team.rank matches 1 run scoreboard players reset towers.PurplePenguins towers.points.team

# and repeat two more times
scoreboard players set $towers.highest towers.points.team -1
scoreboard players operation $towers.highest towers.points.team > towers.RedRaccoons towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.OrangeOtters towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PinkPikas towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.GreenGoats towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.CyanCougars towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PurplePenguins towers.points.team
execute if score towers.RedRaccoons towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.RedRaccoons towers.points.team.rank 2
execute if score towers.OrangeOtters towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.OrangeOtters towers.points.team.rank 2
execute if score towers.PinkPikas towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PinkPikas towers.points.team.rank 2
execute if score towers.GreenGoats towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.GreenGoats towers.points.team.rank 2
execute if score towers.CyanCougars towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.CyanCougars towers.points.team.rank 2
execute if score towers.PurplePenguins towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PurplePenguins towers.points.team.rank 2
execute if score towers.RedRaccoons towers.points.team.rank matches 2 run scoreboard players reset towers.RedRaccoons towers.points.team
execute if score towers.OrangeOtters towers.points.team.rank matches 2 run scoreboard players reset towers.OrangeOtters towers.points.team
execute if score towers.PinkPikas towers.points.team.rank matches 2 run scoreboard players reset towers.PinkPikas towers.points.team
execute if score towers.GreenGoats towers.points.team.rank matches 2 run scoreboard players reset towers.GreenGoats towers.points.team
execute if score towers.CyanCougars towers.points.team.rank matches 2 run scoreboard players reset towers.CyanCougars towers.points.team
execute if score towers.PurplePenguins towers.points.team.rank matches 2 run scoreboard players reset towers.PurplePenguins towers.points.team

scoreboard players set $towers.highest towers.points.team -1
scoreboard players operation $towers.highest towers.points.team > towers.RedRaccoons towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.OrangeOtters towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PinkPikas towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.GreenGoats towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.CyanCougars towers.points.team
scoreboard players operation $towers.highest towers.points.team > towers.PurplePenguins towers.points.team
execute if score towers.RedRaccoons towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.RedRaccoons towers.points.team.rank 3
execute if score towers.OrangeOtters towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.OrangeOtters towers.points.team.rank 3
execute if score towers.PinkPikas towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PinkPikas towers.points.team.rank 3
execute if score towers.GreenGoats towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.GreenGoats towers.points.team.rank 3
execute if score towers.CyanCougars towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.CyanCougars towers.points.team.rank 3
execute if score towers.PurplePenguins towers.points.team = $towers.highest towers.points.team run scoreboard players set towers.PurplePenguins towers.points.team.rank 3
scoreboard players reset towers.RedRaccoons towers.points.team
scoreboard players reset towers.OrangeOtters towers.points.team
scoreboard players reset towers.PinkPikas towers.points.team
scoreboard players reset towers.GreenGoats towers.points.team
scoreboard players reset towers.CyanCougars towers.points.team
scoreboard players reset towers.PurplePenguins towers.points.team

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset towers.RedRaccoons towers.sidebar
scoreboard players reset towers.OrangeOtters towers.sidebar
scoreboard players reset towers.PinkPikas towers.sidebar
scoreboard players reset towers.GreenGoats towers.sidebar
scoreboard players reset towers.CyanCougars towers.sidebar
scoreboard players reset towers.PurplePenguins towers.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score towers.RedRaccoons towers.points.team.rank matches 1..3 run scoreboard players operation towers.RedRaccoons towers.sidebar = towers.RedRaccoons towers.points.team.temp
execute if score towers.RedRaccoons towers.points.team.rank matches 1..3 run scoreboard players display name towers.RedRaccoons towers.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score towers.OrangeOtters towers.points.team.rank matches 1..3 run scoreboard players operation towers.OrangeOtters towers.sidebar = towers.OrangeOtters towers.points.team.temp
execute if score towers.OrangeOtters towers.points.team.rank matches 1..3 run scoreboard players display name towers.OrangeOtters towers.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score towers.PinkPikas towers.points.team.rank matches 1..3 run scoreboard players operation towers.PinkPikas towers.sidebar = towers.PinkPikas towers.points.team.temp
execute if score towers.PinkPikas towers.points.team.rank matches 1..3 run scoreboard players display name towers.PinkPikas towers.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score towers.GreenGoats towers.points.team.rank matches 1..3 run scoreboard players operation towers.GreenGoats towers.sidebar = towers.GreenGoats towers.points.team.temp
execute if score towers.GreenGoats towers.points.team.rank matches 1..3 run scoreboard players display name towers.GreenGoats towers.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score towers.CyanCougars towers.points.team.rank matches 1..3 run scoreboard players operation towers.CyanCougars towers.sidebar = towers.CyanCougars towers.points.team.temp
execute if score towers.CyanCougars towers.points.team.rank matches 1..3 run scoreboard players display name towers.CyanCougars towers.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score towers.PurplePenguins towers.points.team.rank matches 1..3 run scoreboard players operation towers.PurplePenguins towers.sidebar = towers.PurplePenguins towers.points.team.temp
execute if score towers.PurplePenguins towers.points.team.rank matches 1..3 run scoreboard players display name towers.PurplePenguins towers.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS towers.RedRaccoons
team join ORANGE_OTTERS towers.OrangeOtters
team join PINK_PIKAS towers.PinkPikas
team join GREEN_GOATS towers.GreenGoats
team join CYAN_COUGARS towers.CyanCougars
team join PURPLE_PENGUINS towers.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: towers.sidebar 810

# blank line
scoreboard players set §a towers.sidebar 811

# teams alive
scoreboard players set towers.playersAlive towers.sidebar 812
execute if score towers.handler towers.players_alive matches 24 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 24/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 23 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 23/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 22 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 22/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 21 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 21/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 20 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 20/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 19 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 19/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 18 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 18/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 17 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 17/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 16 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 16/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 15 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 15/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 14 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 14/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 13 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 13/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 12 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 12/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 11 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 11/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 10 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 10/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 9 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 9/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 8 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 8/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 7 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 7/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 6 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 6/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 5 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 5/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 4 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 4/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 3 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 3/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 2 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 2/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 1 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 1/24", "color": "red", "bold": true}
execute if score towers.handler towers.players_alive matches 0 run scoreboard players display name towers.playersAlive towers.sidebar {"text": "Players Alive: 0/24", "color": "red", "bold": true}

# blank line
scoreboard players set §b towers.sidebar 813

# current game
scoreboard players set Towers towers.sidebar 814
scoreboard players display name Towers towers.sidebar {"text": "Towers", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § towers.sidebar 815