# function to track player deaths & update appropriate scoreboards

# first, let's make sure players go into spectator immediately when they die
# and we run points_update at the same time to ensure immediate points reflections
# updating only after deaths also ensures placement points are only given out ONCE
execute in survival_games:sg1 as @a at @s run spawnpoint @s ~ ~ ~
gamemode spectator @a[gamemode=!spectator, scores={sg.r1.death=1..}]

# and that their status is updated
execute as @a[scores={sg.alive=1..}] if score @s sg.r1.death matches 1.. run scoreboard players set @s sg.alive 0

# and then let's update players alive with the current count
scoreboard players set sg.r1.handler sg.players_alive 0
execute as @a if score @s sg.alive matches 1 run scoreboard players add sg.r1.handler sg.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set sg.RedRaccoons sg.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s sg.alive matches 1 run scoreboard players add sg.RedRaccoons sg.players_alive 1
scoreboard players set sg.OrangeOtters sg.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s sg.alive matches 1 run scoreboard players add sg.OrangeOtters sg.players_alive 1
scoreboard players set sg.PinkPikas sg.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s sg.alive matches 1 run scoreboard players add sg.PinkPikas sg.players_alive 1
scoreboard players set sg.YellowYaks sg.players_alive 0
execute as @a[team=YELLOW_YAKS] if score @s sg.alive matches 1 run scoreboard players add sg.YellowYaks sg.players_alive 1
scoreboard players set sg.GreenGoats sg.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s sg.alive matches 1 run scoreboard players add sg.GreenGoats sg.players_alive 1
scoreboard players set sg.CyanCougars sg.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s sg.alive matches 1 run scoreboard players add sg.CyanCougars sg.players_alive 1
scoreboard players set sg.PurplePenguins sg.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s sg.alive matches 1 run scoreboard players add sg.PurplePenguins sg.players_alive 1
scoreboard players set sg.BlueBears sg.players_alive 0
execute as @a[team=BLUE_BEARS] if score @s sg.alive matches 1 run scoreboard players add sg.BlueBears sg.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set sg.r1.handler sg.teams_alive 0
execute if score sg.RedRaccoons sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.OrangeOtters sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.PinkPikas sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.YellowYaks sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.GreenGoats sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.CyanCougars sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.PurplePenguins sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1
execute if score sg.BlueBears sg.players_alive matches 1..4 run scoreboard players add sg.r1.handler sg.teams_alive 1

# set global handler teams_alive to current round as well
scoreboard players operation sg.handler sg.teams_alive = sg.r1.handler sg.teams_alive

# update currentPlacement [if a team was just eliminated, this is what they would have earned]
# it's always 1 above the current teams_alive
scoreboard players set sg.r1.handler sg.r1.currentPlacement 1
scoreboard players operation sg.r1.handler sg.r1.currentPlacement += sg.r1.handler sg.teams_alive

# and if any teams need their placement set, let's do that now
execute if score sg.RedRaccoons sg.players_alive matches 0 unless score sg.RedRaccoons sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.OrangeOtters sg.players_alive matches 0 unless score sg.OrangeOtters sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.OrangeOtters sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.PinkPikas sg.players_alive matches 0 unless score sg.PinkPikas sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.PinkPikas sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.YellowYaks sg.players_alive matches 0 unless score sg.YellowYaks sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.YellowYaks sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.GreenGoats sg.players_alive matches 0 unless score sg.GreenGoats sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.GreenGoats sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.CyanCougars sg.players_alive matches 0 unless score sg.CyanCougars sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.CyanCougars sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.PurplePenguins sg.players_alive matches 0 unless score sg.PurplePenguins sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.PurplePenguins sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement
execute if score sg.BlueBears sg.players_alive matches 0 unless score sg.BlueBears sg.r1.teamPlacement matches 1..6 run scoreboard players operation sg.BlueBears sg.r1.teamPlacement = sg.r1.handler sg.r1.currentPlacement