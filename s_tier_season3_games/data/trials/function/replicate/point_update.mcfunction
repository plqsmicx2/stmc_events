# This function calculates & updates each team's and player's points
# This is done by resetting points to 0 then recalculating based on the teams' rank

# <===== TEAM POINTS =====>

# get latest team rankings
function trials:replicate/calculate_rankings

# Red
scoreboard players set replicate.RedRaccoons replicate.points.team 0
execute as @a[team=RED_RACCOONS] store result score replicate.RedRaccoons replicate.points.team run \
        function trials:replicate/award_points
# Orange
scoreboard players set replicate.OrangeOtters replicate.points.team 0
execute as @a[team=ORANGE_OTTERS] store result score replicate.OrangeOtters replicate.points.team run \
        function trials:replicate/award_points
# Pink
scoreboard players set replicate.PinkPikas replicate.points.team 0
execute as @a[team=PINK_PIKAS] store result score replicate.PinkPikas replicate.points.team run \
        function trials:replicate/award_points
# Yellow
scoreboard players set replicate.YellowYaks replicate.points.team 0
execute as @a[team=YELLOW_YAKS] store result score replicate.YellowYaks replicate.points.team run \
        function trials:replicate/award_points
# Green
scoreboard players set replicate.GreenGoats replicate.points.team 0
execute as @a[team=GREEN_GOATS] store result score replicate.GreenGoats replicate.points.team run \
        function trials:replicate/award_points
# Cyan
scoreboard players set replicate.CyanCougars replicate.points.team 0
execute as @a[team=CYAN_COUGARS] store result score replicate.CyanCougars replicate.points.team run \
        function trials:replicate/award_points
# Purple
scoreboard players set replicate.PurplePenguins replicate.points.team 0
execute as @a[team=PURPLE_PENGUINS] store result score replicate.PurplePenguins replicate.points.team run \
        function trials:replicate/award_points
# Blue
scoreboard players set replicate.BlueBears replicate.points.team 0
execute as @a[team=BLUE_BEARS] store result score replicate.BlueBears replicate.points.team run \
        function trials:replicate/award_points

# <===== PLAYER POINTS =====>

# determine players on team
scoreboard players set replicate.RedRaccoons replicate.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add replicate.RedRaccoons replicate.players 1
scoreboard players set replicate.OrangeOtters replicate.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add replicate.OrangeOtters replicate.players 1
scoreboard players set replicate.PinkPikas replicate.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add replicate.PinkPikas replicate.players 1
scoreboard players set replicate.YellowYaks replicate.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add replicate.YellowYaks replicate.players 1
scoreboard players set replicate.GreenGoats replicate.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add replicate.GreenGoats replicate.players 1
scoreboard players set replicate.CyanCougars replicate.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add replicate.CyanCougars replicate.players 1
scoreboard players set replicate.PurplePenguins replicate.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add replicate.PurplePenguins replicate.players 1
scoreboard players set replicate.BlueBears replicate.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add replicate.BlueBears replicate.players 1

# and award players on each team points
# if team has >0 players (to avoid dividing by zero)
execute as @a[team=RED_RACCOONS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.RedRaccoons replicate.points.team
execute as @a[team=RED_RACCOONS] if score replicate.RedRaccoons replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.RedRaccoons replicate.players

execute as @a[team=ORANGE_OTTERS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.OrangeOtters replicate.points.team
execute as @a[team=ORANGE_OTTERS] if score replicate.OrangeOtters replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.OrangeOtters replicate.players

execute as @a[team=PINK_PIKAS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.PinkPikas replicate.points.team
execute as @a[team=PINK_PIKAS] if score replicate.PinkPikas replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.PinkPikas replicate.players

execute as @a[team=YELLOW_YAKS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.YellowYaks replicate.points.team
execute as @a[team=YELLOW_YAKS] if score replicate.YellowYaks replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.YellowYaks replicate.players

execute as @a[team=GREEN_GOATS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.GreenGoats replicate.points.team
execute as @a[team=GREEN_GOATS] if score replicate.GreenGoats replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.GreenGoats replicate.players

execute as @a[team=CYAN_COUGARS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.CyanCougars replicate.points.team
execute as @a[team=CYAN_COUGARS] if score replicate.CyanCougars replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.CyanCougars replicate.players

execute as @a[team=PURPLE_PENGUINS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.PurplePenguins replicate.points.team
execute as @a[team=PURPLE_PENGUINS] if score replicate.PurplePenguins replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.PurplePenguins replicate.players

execute as @a[team=BLUE_BEARS] run \
        scoreboard players operation @s replicate.points.indiv = replicate.BlueBears replicate.points.team
execute as @a[team=BLUE_BEARS] if score replicate.BlueBears replicate.players matches 1.. run \
        scoreboard players operation @s replicate.points.indiv /= replicate.BlueBears replicate.players