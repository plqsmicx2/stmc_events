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

scoreboard objectives add scramble.sidebar dummy
$scoreboard objectives modify scramble.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar scramble.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function stmc:games/trials/scramble/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset scramble.RedRaccoons scramble.sidebar
scoreboard players reset scramble.OrangeOtters scramble.sidebar
scoreboard players reset scramble.PinkPikas scramble.sidebar
scoreboard players reset scramble.YellowYaks scramble.sidebar
scoreboard players reset scramble.GreenGoats scramble.sidebar
scoreboard players reset scramble.CyanCougars scramble.sidebar
scoreboard players reset scramble.PurplePenguins scramble.sidebar
scoreboard players reset scramble.BlueBears scramble.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score scramble.RedRaccoons scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.RedRaccoons scramble.sidebar = scramble.RedRaccoons scramble.points.team
$execute if score scramble.RedRaccoons scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.RedRaccoons scramble.sidebar {"text": "  $(redName)", "color": "red"}
execute if score scramble.OrangeOtters scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.OrangeOtters scramble.sidebar = scramble.OrangeOtters scramble.points.team
$execute if score scramble.OrangeOtters scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.OrangeOtters scramble.sidebar {"text": "  $(orangeName)", "color": "gold"}
execute if score scramble.PinkPikas scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.PinkPikas scramble.sidebar = scramble.PinkPikas scramble.points.team
$execute if score scramble.PinkPikas scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.PinkPikas scramble.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
execute if score scramble.YellowYaks scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.YellowYaks scramble.sidebar = scramble.YellowYaks scramble.points.team
$execute if score scramble.YellowYaks scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.YellowYaks scramble.sidebar {"text": "  $(yellowName)", "color": "yellow"}
execute if score scramble.GreenGoats scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.GreenGoats scramble.sidebar = scramble.GreenGoats scramble.points.team
$execute if score scramble.GreenGoats scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.GreenGoats scramble.sidebar {"text": "  $(greenName)", "color": "dark_green"}
execute if score scramble.CyanCougars scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.CyanCougars scramble.sidebar = scramble.CyanCougars scramble.points.team
$execute if score scramble.CyanCougars scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.CyanCougars scramble.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
execute if score scramble.PurplePenguins scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.PurplePenguins scramble.sidebar = scramble.PurplePenguins scramble.points.team
$execute if score scramble.PurplePenguins scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.PurplePenguins scramble.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
execute if score scramble.BlueBears scramble.points.team.rank matches 1..3 run scoreboard players operation scramble.BlueBears scramble.sidebar = scramble.BlueBears scramble.points.team
$execute if score scramble.BlueBears scramble.points.team.rank matches 1..3 run scoreboard players display name scramble.BlueBears scramble.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS scramble.RedRaccoons
team join ORANGE_OTTERS scramble.OrangeOtters
team join PINK_PIKAS scramble.PinkPikas
team join YELLOW_YAKS scramble.YellowYaks
team join GREEN_GOATS scramble.GreenGoats
team join CYAN_COUGARS scramble.CyanCougars
team join PURPLE_PENGUINS scramble.PurplePenguins
team join BLUE_BEARS scramble.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: scramble.sidebar 100

# blank line
scoreboard players set §a scramble.sidebar 101

# teams alive
scoreboard players set scramble.teamsAlive scramble.sidebar 102
execute if score scramble.handler scramble.teams_alive matches 8 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 8/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 7 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 7/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 6 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 6/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 5 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 5/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 4 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 4/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 3 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 3/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 2 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 2/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 1 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 1/8", "color": "red", "bold": true}
execute if score scramble.handler scramble.teams_alive matches 0 run scoreboard players display name scramble.teamsAlive scramble.sidebar {"text": "Teams Alive: 0/8", "color": "red", "bold": true}

# blank line
scoreboard players set §b scramble.sidebar 103

# round number
scoreboard players set scramble.roundsPlayed scramble.sidebar 104
scoreboard players display name scramble.roundsPlayed scramble.sidebar [{"text": "Rounds Played: ", "color": "dark_red", "bold": true},{score:{name:"scramble.handler",objective:"scramble.rounds_played"},color:dark_red,bold:true},{text:"/60",color:"dark_red",bold:true}]

# current game
scoreboard players set Disco scramble.sidebar 105
scoreboard players display name Disco scramble.sidebar {"text": "Scramble", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § scramble.sidebar 106