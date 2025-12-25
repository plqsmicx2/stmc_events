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
scoreboard players operation team.RedRaccoons lobby.sidebar = team.RedRaccoons stats.points.team
$scoreboard players display name team.RedRaccoons lobby.sidebar {"text": "  $(redName)", "color": "red"}
scoreboard players operation team.OrangeOtters lobby.sidebar = team.OrangeOtters stats.points.team
$scoreboard players display name team.OrangeOtters lobby.sidebar {"text": "  $(orangeName)", "color": "gold"}
scoreboard players operation team.PinkPikas lobby.sidebar = team.PinkPikas stats.points.team
$scoreboard players display name team.PinkPikas lobby.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
scoreboard players operation team.YellowYaks lobby.sidebar = team.YellowYaks stats.points.team
$scoreboard players display name team.YellowYaks lobby.sidebar {"text": "  $(yellowName)", "color": "yellow"}
scoreboard players operation team.GreenGoats lobby.sidebar = team.GreenGoats stats.points.team
$scoreboard players display name team.GreenGoats lobby.sidebar {"text": "  $(greenName)", "color": "dark_green"}
scoreboard players operation team.CyanCougars lobby.sidebar = team.CyanCougars stats.points.team
$scoreboard players display name team.CyanCougars lobby.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
scoreboard players operation team.PurplePenguins lobby.sidebar = team.PurplePenguins stats.points.team
$scoreboard players display name team.PurplePenguins lobby.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
scoreboard players operation team.BlueBears lobby.sidebar = team.BlueBears stats.points.team
$scoreboard players display name team.BlueBears lobby.sidebar {"text": "  $(blueName)", "color": "blue"}

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
scoreboard players set §e§lPoints: finale.sidebar 5000

# blank line
scoreboard players set §a finale.sidebar 5001

# timer
scoreboard players set finale.timer finale.sidebar 5002
execute if score stmc.handler event.timer.bgSecs matches ..9 run scoreboard players display name finale.timer finale.sidebar [{text:"Time: ",color:red,bold:true},{score:{name:"stmc.handler",objective:"event.timer.bgMins"},color:red},{text:":0",color:red},{score:{name:"stmc.handler",objective:"event.timer.bgSecs"},color:red}]
execute if score stmc.handler event.timer.bgSecs matches 10..59 run scoreboard players display name finale.timer finale.sidebar [{text:"Time: ",color:red,bold:true},{score:{name:"stmc.handler",objective:"event.timer.bgMins"},color:red},{text:":",color:red},{score:{name:"stmc.handler",objective:"event.timer.bgSecs"},color:red}]

scoreboard players set finale.header finale.sidebar 5003
scoreboard players display name finale.header finale.sidebar {text:"Finale!",color:white,bold:true}

# blank line
scoreboard players set §b finale.sidebar 5004