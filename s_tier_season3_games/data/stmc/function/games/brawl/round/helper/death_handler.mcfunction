# function to track player deaths & update appropriate scoreboards

# first, let's make sure players go into spectator immediately when they die
# and we run points_update at the same time to ensure immediate points reflections
# updating only after deaths also ensures placement points are only given out ONCE
execute in stmc:brawl/main as @a at @s run spawnpoint @s ~ ~ ~
gamemode spectator @a[gamemode=!spectator, scores={brawl.death=1..}]

# and that their status is updated
execute as @a[scores={brawl.alive=1..}] if score @s brawl.death matches 1.. run scoreboard players set @s brawl.alive 0

# and then let's update players alive with the current count
scoreboard players set brawl.handler brawl.players_alive 0
execute as @a if score @s brawl.alive matches 1 run scoreboard players add brawl.handler brawl.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set brawl.RedRaccoons brawl.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s brawl.alive matches 1 run scoreboard players add brawl.RedRaccoons brawl.players_alive 1
scoreboard players set brawl.OrangeOtters brawl.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s brawl.alive matches 1 run scoreboard players add brawl.OrangeOtters brawl.players_alive 1
scoreboard players set brawl.PinkPikas brawl.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s brawl.alive matches 1 run scoreboard players add brawl.PinkPikas brawl.players_alive 1
scoreboard players set brawl.YellowYaks brawl.players_alive 0
execute as @a[team=YELLOW_YAKS] if score @s brawl.alive matches 1 run scoreboard players add brawl.YellowYaks brawl.players_alive 1
scoreboard players set brawl.GreenGoats brawl.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s brawl.alive matches 1 run scoreboard players add brawl.GreenGoats brawl.players_alive 1
scoreboard players set brawl.CyanCougars brawl.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s brawl.alive matches 1 run scoreboard players add brawl.CyanCougars brawl.players_alive 1
scoreboard players set brawl.PurplePenguins brawl.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s brawl.alive matches 1 run scoreboard players add brawl.PurplePenguins brawl.players_alive 1
scoreboard players set brawl.BlueBears brawl.players_alive 0
execute as @a[team=BLUE_BEARS] if score @s brawl.alive matches 1 run scoreboard players add brawl.BlueBears brawl.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set brawl.handler brawl.teams_alive 0
execute if score brawl.RedRaccoons brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.OrangeOtters brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.PinkPikas brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.YellowYaks brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.GreenGoats brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.CyanCougars brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.PurplePenguins brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1
execute if score brawl.BlueBears brawl.players_alive matches 1..4 run scoreboard players add brawl.handler brawl.teams_alive 1

# update currentPlacement [if a team was just eliminated, this is what they would have earned]
# it's always 1 above the current teams_alive
scoreboard players set brawl.handler brawl.currentPlacement 1
scoreboard players operation brawl.handler brawl.currentPlacement += brawl.handler brawl.teams_alive

# and if any teams need their placement set, let's do that now
execute if score brawl.RedRaccoons brawl.players_alive matches 0 unless score brawl.RedRaccoons brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.RedRaccoons brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.OrangeOtters brawl.players_alive matches 0 unless score brawl.OrangeOtters brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.OrangeOtters brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.PinkPikas brawl.players_alive matches 0 unless score brawl.PinkPikas brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.PinkPikas brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.YellowYaks brawl.players_alive matches 0 unless score brawl.YellowYaks brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.YellowYaks brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.GreenGoats brawl.players_alive matches 0 unless score brawl.GreenGoats brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.GreenGoats brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.CyanCougars brawl.players_alive matches 0 unless score brawl.CyanCougars brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.CyanCougars brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.PurplePenguins brawl.players_alive matches 0 unless score brawl.PurplePenguins brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.PurplePenguins brawl.round.teamPlacement = brawl.handler brawl.currentPlacement
execute if score brawl.BlueBears brawl.players_alive matches 0 unless score brawl.BlueBears brawl.round.teamPlacement matches 1..8 run scoreboard players operation brawl.BlueBears brawl.round.teamPlacement = brawl.handler brawl.currentPlacement