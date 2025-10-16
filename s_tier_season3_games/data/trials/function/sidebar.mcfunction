# sidebar & points update function for trials overall

# trials sidebar

# sidebar looks like this:
# <lime>STMC ...<lime>
# 
# <aqua>Time Until Game: xx:xx<aqua>
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

scoreboard objectives add tr.sidebar dummy {"text": "  STMC Open  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar tr.sidebar

# <===== POINTS UPDATE =====>

execute as @a run scoreboard players set @s tr.points.indiv 0
execute as @a run scoreboard players operation @s tr.points.indiv += @s disco.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s replicate.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s spleef.points.indiv
execute as @a run scoreboard players operation @s tr.points.indiv += @s towers.points.indiv

scoreboard players set tr.RedRaccoons tr.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation tr.RedRaccoons tr.points.team += @s tr.points.indiv
scoreboard players set tr.OrangeOtters tr.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation tr.OrangeOtters tr.points.team += @s tr.points.indiv
scoreboard players set tr.PinkPikas tr.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation tr.PinkPikas tr.points.team += @s tr.points.indiv
scoreboard players set tr.YellowYaks tr.points.team 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation tr.YellowYaks tr.points.team += @s tr.points.indiv
scoreboard players set tr.GreenGoats tr.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation tr.GreenGoats tr.points.team += @s tr.points.indiv
scoreboard players set tr.CyanCougars tr.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation tr.CyanCougars tr.points.team += @s tr.points.indiv
scoreboard players set tr.PurplePenguins tr.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation tr.PurplePenguins tr.points.team += @s tr.points.indiv
scoreboard players set tr.BlueBears tr.points.team 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation tr.BlueBears tr.points.team += @s tr.points.indiv

function trials:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset tr.RedRaccoons tr.sidebar
scoreboard players reset tr.OrangeOtters tr.sidebar
scoreboard players reset tr.PinkPikas tr.sidebar
scoreboard players reset tr.YellowYaks tr.sidebar
scoreboard players reset tr.GreenGoats tr.sidebar
scoreboard players reset tr.CyanCougars tr.sidebar
scoreboard players reset tr.PurplePenguins tr.sidebar
scoreboard players reset tr.BlueBears tr.sidebar

# they'll be automatically ranked by the scoreboard itself
scoreboard players operation tr.RedRaccoons tr.sidebar = tr.RedRaccoons tr.points.team
scoreboard players display name tr.RedRaccoons tr.sidebar {"text": "  Red Raccoons", "color": "red"}
scoreboard players operation tr.OrangeOtters tr.sidebar = tr.OrangeOtters tr.points.team
scoreboard players display name tr.OrangeOtters tr.sidebar {"text": "  Orange Otters", "color": "gold"}
scoreboard players operation tr.PinkPikas tr.sidebar = tr.PinkPikas tr.points.team
scoreboard players display name tr.PinkPikas tr.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
scoreboard players operation tr.YellowYaks tr.sidebar = tr.YellowYaks tr.points.team
scoreboard players display name tr.YellowYaks tr.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
scoreboard players operation tr.GreenGoats tr.sidebar = tr.GreenGoats tr.points.team
scoreboard players display name tr.GreenGoats tr.sidebar {"text": "  Green Goats", "color": "dark_green"}
scoreboard players operation tr.CyanCougars tr.sidebar = tr.CyanCougars tr.points.team
scoreboard players display name tr.CyanCougars tr.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
scoreboard players operation tr.PurplePenguins tr.sidebar = tr.PurplePenguins tr.points.team
scoreboard players display name tr.PurplePenguins tr.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
scoreboard players operation tr.BlueBears tr.sidebar = tr.BlueBears tr.points.team
scoreboard players display name tr.BlueBears tr.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS tr.RedRaccoons
team join ORANGE_OTTERS tr.OrangeOtters
team join PINK_PIKAS tr.PinkPikas
team join YELLOW_YAKS tr.YellowYaks
team join GREEN_GOATS tr.GreenGoats
team join CYAN_COUGARS tr.CyanCougars
team join PURPLE_PENGUINS tr.PurplePenguins
team join BLUE_BEARS tr.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: tr.sidebar 1350

# blank line
scoreboard players set §a tr.sidebar 1351

# timer
scoreboard players set tr.timer tr.sidebar 1352
execute if score tr.handler tr.timer.secs matches ..9 run scoreboard players display name tr.timer tr.sidebar [{text:"Time: ",color:aqua,bold:true},{score:{name:"tr.handler",objective:"tr.timer.mins"},color:aqua},{text:":0",color:aqua},{score:{name:"tr.handler",objective:"tr.timer.secs"},color:aqua}]
execute if score tr.handler tr.timer.secs matches 10..59 run scoreboard players display name tr.timer tr.sidebar [{text:"Time: ",color:aqua,bold:true},{score:{name:"tr.handler",objective:"tr.timer.mins"},color:aqua},{text:":",color:aqua},{score:{name:"tr.handler",objective:"tr.timer.secs"},color:aqua}]

# game name
scoreboard players set tr.game tr.sidebar 1353
scoreboard players display name tr.game tr.sidebar {"text": "Trials", "color": "dark_aqua", "bold": true}

# blank line
scoreboard players set §b tr.sidebar 1354