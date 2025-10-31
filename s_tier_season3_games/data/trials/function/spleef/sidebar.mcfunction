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

scoreboard objectives add spleef.sidebar dummy {"text": "  STMC Open  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar spleef.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

function trials:disco/calculate_rankings

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
execute if score spleef.RedRaccoons spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.RedRaccoons spleef.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.OrangeOtters spleef.sidebar = spleef.OrangeOtters spleef.points.team
execute if score spleef.OrangeOtters spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.OrangeOtters spleef.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PinkPikas spleef.sidebar = spleef.PinkPikas spleef.points.team
execute if score spleef.PinkPikas spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PinkPikas spleef.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score spleef.YellowYaks spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.YellowYaks spleef.sidebar = spleef.YellowYaks spleef.points.team
execute if score spleef.YellowYaks spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.YellowYaks spleef.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.GreenGoats spleef.sidebar = spleef.GreenGoats spleef.points.team
execute if score spleef.GreenGoats spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.GreenGoats spleef.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.CyanCougars spleef.sidebar = spleef.CyanCougars spleef.points.team
execute if score spleef.CyanCougars spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.CyanCougars spleef.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.PurplePenguins spleef.sidebar = spleef.PurplePenguins spleef.points.team
execute if score spleef.PurplePenguins spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.PurplePenguins spleef.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
execute if score spleef.BlueBears spleef.points.team.rank matches 1..3 run scoreboard players operation spleef.BlueBears spleef.sidebar = spleef.BlueBears spleef.points.team
execute if score spleef.BlueBears spleef.points.team.rank matches 1..3 run scoreboard players display name spleef.BlueBears spleef.sidebar {"text": "  Blue Bears", "color": "blue"}

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
scoreboard players set §e§lPoints: spleef.sidebar 380

# blank line
scoreboard players set §a spleef.sidebar 381

# time
scoreboard players set spleef.time spleef.sidebar 382
execute if score spleef.handler spleef.timer.game.seconds matches 0..9 run scoreboard players display name spleef.time spleef.sidebar [{score:{name:spleef.handler,objective:spleef.timer.game.minutes}, color:red, bold:true},{text:":0",color:red,bold:true},{score:{name:spleef.handler,objective:spleef.timer.game.seconds}, color:red, bold:true}]
execute if score spleef.handler spleef.timer.game.seconds matches 10.. run scoreboard players display name spleef.time spleef.sidebar [{score:{name:spleef.handler,objective:spleef.timer.game.minutes}, color:red, bold:true},{text:":",color:red,bold:true},{score:{name:spleef.handler,objective:spleef.timer.game.seconds}, color:red, bold:true}]

# current game
scoreboard players set Disco spleef.sidebar 383
scoreboard players display name Disco spleef.sidebar {"text": "Spleef", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § spleef.sidebar 384