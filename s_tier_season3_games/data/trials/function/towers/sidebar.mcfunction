# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <cyan>towers<cyan>
# <cyan>Time: ##<cyan>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add towers.sidebar dummy
$scoreboard objectives modify towers.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar towers.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function trials:towers/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset towers.RedRaccoons towers.sidebar
scoreboard players reset towers.OrangeOtters towers.sidebar
scoreboard players reset towers.PinkPikas towers.sidebar
scoreboard players reset towers.YellowYaks towers.sidebar
scoreboard players reset towers.GreenGoats towers.sidebar
scoreboard players reset towers.CyanCougars towers.sidebar
scoreboard players reset towers.PurplePenguins towers.sidebar
scoreboard players reset towers.BlueBears towers.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score towers.RedRaccoons towers.points.team.rank matches 1..3 run scoreboard players operation towers.RedRaccoons towers.sidebar = towers.RedRaccoons towers.points.team
execute if score towers.RedRaccoons towers.points.team.rank matches 1..3 run scoreboard players display name towers.RedRaccoons towers.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score towers.OrangeOtters towers.points.team.rank matches 1..3 run scoreboard players operation towers.OrangeOtters towers.sidebar = towers.OrangeOtters towers.points.team
execute if score towers.OrangeOtters towers.points.team.rank matches 1..3 run scoreboard players display name towers.OrangeOtters towers.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score towers.PinkPikas towers.points.team.rank matches 1..3 run scoreboard players operation towers.PinkPikas towers.sidebar = towers.PinkPikas towers.points.team
execute if score towers.PinkPikas towers.points.team.rank matches 1..3 run scoreboard players display name towers.PinkPikas towers.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score towers.YellowYaks towers.points.team.rank matches 1..3 run scoreboard players operation towers.YellowYaks towers.sidebar = towers.YellowYaks towers.points.team
execute if score towers.YellowYaks towers.points.team.rank matches 1..3 run scoreboard players display name towers.YellowYaks towers.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
execute if score towers.GreenGoats towers.points.team.rank matches 1..3 run scoreboard players operation towers.GreenGoats towers.sidebar = towers.GreenGoats towers.points.team
execute if score towers.GreenGoats towers.points.team.rank matches 1..3 run scoreboard players display name towers.GreenGoats towers.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score towers.CyanCougars towers.points.team.rank matches 1..3 run scoreboard players operation towers.CyanCougars towers.sidebar = towers.CyanCougars towers.points.team
execute if score towers.CyanCougars towers.points.team.rank matches 1..3 run scoreboard players display name towers.CyanCougars towers.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score towers.PurplePenguins towers.points.team.rank matches 1..3 run scoreboard players operation towers.PurplePenguins towers.sidebar = towers.PurplePenguins towers.points.team
execute if score towers.PurplePenguins towers.points.team.rank matches 1..3 run scoreboard players display name towers.PurplePenguins towers.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
execute if score towers.BlueBears towers.points.team.rank matches 1..3 run scoreboard players operation towers.BlueBears towers.sidebar = towers.BlueBears towers.points.team
execute if score towers.BlueBears towers.points.team.rank matches 1..3 run scoreboard players display name towers.BlueBears towers.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS towers.RedRaccoons
team join ORANGE_OTTERS towers.OrangeOtters
team join PINK_PIKAS towers.PinkPikas
team join YELLOW_YAKS towers.YellowYaks
team join GREEN_GOATS towers.GreenGoats
team join CYAN_COUGARS towers.CyanCougars
team join PURPLE_PENGUINS towers.PurplePenguins
team join BLUE_BEARS towers.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: towers.sidebar 100

# blank line
scoreboard players set §a towers.sidebar 101

# current game
scoreboard players set towers.head towers.sidebar 102
scoreboard players display name towers.head towers.sidebar {"text": "Towers", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § towers.sidebar 103