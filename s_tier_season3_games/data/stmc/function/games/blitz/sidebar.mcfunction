# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <pink>Blitz<pink>
# 
# <yellow>Cores:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add blitz.sidebar dummy
$scoreboard objectives modify blitz.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar blitz.sidebar

# <===== RANK TEAMS =====>

function stmc:games/blitz/points/calculate_rankings

# get players alive

# check players on each team
scoreboard players set blitz.RedRaccoons blitz.stats.playersAlive 0
execute as @a[team=RED_RACCOONS] if score @s blitz.alive matches 1 run scoreboard players add blitz.RedRaccoons blitz.stats.playersAlive 1
scoreboard players set blitz.OrangeOtters blitz.stats.playersAlive 0
execute as @a[team=ORANGE_OTTERS] if score @s blitz.alive matches 1 run scoreboard players add blitz.OrangeOtters blitz.stats.playersAlive 1
scoreboard players set blitz.PinkPikas blitz.stats.playersAlive 0
execute as @a[team=PINK_PIKAS] if score @s blitz.alive matches 1 run scoreboard players add blitz.PinkPikas blitz.stats.playersAlive 1
scoreboard players set blitz.YellowYaks blitz.stats.playersAlive 0
execute as @a[team=YELLOW_YAKS] if score @s blitz.alive matches 1 run scoreboard players add blitz.YellowYaks blitz.stats.playersAlive 1
scoreboard players set blitz.GreenGoats blitz.stats.playersAlive 0
execute as @a[team=GREEN_GOATS] if score @s blitz.alive matches 1 run scoreboard players add blitz.GreenGoats blitz.stats.playersAlive 1
scoreboard players set blitz.CyanCougars blitz.stats.playersAlive 0
execute as @a[team=CYAN_COUGARS] if score @s blitz.alive matches 1 run scoreboard players add blitz.CyanCougars blitz.stats.playersAlive 1
scoreboard players set blitz.PurplePenguins blitz.stats.playersAlive 0
execute as @a[team=PURPLE_PENGUINS] if score @s blitz.alive matches 1 run scoreboard players add blitz.PurplePenguins blitz.stats.playersAlive 1
scoreboard players set blitz.BlueBears blitz.stats.playersAlive 0
execute as @a[team=BLUE_BEARS] if score @s blitz.alive matches 1 run scoreboard players add blitz.BlueBears blitz.stats.playersAlive 1

# check teams alive
scoreboard players set blitz.handler blitz.stats.teamsAlive 0
execute if score blitz.RedRaccoons blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.OrangeOtters blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.PinkPikas blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.YellowYaks blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.GreenGoats blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.CyanCougars blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.PurplePenguins blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.BlueBears blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset blitz.RedRaccoons blitz.sidebar
scoreboard players reset blitz.OrangeOtters blitz.sidebar
scoreboard players reset blitz.PinkPikas blitz.sidebar
scoreboard players reset blitz.YellowYaks blitz.sidebar
scoreboard players reset blitz.GreenGoats blitz.sidebar
scoreboard players reset blitz.CyanCougars blitz.sidebar
scoreboard players reset blitz.PurplePenguins blitz.sidebar
scoreboard players reset blitz.BlueBears blitz.sidebar

# track teams' core status:

scoreboard players set blitz.RedRaccoons blitz.sidebar 1
$execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.RedRaccoons blitz.sidebar {"text": "✔  $(redName)", "color": "red"}
$execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.RedRaccoons blitz.sidebar [{score:{name:"blitz.RedRaccoons",objective:"blitz.stats.playersAlive"},color:red,bold:true},{"text": "  $(redName)", "color": "red",bold:false}]
scoreboard players set blitz.OrangeOtters blitz.sidebar 1
$execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.OrangeOtters blitz.sidebar {"text": "✔  $(orangeName)", "color": "gold"}
$execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.OrangeOtters blitz.sidebar [{score:{name:"blitz.OrangeOtters",objective:"blitz.stats.playersAlive"},color:gold,bold:true},{"text": "  $(orangeName)", "color": "gold",bold:false}]
scoreboard players set blitz.PinkPikas blitz.sidebar 1
$execute if score blitz.PinkPikas blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.PinkPikas blitz.sidebar {"text": "✔  $(pinkName)", "color": "light_purple"}
$execute if score blitz.PinkPikas blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.PinkPikas blitz.sidebar [{score:{name:"blitz.PinkPikas",objective:"blitz.stats.playersAlive"},color:light_purple,bold:true},{"text": "  $(pinkName)", "color": "light_purple",bold:false}]
scoreboard players set blitz.YellowYaks blitz.sidebar 1
$execute if score blitz.YellowYaks blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.YellowYaks blitz.sidebar {"text": "✔  $(yellowName)", "color": "yellow"}
$execute if score blitz.YellowYaks blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.YellowYaks blitz.sidebar [{score:{name:"blitz.YellowYaks",objective:"blitz.stats.playersAlive"},color:yellow,bold:true},{"text": "  $(yellowName)", "color": "yellow",bold:false}]
scoreboard players set blitz.GreenGoats blitz.sidebar 1
$execute if score blitz.GreenGoats blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.GreenGoats blitz.sidebar {"text": "✔  $(greenName)", "color": "green"}
$execute if score blitz.GreenGoats blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.GreenGoats blitz.sidebar [{score:{name:"blitz.GreenGoats",objective:"blitz.stats.playersAlive"},color:green,bold:true},{"text": "  $(greenName)", "color": "green",bold:false}]
scoreboard players set blitz.CyanCougars blitz.sidebar 1
$execute if score blitz.CyanCougars blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.CyanCougars blitz.sidebar {"text": "✔  $(cyanName)", "color": "dark_aqua"}
$execute if score blitz.CyanCougars blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.CyanCougars blitz.sidebar [{score:{name:"blitz.CyanCougars",objective:"blitz.stats.playersAlive"},color:dark_aqua,bold:true},{"text": "  $(cyanName)", "color": "dark_aqua",bold:false}]
scoreboard players set blitz.PurplePenguins blitz.sidebar 1
$execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.PurplePenguins blitz.sidebar {"text": "✔  $(purpleName)", "color": "dark_purple"}
$execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.PurplePenguins blitz.sidebar [{score:{name:"blitz.PurplePenguins",objective:"blitz.stats.playersAlive"},color:dark_purple,bold:true},{"text": "  $(purpleName)", "color": "dark_purple",bold:false}]
scoreboard players set blitz.BlueBears blitz.sidebar 1
$execute if score blitz.BlueBears blitz.stats.coreIntact matches 1 run scoreboard players display name blitz.BlueBears blitz.sidebar {"text": "✔  $(blueName)", "color": "blue"}
$execute if score blitz.BlueBears blitz.stats.coreIntact matches 0 run scoreboard players display name blitz.BlueBears blitz.sidebar [{score:{name:"blitz.BlueBears",objective:"blitz.stats.playersAlive"},color:blue,bold:true},{"text": "  $(blueName)", "color": "blue",bold:false}]

# <==== HEADER INFO =====>

# cores header
scoreboard players set §e§lCores: blitz.sidebar 10

# blank line
scoreboard players set §a blitz.sidebar 11

# timer
scoreboard players set blitz.timer blitz.sidebar 12
execute as @a if score blitz.handler blitz.timer.game.secsRemaining matches 10.. run scoreboard players display name blitz.timer blitz.sidebar ["",{"text": "Elapsed: ", "color": "light_purple", "bold": true},{"score": {"name": "blitz.handler", "objective": "blitz.timer.game.minsRemaining"},"color":"light_purple"}, {"text": ":","color":"light_purple"}, {"score": {"name": "blitz.handler", "objective": "blitz.timer.game.secsRemaining"},"color":"light_purple"}]
execute as @a if score blitz.handler blitz.timer.game.secsRemaining matches 0..9 run scoreboard players display name blitz.timer blitz.sidebar ["",{"text": "Elapsed: ", "color": "light_purple", "bold": true},{"score": {"name": "blitz.handler", "objective": "blitz.timer.game.minsRemaining"},"color":"light_purple"}, {"text": ":0","color":"light_purple"}, {"score": {"name": "blitz.handler", "objective": "blitz.timer.game.secsRemaining"},"color":"light_purple"}]

# current game
scoreboard players set blitz.head blitz.sidebar 13
scoreboard players display name blitz.head blitz.sidebar {"text": "Blitz", "color": "light_purple", "bold": true}

# blank line #2
scoreboard players set § blitz.sidebar 14