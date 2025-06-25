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

scoreboard objectives add disco.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar disco.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

# save values in a temporary place (to use later in the sidebar)
scoreboard objectives add disco.points.team.temp dummy
scoreboard players operation disco.RedRaccoons disco.points.team.temp = disco.RedRaccoons disco.points.team
scoreboard players operation disco.OrangeOtters disco.points.team.temp = disco.OrangeOtters disco.points.team
scoreboard players operation disco.PinkPikas disco.points.team.temp = disco.PinkPikas disco.points.team
scoreboard players operation disco.GreenGoats disco.points.team.temp = disco.GreenGoats disco.points.team
scoreboard players operation disco.CyanCougars disco.points.team.temp = disco.CyanCougars disco.points.team
scoreboard players operation disco.PurplePenguins disco.points.team.temp = disco.PurplePenguins disco.points.team

# set a dummy player to -1
scoreboard players set $disco.highest disco.points.team -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $disco.highest disco.points.team > disco.RedRaccoons disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.OrangeOtters disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PinkPikas disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.GreenGoats disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.CyanCougars disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PurplePenguins disco.points.team

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score disco.RedRaccoons disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.RedRaccoons disco.points.team.rank 1
execute if score disco.OrangeOtters disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.OrangeOtters disco.points.team.rank 1
execute if score disco.PinkPikas disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PinkPikas disco.points.team.rank 1
execute if score disco.GreenGoats disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.GreenGoats disco.points.team.rank 1
execute if score disco.CyanCougars disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.CyanCougars disco.points.team.rank 1
execute if score disco.PurplePenguins disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PurplePenguins disco.points.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score disco.RedRaccoons disco.points.team.rank matches 1 run scoreboard players reset disco.RedRaccoons disco.points.team
execute if score disco.OrangeOtters disco.points.team.rank matches 1 run scoreboard players reset disco.OrangeOtters disco.points.team
execute if score disco.PinkPikas disco.points.team.rank matches 1 run scoreboard players reset disco.PinkPikas disco.points.team
execute if score disco.GreenGoats disco.points.team.rank matches 1 run scoreboard players reset disco.GreenGoats disco.points.team
execute if score disco.CyanCougars disco.points.team.rank matches 1 run scoreboard players reset disco.CyanCougars disco.points.team
execute if score disco.PurplePenguins disco.points.team.rank matches 1 run scoreboard players reset disco.PurplePenguins disco.points.team

# and repeat two more times
scoreboard players set $disco.highest disco.points.team -1
scoreboard players operation $disco.highest disco.points.team > disco.RedRaccoons disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.OrangeOtters disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PinkPikas disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.GreenGoats disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.CyanCougars disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PurplePenguins disco.points.team
execute if score disco.RedRaccoons disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.RedRaccoons disco.points.team.rank 2
execute if score disco.OrangeOtters disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.OrangeOtters disco.points.team.rank 2
execute if score disco.PinkPikas disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PinkPikas disco.points.team.rank 2
execute if score disco.GreenGoats disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.GreenGoats disco.points.team.rank 2
execute if score disco.CyanCougars disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.CyanCougars disco.points.team.rank 2
execute if score disco.PurplePenguins disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PurplePenguins disco.points.team.rank 2
execute if score disco.RedRaccoons disco.points.team.rank matches 2 run scoreboard players reset disco.RedRaccoons disco.points.team
execute if score disco.OrangeOtters disco.points.team.rank matches 2 run scoreboard players reset disco.OrangeOtters disco.points.team
execute if score disco.PinkPikas disco.points.team.rank matches 2 run scoreboard players reset disco.PinkPikas disco.points.team
execute if score disco.GreenGoats disco.points.team.rank matches 2 run scoreboard players reset disco.GreenGoats disco.points.team
execute if score disco.CyanCougars disco.points.team.rank matches 2 run scoreboard players reset disco.CyanCougars disco.points.team
execute if score disco.PurplePenguins disco.points.team.rank matches 2 run scoreboard players reset disco.PurplePenguins disco.points.team

scoreboard players set $disco.highest disco.points.team -1
scoreboard players operation $disco.highest disco.points.team > disco.RedRaccoons disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.OrangeOtters disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PinkPikas disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.GreenGoats disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.CyanCougars disco.points.team
scoreboard players operation $disco.highest disco.points.team > disco.PurplePenguins disco.points.team
execute if score disco.RedRaccoons disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.RedRaccoons disco.points.team.rank 3
execute if score disco.OrangeOtters disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.OrangeOtters disco.points.team.rank 3
execute if score disco.PinkPikas disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PinkPikas disco.points.team.rank 3
execute if score disco.GreenGoats disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.GreenGoats disco.points.team.rank 3
execute if score disco.CyanCougars disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.CyanCougars disco.points.team.rank 3
execute if score disco.PurplePenguins disco.points.team = $disco.highest disco.points.team run scoreboard players set disco.PurplePenguins disco.points.team.rank 3
scoreboard players reset disco.RedRaccoons disco.points.team
scoreboard players reset disco.OrangeOtters disco.points.team
scoreboard players reset disco.PinkPikas disco.points.team
scoreboard players reset disco.GreenGoats disco.points.team
scoreboard players reset disco.CyanCougars disco.points.team
scoreboard players reset disco.PurplePenguins disco.points.team

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset disco.RedRaccoons disco.sidebar
scoreboard players reset disco.OrangeOtters disco.sidebar
scoreboard players reset disco.PinkPikas disco.sidebar
scoreboard players reset disco.GreenGoats disco.sidebar
scoreboard players reset disco.CyanCougars disco.sidebar
scoreboard players reset disco.PurplePenguins disco.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score disco.RedRaccoons disco.points.team.rank matches 1..3 run scoreboard players operation disco.RedRaccoons disco.sidebar = disco.RedRaccoons disco.points.team.temp
execute if score disco.RedRaccoons disco.points.team.rank matches 1..3 run scoreboard players display name disco.RedRaccoons disco.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score disco.OrangeOtters disco.points.team.rank matches 1..3 run scoreboard players operation disco.OrangeOtters disco.sidebar = disco.OrangeOtters disco.points.team.temp
execute if score disco.OrangeOtters disco.points.team.rank matches 1..3 run scoreboard players display name disco.OrangeOtters disco.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score disco.PinkPikas disco.points.team.rank matches 1..3 run scoreboard players operation disco.PinkPikas disco.sidebar = disco.PinkPikas disco.points.team.temp
execute if score disco.PinkPikas disco.points.team.rank matches 1..3 run scoreboard players display name disco.PinkPikas disco.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score disco.GreenGoats disco.points.team.rank matches 1..3 run scoreboard players operation disco.GreenGoats disco.sidebar = disco.GreenGoats disco.points.team.temp
execute if score disco.GreenGoats disco.points.team.rank matches 1..3 run scoreboard players display name disco.GreenGoats disco.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score disco.CyanCougars disco.points.team.rank matches 1..3 run scoreboard players operation disco.CyanCougars disco.sidebar = disco.CyanCougars disco.points.team.temp
execute if score disco.CyanCougars disco.points.team.rank matches 1..3 run scoreboard players display name disco.CyanCougars disco.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score disco.PurplePenguins disco.points.team.rank matches 1..3 run scoreboard players operation disco.PurplePenguins disco.sidebar = disco.PurplePenguins disco.points.team.temp
execute if score disco.PurplePenguins disco.points.team.rank matches 1..3 run scoreboard players display name disco.PurplePenguins disco.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS disco.RedRaccoons
team join ORANGE_OTTERS disco.OrangeOtters
team join PINK_PIKAS disco.PinkPikas
team join GREEN_GOATS disco.GreenGoats
team join CYAN_COUGARS disco.CyanCougars
team join PURPLE_PENGUINS disco.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: disco.sidebar 4201

# blank line
scoreboard players set §a disco.sidebar 4202

# teams alive
scoreboard players set disco.teamsAlive disco.sidebar 4203
execute if score disco.handler disco.teams_alive matches 6 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 6/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 5 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 5/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 4 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 4/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 3 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 3/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 2 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 2/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 1 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 1/6", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 0 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 0/6", "color": "red", "bold": true}

# blank line
scoreboard players set §b disco.sidebar 4204

# round number
scoreboard players set disco.roundsPlayed disco.sidebar 4205
execute if score disco.handler disco.rounds_played matches 0 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 0", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 1 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 1", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 2 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 2", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 3 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 3", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 4 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 4", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 5 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 5", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 6 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 6", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 7 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 7", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 8 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 8", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 9 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 9", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 10 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 10", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 11 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 11", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 12 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 12", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 13 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 13", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 14 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 14", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 15 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 15", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 16 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 16", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 17 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 17", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 18 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 18", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 19 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 19", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 20 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 20", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 21 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 21", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 22 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 22", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 23 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 23", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 24 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 24", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 25 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 25", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 26 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 26", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 27 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 27", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 28 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 28", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 29 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 29", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 30 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 30", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 31 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 31", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 32 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 32", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 33 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 33", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 34 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 34", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 35 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 35", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 36 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 36", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 37 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 37", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 38 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 38", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 39 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 39", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 40 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 40", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 41 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 41", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 42 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 42", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 43 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 43", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 44 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 44", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 45 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 45", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 46 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 46", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 47 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 47", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 48 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 48", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 49 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 49", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 50 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 50", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 51 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 51", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 52 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 52", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 53 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 53", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 54 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 54", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 55 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 55", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 56 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 56", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 57 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 57", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 58 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 58", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 59 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 59", "color": "dark_red", "bold": true}
execute if score disco.handler disco.rounds_played matches 60 run scoreboard players display name disco.roundsPlayed disco.sidebar {"text": "Rounds Played: 60", "color": "dark_red", "bold": true}

# current game
scoreboard players set Disco disco.sidebar 4206
scoreboard players display name Disco disco.sidebar {"text": "Disco", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § disco.sidebar 4207