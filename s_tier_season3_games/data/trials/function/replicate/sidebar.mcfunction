# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Invitational<lime>
# 
# <gold>Disco<gold>
# <red>Rounds Played: ##<red>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add replicate.sidebar dummy {"text": "    STMC Invitational    ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar replicate.sidebar

# <===== RANK TEAMS =====>
# first, we run some calculations to determine which teams should be present

# save values in a temporary place (to use later in the sidebar)
scoreboard objectives add replicate.stage.temp dummy
scoreboard players operation replicate.RedRaccoons replicate.stage.temp = replicate.RedRaccoons replicate.stage
scoreboard players operation replicate.OrangeOtters replicate.stage.temp = replicate.OrangeOtters replicate.stage
scoreboard players operation replicate.PinkPikas replicate.stage.temp = replicate.PinkPikas replicate.stage
scoreboard players operation replicate.GreenGoats replicate.stage.temp = replicate.GreenGoats replicate.stage
scoreboard players operation replicate.CyanCougars replicate.stage.temp = replicate.CyanCougars replicate.stage
scoreboard players operation replicate.PurplePenguins replicate.stage.temp = replicate.PurplePenguins replicate.stage

# set a dummy player to -1
scoreboard players set $replicate.highest replicate.stage -1

# determine highest value
# because we're using fake players, we have to manually test each one
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.RedRaccoons replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.OrangeOtters replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PinkPikas replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.GreenGoats replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.CyanCougars replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PurplePenguins replicate.stage.temp

# determine who has that highest value & assign them #1 rank
# again manually checking
execute if score replicate.RedRaccoons replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.RedRaccoons replicate.team.rank 1
execute if score replicate.OrangeOtters replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.OrangeOtters replicate.team.rank 1
execute if score replicate.PinkPikas replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PinkPikas replicate.team.rank 1
execute if score replicate.GreenGoats replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.GreenGoats replicate.team.rank 1
execute if score replicate.CyanCougars replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.CyanCougars replicate.team.rank 1
execute if score replicate.PurplePenguins replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PurplePenguins replicate.team.rank 1

# pop the highest value to reset it
# & again, manually checking
execute if score replicate.RedRaccoons replicate.team.rank matches 1 run scoreboard players reset replicate.RedRaccoons replicate.stage.temp
execute if score replicate.OrangeOtters replicate.team.rank matches 1 run scoreboard players reset replicate.OrangeOtters replicate.stage.temp
execute if score replicate.PinkPikas replicate.team.rank matches 1 run scoreboard players reset replicate.PinkPikas replicate.stage.temp
execute if score replicate.GreenGoats replicate.team.rank matches 1 run scoreboard players reset replicate.GreenGoats replicate.stage.temp
execute if score replicate.CyanCougars replicate.team.rank matches 1 run scoreboard players reset replicate.CyanCougars replicate.stage.temp
execute if score replicate.PurplePenguins replicate.team.rank matches 1 run scoreboard players reset replicate.PurplePenguins replicate.stage.temp

# and repeat two more times
scoreboard players set $replicate.highest replicate.stage -1
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.RedRaccoons replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.OrangeOtters replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PinkPikas replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.GreenGoats replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.CyanCougars replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PurplePenguins replicate.stage.temp
execute if score replicate.RedRaccoons replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.RedRaccoons replicate.team.rank 2
execute if score replicate.OrangeOtters replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.OrangeOtters replicate.team.rank 2
execute if score replicate.PinkPikas replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PinkPikas replicate.team.rank 2
execute if score replicate.GreenGoats replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.GreenGoats replicate.team.rank 2
execute if score replicate.CyanCougars replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.CyanCougars replicate.team.rank 2
execute if score replicate.PurplePenguins replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PurplePenguins replicate.team.rank 2
execute if score replicate.RedRaccoons replicate.team.rank matches 2 run scoreboard players reset replicate.RedRaccoons replicate.stage.temp
execute if score replicate.OrangeOtters replicate.team.rank matches 2 run scoreboard players reset replicate.OrangeOtters replicate.stage.temp
execute if score replicate.PinkPikas replicate.team.rank matches 2 run scoreboard players reset replicate.PinkPikas replicate.stage.temp
execute if score replicate.GreenGoats replicate.team.rank matches 2 run scoreboard players reset replicate.GreenGoats replicate.stage.temp
execute if score replicate.CyanCougars replicate.team.rank matches 2 run scoreboard players reset replicate.CyanCougars replicate.stage.temp
execute if score replicate.PurplePenguins replicate.team.rank matches 2 run scoreboard players reset replicate.PurplePenguins replicate.stage.temp

scoreboard players set $replicate.highest replicate.stage -1
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.RedRaccoons replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.OrangeOtters replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PinkPikas replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.GreenGoats replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.CyanCougars replicate.stage.temp
scoreboard players operation $replicate.highest replicate.stage.temp > replicate.PurplePenguins replicate.stage.temp
execute if score replicate.RedRaccoons replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.RedRaccoons replicate.team.rank 3
execute if score replicate.OrangeOtters replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.OrangeOtters replicate.team.rank 3
execute if score replicate.PinkPikas replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PinkPikas replicate.team.rank 3
execute if score replicate.GreenGoats replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.GreenGoats replicate.team.rank 3
execute if score replicate.CyanCougars replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.CyanCougars replicate.team.rank 3
execute if score replicate.PurplePenguins replicate.stage.temp = $replicate.highest replicate.stage.temp run scoreboard players set replicate.PurplePenguins replicate.team.rank 3
execute if score replicate.RedRaccoons replicate.team.rank matches 3 run scoreboard players reset replicate.RedRaccoons replicate.stage.temp
execute if score replicate.OrangeOtters replicate.team.rank matches 3 run scoreboard players reset replicate.OrangeOtters replicate.stage.temp
execute if score replicate.PinkPikas replicate.team.rank matches 3 run scoreboard players reset replicate.PinkPikas replicate.stage.temp
execute if score replicate.GreenGoats replicate.team.rank matches 3 run scoreboard players reset replicate.GreenGoats replicate.stage.temp
execute if score replicate.CyanCougars replicate.team.rank matches 3 run scoreboard players reset replicate.CyanCougars replicate.stage.temp
execute if score replicate.PurplePenguins replicate.team.rank matches 3 run scoreboard players reset replicate.PurplePenguins replicate.stage.temp

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset replicate.RedRaccoons replicate.sidebar
scoreboard players reset replicate.OrangeOtters replicate.sidebar
scoreboard players reset replicate.PinkPikas replicate.sidebar
scoreboard players reset replicate.GreenGoats replicate.sidebar
scoreboard players reset replicate.CyanCougars replicate.sidebar
scoreboard players reset replicate.PurplePenguins replicate.sidebar

# add teams if their rank is between 1 and 3
# they'll be automatically ranked by the scoreboard itself
execute if score replicate.RedRaccoons replicate.team.rank matches 1..3 run scoreboard players operation replicate.RedRaccoons replicate.sidebar = replicate.RedRaccoons replicate.stage
execute if score replicate.RedRaccoons replicate.team.rank matches 1..3 run scoreboard players display name replicate.RedRaccoons replicate.sidebar {"text": "  Red Raccoons", "color": "red"}
execute if score replicate.OrangeOtters replicate.team.rank matches 1..3 run scoreboard players operation replicate.OrangeOtters replicate.sidebar = replicate.OrangeOtters replicate.stage
execute if score replicate.OrangeOtters replicate.team.rank matches 1..3 run scoreboard players display name replicate.OrangeOtters replicate.sidebar {"text": "  Orange Otters", "color": "gold"}
execute if score replicate.PinkPikas replicate.team.rank matches 1..3 run scoreboard players operation replicate.PinkPikas replicate.sidebar = replicate.PinkPikas replicate.stage
execute if score replicate.PinkPikas replicate.team.rank matches 1..3 run scoreboard players display name replicate.PinkPikas replicate.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
execute if score replicate.GreenGoats replicate.team.rank matches 1..3 run scoreboard players operation replicate.GreenGoats replicate.sidebar = replicate.GreenGoats replicate.stage
execute if score replicate.GreenGoats replicate.team.rank matches 1..3 run scoreboard players display name replicate.GreenGoats replicate.sidebar {"text": "  Green Goats", "color": "dark_green"}
execute if score replicate.CyanCougars replicate.team.rank matches 1..3 run scoreboard players operation replicate.CyanCougars replicate.sidebar = replicate.CyanCougars replicate.stage
execute if score replicate.CyanCougars replicate.team.rank matches 1..3 run scoreboard players display name replicate.CyanCougars replicate.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
execute if score replicate.PurplePenguins replicate.team.rank matches 1..3 run scoreboard players operation replicate.PurplePenguins replicate.sidebar = replicate.PurplePenguins replicate.stage
execute if score replicate.PurplePenguins replicate.team.rank matches 1..3 run scoreboard players display name replicate.PurplePenguins replicate.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS replicate.RedRaccoons
team join ORANGE_OTTERS replicate.OrangeOtters
team join PINK_PIKAS replicate.PinkPikas
team join GREEN_GOATS replicate.GreenGoats
team join CYAN_COUGARS replicate.CyanCougars
team join PURPLE_PENGUINS replicate.PurplePenguins

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lCompleted: replicate.sidebar 11
scoreboard players reset §e§lPoints: replicate.sidebar

# blank line
scoreboard players set §b replicate.sidebar 12

# current game
scoreboard players set Replicate replicate.sidebar 13
scoreboard players display name Replicate replicate.sidebar {"text": "Replicate", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set § replicate.sidebar 14