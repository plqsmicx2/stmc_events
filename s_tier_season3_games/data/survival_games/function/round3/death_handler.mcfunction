# function to track player deaths & update appropriate scoreboards

# quick reset of tick
scoreboard players set sg.r3.handler sg.r3.deathThisTick 0

# first, let's make sure players go into spectator immediately when they die
# and we run points_update at the same time to ensure immediate points reflections
# updating only after deaths also ensures placement points are only given out ONCE
execute in survival_games:sg1 as @a at @s run spawnpoint @s ~ ~ ~
execute as @a[gamemode=!spectator, scores={sg.r3.death=1..}] run scoreboard players set sg.r3.handler sg.r3.deathThisTick 1
gamemode spectator @a[gamemode=!spectator, scores={sg.r3.death=1..}]

# and that their status is updated
execute as @a if score @s sg.r3.death matches 1.. run scoreboard players set @s sg.alive 0

# and then let's update players alive with the current count
scoreboard players set sg.r3.handler sg.players_alive 0
execute as @a if score @s sg.alive matches 1 run scoreboard players add sg.r3.handler sg.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set sg.RedRaccoons sg.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s sg.alive matches 1 run scoreboard players add sg.RedRaccoons sg.players_alive 1
scoreboard players set sg.OrangeOtters sg.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s sg.alive matches 1 run scoreboard players add sg.OrangeOtters sg.players_alive 1
scoreboard players set sg.PinkPikas sg.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s sg.alive matches 1 run scoreboard players add sg.PinkPikas sg.players_alive 1
scoreboard players set sg.GreenGoats sg.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s sg.alive matches 1 run scoreboard players add sg.GreenGoats sg.players_alive 1
scoreboard players set sg.CyanCougars sg.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s sg.alive matches 1 run scoreboard players add sg.CyanCougars sg.players_alive 1
scoreboard players set sg.PurplePenguins sg.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s sg.alive matches 1 run scoreboard players add sg.PurplePenguins sg.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set sg.r3.handler sg.teams_alive 0
execute if score sg.RedRaccoons sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1
execute if score sg.OrangeOtters sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1
execute if score sg.PinkPikas sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1
execute if score sg.GreenGoats sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1
execute if score sg.CyanCougars sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1
execute if score sg.PurplePenguins sg.players_alive matches 1..4 run scoreboard players add sg.r3.handler sg.teams_alive 1

# set global handler teams_alive to current round as well
scoreboard players operation sg.handler sg.teams_alive = sg.r3.handler sg.teams_alive

# update currentPlacement [if a team was just eliminated, this is what they would have earned]
# it's always 1 above the current teams_alive
scoreboard players set sg.r3.handler sg.r3.currentPlacement 1
scoreboard players operation sg.r3.handler sg.r3.currentPlacement += sg.r3.handler sg.teams_alive

# and if any teams need their placement set, let's do that now
execute if score sg.RedRaccoons sg.players_alive matches 0 unless score sg.RedRaccoons sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement
execute if score sg.OrangeOtters sg.players_alive matches 0 unless score sg.OrangeOtters sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement
execute if score sg.PinkPikas sg.players_alive matches 0 unless score sg.PinkPikas sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement
execute if score sg.GreenGoats sg.players_alive matches 0 unless score sg.GreenGoats sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement
execute if score sg.CyanCougars sg.players_alive matches 0 unless score sg.CyanCougars sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement
execute if score sg.PurplePenguins sg.players_alive matches 0 unless score sg.PurplePenguins sg.r3.teamPlacement matches 1..6 run scoreboard players operation sg.RedRaccoons sg.r3.teamPlacement = sg.r3.handler sg.r3.currentPlacement

# and finally, with all of those teams & players updates, let's update scores
execute if score sg.r3.handler sg.r3.deathThisTick matches 1.. run function survival_games:round3/placement_update