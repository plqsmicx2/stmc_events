# finale sidebar

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add finale.sidebar dummy
$scoreboard objectives modify finale.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar finale.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset team.RedRaccoons finale.sidebar
scoreboard players reset team.OrangeOtters finale.sidebar
scoreboard players reset team.PinkPikas finale.sidebar
scoreboard players reset team.YellowYaks finale.sidebar
scoreboard players reset team.GreenGoats finale.sidebar
scoreboard players reset team.CyanCougars finale.sidebar
scoreboard players reset team.PurplePenguins finale.sidebar
scoreboard players reset team.BlueBears finale.sidebar

# they'll be automatically ranked by the scoreboard itself
scoreboard players operation team.RedRaccoons finale.sidebar = team.RedRaccoons stats.points.team
$scoreboard players display name team.RedRaccoons finale.sidebar {"text": "  $(redName)", "color": "red"}
scoreboard players operation team.OrangeOtters finale.sidebar = team.OrangeOtters stats.points.team
$scoreboard players display name team.OrangeOtters finale.sidebar {"text": "  $(orangeName)", "color": "gold"}
scoreboard players operation team.PinkPikas finale.sidebar = team.PinkPikas stats.points.team
$scoreboard players display name team.PinkPikas finale.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
scoreboard players operation team.YellowYaks finale.sidebar = team.YellowYaks stats.points.team
$scoreboard players display name team.YellowYaks finale.sidebar {"text": "  $(yellowName)", "color": "yellow"}
scoreboard players operation team.GreenGoats finale.sidebar = team.GreenGoats stats.points.team
$scoreboard players display name team.GreenGoats finale.sidebar {"text": "  $(greenName)", "color": "dark_green"}
scoreboard players operation team.CyanCougars finale.sidebar = team.CyanCougars stats.points.team
$scoreboard players display name team.CyanCougars finale.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
scoreboard players operation team.PurplePenguins finale.sidebar = team.PurplePenguins stats.points.team
$scoreboard players display name team.PurplePenguins finale.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
scoreboard players operation team.BlueBears finale.sidebar = team.BlueBears stats.points.team
$scoreboard players display name team.BlueBears finale.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS team.RedRaccoons
team join ORANGE_OTTERS team.OrangeOtters
team join PINK_PIKAS team.PinkPikas
team join YELLOW_YAKS team.YellowYaks
team join GREEN_GOATS team.GreenGoats
team join CYAN_COUGARS team.CyanCougars
team join PURPLE_PENGUINS team.PurplePenguins
team join BLUE_BEARS team.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: finale.sidebar 7000

# blank line
scoreboard players set §a finale.sidebar 7001

scoreboard players set finale.header finale.sidebar 7002
scoreboard players display name finale.header finale.sidebar {text:"Finale!",color:white,bold:true}

# blank line
scoreboard players set §b finale.sidebar 7003