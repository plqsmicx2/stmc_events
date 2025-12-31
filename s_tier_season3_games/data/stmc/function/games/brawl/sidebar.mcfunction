# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <gold>Survival Games<gold>
# <red>Round #/3<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add brawl.sidebar dummy
$scoreboard objectives modify brawl.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar brawl.sidebar

# <===== RANK TEAMS =====>

function stmc:games/brawl/helper/points/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset brawl.RedRaccoons brawl.sidebar
scoreboard players reset brawl.OrangeOtters brawl.sidebar
scoreboard players reset brawl.PinkPikas brawl.sidebar
scoreboard players reset brawl.YellowYaks brawl.sidebar
scoreboard players reset brawl.GreenGoats brawl.sidebar
scoreboard players reset brawl.CyanCougars brawl.sidebar
scoreboard players reset brawl.PurplePenguins brawl.sidebar
scoreboard players reset brawl.BlueBears brawl.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score brawl.RedRaccoons brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.RedRaccoons brawl.sidebar = brawl.RedRaccoons brawl.points.team
$execute if score brawl.RedRaccoons brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.RedRaccoons brawl.sidebar {"text": "  $(redName)", "color": "red"}
execute if score brawl.OrangeOtters brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.OrangeOtters brawl.sidebar = brawl.OrangeOtters brawl.points.team
$execute if score brawl.OrangeOtters brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.OrangeOtters brawl.sidebar {"text": "  $(orangeName)", "color": "gold"}
execute if score brawl.PinkPikas brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.PinkPikas brawl.sidebar = brawl.PinkPikas brawl.points.team
$execute if score brawl.PinkPikas brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.PinkPikas brawl.sidebar {"text": "  $(pinkName)", "color": "light_purple"}
execute if score brawl.YellowYaks brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.YellowYaks brawl.sidebar = brawl.YellowYaks brawl.points.team
$execute if score brawl.YellowYaks brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.YellowYaks brawl.sidebar {"text": "  $(yellowName)", "color": "yellow"}
execute if score brawl.GreenGoats brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.GreenGoats brawl.sidebar = brawl.GreenGoats brawl.points.team
$execute if score brawl.GreenGoats brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.GreenGoats brawl.sidebar {"text": "  $(greenName)", "color": "dark_green"}
execute if score brawl.CyanCougars brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.CyanCougars brawl.sidebar = brawl.CyanCougars brawl.points.team
$execute if score brawl.CyanCougars brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.CyanCougars brawl.sidebar {"text": "  $(cyanName)", "color": "dark_aqua"}
execute if score brawl.PurplePenguins brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.PurplePenguins brawl.sidebar = brawl.PurplePenguins brawl.points.team
$execute if score brawl.PurplePenguins brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.PurplePenguins brawl.sidebar {"text": "  $(purpleName)", "color": "dark_purple"}
execute if score brawl.BlueBears brawl.points.team.rank matches 1..3 run scoreboard players operation brawl.BlueBears brawl.sidebar = brawl.BlueBears brawl.points.team
$execute if score brawl.BlueBears brawl.points.team.rank matches 1..3 run scoreboard players display name brawl.BlueBears brawl.sidebar {"text": "  $(blueName)", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS brawl.RedRaccoons
team join ORANGE_OTTERS brawl.OrangeOtters
team join PINK_PIKAS brawl.PinkPikas
team join YELLOW_YAKS brawl.YellowYaks
team join GREEN_GOATS brawl.GreenGoats
team join CYAN_COUGARS brawl.CyanCougars
team join PURPLE_PENGUINS brawl.PurplePenguins
team join BLUE_BEARS brawl.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: brawl.sidebar 601

# blank line
scoreboard players set §a brawl.sidebar 602

# teams alive
scoreboard players set brawl.teamsAlive brawl.sidebar 603
scoreboard players display name brawl.teamsAlive brawl.sidebar [{"text": "Teams Alive: ", "color": "red", "bold": true},{score:{name:"brawl.handler",objective:"brawl.teams_alive"}, "color": "red", "bold": true},{text:"/8", "color": "red", "bold": true}]

# blank line
scoreboard players set §b brawl.sidebar 604

# round number
scoreboard players add brawl.handler brawl.roundsCompleted 1
scoreboard players set brawl.roundNum brawl.sidebar 605
scoreboard players display name brawl.roundNum brawl.sidebar [{"text": "Round #", "color": "red", "bold": true},{score:{name:"brawl.handler",objective:"brawl.roundsCompleted"}, "color": "red", "bold": true},{text:"/3", "color": "red", "bold": true}]
scoreboard players remove brawl.handler brawl.roundsCompleted 1

# current game
scoreboard players set SurvivalGames brawl.sidebar 606
scoreboard players display name SurvivalGames brawl.sidebar {"text": "Brawl", "color": "gold", "bold": true}

# blank line #2
scoreboard players set § brawl.sidebar 607

# current game
scoreboard players set .currentGame brawl.sidebar 608
$scoreboard players display name .currentGame brawl.sidebar {text:"[ Game $(currentGame)/8 ]",color:gray}