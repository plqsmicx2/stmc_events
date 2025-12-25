# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <cyan>Spleef<cyan>
# <cyan>Time: ##<cyan>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add spleef.sidebar dummy
$scoreboard objectives modify spleef.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar spleef.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function stmc:games/trials/spleef/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset spleef.RedRaccoons spleef.sidebar
scoreboard players reset spleef.OrangeOtters spleef.sidebar
scoreboard players reset spleef.PinkPikas spleef.sidebar
scoreboard players reset spleef.YellowYaks spleef.sidebar
scoreboard players reset spleef.GreenGoats spleef.sidebar
scoreboard players reset spleef.CyanCougars spleef.sidebar
scoreboard players reset spleef.PurplePenguins spleef.sidebar
scoreboard players reset spleef.BlueBears spleef.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score spleef.RedRaccoons spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.RedRaccoons spleef.sidebar = spleef.RedRaccoons spleef.points.team
$execute if score spleef.RedRaccoons spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.RedRaccoons spleef.sidebar {"text": "  $(redName)", "color": "red"}
execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.OrangeOtters spleef.sidebar = spleef.OrangeOtters spleef.points.team
$execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.OrangeOtters spleef.sidebar {"text": "  $(orangeName)", "color": "gold"}
execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PinkPikas spleef.sidebar = spleef.PinkPikas spleef.points.team
$execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PinkPikas spleef.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
execute if score spleef.YellowYaks spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.YellowYaks spleef.sidebar = spleef.YellowYaks spleef.points.team
$execute if score spleef.YellowYaks spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.YellowYaks spleef.sidebar {"text": "  $(yellowName)", "color": "yellow"}
execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.GreenGoats spleef.sidebar = spleef.GreenGoats spleef.points.team
$execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.GreenGoats spleef.sidebar {"text": "  $(greenName)", "color": "dark_green"}
execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.CyanCougars spleef.sidebar = spleef.CyanCougars spleef.points.team
$execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.CyanCougars spleef.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PurplePenguins spleef.sidebar = spleef.PurplePenguins spleef.points.team
$execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PurplePenguins spleef.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
execute if score spleef.BlueBears spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.BlueBears spleef.sidebar = spleef.BlueBears spleef.points.team
$execute if score spleef.BlueBears spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.BlueBears spleef.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS spleef.RedRaccoons
team join ORANGE_OTTERS spleef.OrangeOtters
team join PINK_PIKAS spleef.PinkPikas
team join YELLOW_YAKS spleef.YellowYaks
team join GREEN_GOATS spleef.GreenGoats
team join CYAN_COUGARS spleef.CyanCougars
team join PURPLE_PENGUINS spleef.PurplePenguins
team join BLUE_BEARS spleef.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: spleef.sidebar 100

# blank line
scoreboard players set §a spleef.sidebar 101

# current game
scoreboard players set Disco spleef.sidebar 102
scoreboard players display name Disco spleef.sidebar {"text": "Spleef", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § spleef.sidebar 103