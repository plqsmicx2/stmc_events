# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <cyan>Disco<cyan>
# <red>Rounds Played: ##<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add disco.sidebar dummy
$scoreboard objectives modify disco.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar disco.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function trials:disco/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset disco.RedRaccoons disco.sidebar
scoreboard players reset disco.OrangeOtters disco.sidebar
scoreboard players reset disco.PinkPikas disco.sidebar
scoreboard players reset disco.YellowYaks disco.sidebar
scoreboard players reset disco.GreenGoats disco.sidebar
scoreboard players reset disco.CyanCougars disco.sidebar
scoreboard players reset disco.PurplePenguins disco.sidebar
scoreboard players reset disco.BlueBears disco.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score disco.RedRaccoons disco.points.team.rank matches 1..3 run scoreboard players operation disco.RedRaccoons disco.sidebar = disco.RedRaccoons disco.points.team
$execute if score disco.RedRaccoons disco.points.team.rank matches 1..3 run scoreboard players display name disco.RedRaccoons disco.sidebar {"text": "  $(redName)", "color": "red"}
execute if score disco.OrangeOtters disco.points.team.rank matches 1..3 run scoreboard players operation disco.OrangeOtters disco.sidebar = disco.OrangeOtters disco.points.team
$execute if score disco.OrangeOtters disco.points.team.rank matches 1..3 run scoreboard players display name disco.OrangeOtters disco.sidebar {"text": "  $(orangeName)", "color": "gold"}
execute if score disco.PinkPikas disco.points.team.rank matches 1..3 run scoreboard players operation disco.PinkPikas disco.sidebar = disco.PinkPikas disco.points.team
$execute if score disco.PinkPikas disco.points.team.rank matches 1..3 run scoreboard players display name disco.PinkPikas disco.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
execute if score disco.YellowYaks disco.points.team.rank matches 1..3 run scoreboard players operation disco.YellowYaks disco.sidebar = disco.YellowYaks disco.points.team
$execute if score disco.YellowYaks disco.points.team.rank matches 1..3 run scoreboard players display name disco.YellowYaks disco.sidebar {"text": "  $(yellowName)", "color": "yellow"}
execute if score disco.GreenGoats disco.points.team.rank matches 1..3 run scoreboard players operation disco.GreenGoats disco.sidebar = disco.GreenGoats disco.points.team
$execute if score disco.GreenGoats disco.points.team.rank matches 1..3 run scoreboard players display name disco.GreenGoats disco.sidebar {"text": "  $(greenName)", "color": "dark_green"}
execute if score disco.CyanCougars disco.points.team.rank matches 1..3 run scoreboard players operation disco.CyanCougars disco.sidebar = disco.CyanCougars disco.points.team
$execute if score disco.CyanCougars disco.points.team.rank matches 1..3 run scoreboard players display name disco.CyanCougars disco.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
execute if score disco.PurplePenguins disco.points.team.rank matches 1..3 run scoreboard players operation disco.PurplePenguins disco.sidebar = disco.PurplePenguins disco.points.team
$execute if score disco.PurplePenguins disco.points.team.rank matches 1..3 run scoreboard players display name disco.PurplePenguins disco.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
execute if score disco.BlueBears disco.points.team.rank matches 1..3 run scoreboard players operation disco.BlueBears disco.sidebar = disco.BlueBears disco.points.team
$execute if score disco.BlueBears disco.points.team.rank matches 1..3 run scoreboard players display name disco.BlueBears disco.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS disco.RedRaccoons
team join ORANGE_OTTERS disco.OrangeOtters
team join PINK_PIKAS disco.PinkPikas
team join YELLOW_YAKS disco.YellowYaks
team join GREEN_GOATS disco.GreenGoats
team join CYAN_COUGARS disco.CyanCougars
team join PURPLE_PENGUINS disco.PurplePenguins
team join BLUE_BEARS disco.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: disco.sidebar 100

# blank line
scoreboard players set §a disco.sidebar 101

# teams alive
scoreboard players set disco.teamsAlive disco.sidebar 102
execute if score disco.handler disco.teams_alive matches 8 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 8/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 7 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 7/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 6 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 6/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 5 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 5/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 4 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 4/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 3 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 3/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 2 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 2/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 1 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 1/8", "color": "red", "bold": true}
execute if score disco.handler disco.teams_alive matches 0 run scoreboard players display name disco.teamsAlive disco.sidebar {"text": "Teams Alive: 0/8", "color": "red", "bold": true}

# blank line
scoreboard players set §b disco.sidebar 103

# round number
scoreboard players set disco.roundsPlayed disco.sidebar 104
scoreboard players display name disco.roundsPlayed disco.sidebar [{"text": "Rounds Played: ", "color": "dark_red", "bold": true},{score:{name:"disco.handler",objective:"disco.rounds_played"},color:dark_red,bold:true},{text:"/60",color:"dark_red",bold:true}]

# current game
scoreboard players set Disco disco.sidebar 105
scoreboard players display name Disco disco.sidebar {"text": "Scramble", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § disco.sidebar 106