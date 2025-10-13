# support function that ranks teams & players based on scores
# stores these rankings either in sg.points.team.rank or sg.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add sg.points.team.temp dummy
scoreboard players operation sg.RedRaccoons sg.points.team.temp = sg.RedRaccoons sg.points.team
scoreboard players operation sg.OrangeOtters sg.points.team.temp = sg.OrangeOtters sg.points.team
scoreboard players operation sg.PinkPikas sg.points.team.temp = sg.PinkPikas sg.points.team
scoreboard players operation sg.YellowYaks sg.points.team.temp = sg.YellowYaks sg.points.team
scoreboard players operation sg.GreenGoats sg.points.team.temp = sg.GreenGoats sg.points.team
scoreboard players operation sg.CyanCougars sg.points.team.temp = sg.CyanCougars sg.points.team
scoreboard players operation sg.PurplePenguins sg.points.team.temp = sg.PurplePenguins sg.points.team
scoreboard players operation sg.BlueBears sg.points.team.temp = sg.BlueBears sg.points.team

# then reset ranks
scoreboard players set sg.RedRaccoons sg.points.team.rank -1
scoreboard players set sg.OrangeOtters sg.points.team.rank -1
scoreboard players set sg.PinkPikas sg.points.team.rank -1
scoreboard players set sg.YellowYaks sg.points.team.rank -1
scoreboard players set sg.GreenGoats sg.points.team.rank -1
scoreboard players set sg.CyanCougars sg.points.team.rank -1
scoreboard players set sg.PurplePenguins sg.points.team.rank -1
scoreboard players set sg.BlueBears sg.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest sg.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 1
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 2
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 2

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 3
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 3

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 4
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 4

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 5
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 5

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 6
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 6

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 7
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 7

scoreboard players set $stmc.highest sg.points.team.temp -1
execute unless score sg.RedRaccoons sg.points.team.rank matches 1.. if score sg.RedRaccoons sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp
execute unless score sg.OrangeOtters sg.points.team.rank matches 1.. if score sg.OrangeOtters sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp
execute unless score sg.PinkPikas sg.points.team.rank matches 1.. if score sg.PinkPikas sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp
execute unless score sg.YellowYaks sg.points.team.rank matches 1.. if score sg.YellowYaks sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp
execute unless score sg.GreenGoats sg.points.team.rank matches 1.. if score sg.GreenGoats sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp
execute unless score sg.CyanCougars sg.points.team.rank matches 1.. if score sg.CyanCougars sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp
execute unless score sg.PurplePenguins sg.points.team.rank matches 1.. if score sg.PurplePenguins sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp
execute unless score sg.BlueBears sg.points.team.rank matches 1.. if score sg.BlueBears sg.points.team.temp > $stmc.highest sg.points.team.temp run scoreboard players operation $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp
execute if score $stmc.highest sg.points.team.temp = sg.RedRaccoons sg.points.team.temp run scoreboard players set sg.RedRaccoons sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.OrangeOtters sg.points.team.temp run scoreboard players set sg.OrangeOtters sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.PinkPikas sg.points.team.temp run scoreboard players set sg.PinkPikas sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.YellowYaks sg.points.team.temp run scoreboard players set sg.YellowYaks sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.GreenGoats sg.points.team.temp run scoreboard players set sg.GreenGoats sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.CyanCougars sg.points.team.temp run scoreboard players set sg.CyanCougars sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.PurplePenguins sg.points.team.temp run scoreboard players set sg.PurplePenguins sg.points.team.rank 8
execute if score $stmc.highest sg.points.team.temp = sg.BlueBears sg.points.team.temp run scoreboard players set sg.BlueBears sg.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add sg.points.indiv.temp dummy
execute as @a run scoreboard players operation @s sg.points.indiv.temp = @s sg.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s sg.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $sg.highest sg.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s sg.points.indiv.rank matches 1 run scoreboard players reset @s sg.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 2
execute as @a if score @s sg.points.indiv.rank matches 2 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 3
execute as @a if score @s sg.points.indiv.rank matches 3 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 4
execute as @a if score @s sg.points.indiv.rank matches 4 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 5
execute as @a if score @s sg.points.indiv.rank matches 5 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 6
execute as @a if score @s sg.points.indiv.rank matches 6 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 7
execute as @a if score @s sg.points.indiv.rank matches 7 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 8
execute as @a if score @s sg.points.indiv.rank matches 8 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 9
execute as @a if score @s sg.points.indiv.rank matches 9 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 10
execute as @a if score @s sg.points.indiv.rank matches 10 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 11
execute as @a if score @s sg.points.indiv.rank matches 11 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 12
execute as @a if score @s sg.points.indiv.rank matches 12 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 13
execute as @a if score @s sg.points.indiv.rank matches 13 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 14
execute as @a if score @s sg.points.indiv.rank matches 14 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 15
execute as @a if score @s sg.points.indiv.rank matches 15 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 16
execute as @a if score @s sg.points.indiv.rank matches 16 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 17
execute as @a if score @s sg.points.indiv.rank matches 17 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 18
execute as @a if score @s sg.points.indiv.rank matches 18 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 19
execute as @a if score @s sg.points.indiv.rank matches 19 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 20
execute as @a if score @s sg.points.indiv.rank matches 20 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 21
execute as @a if score @s sg.points.indiv.rank matches 21 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 22
execute as @a if score @s sg.points.indiv.rank matches 22 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 23
execute as @a if score @s sg.points.indiv.rank matches 23 run scoreboard players reset @s sg.points.indiv.temp

scoreboard players set $sg.highest sg.points.indiv.temp -1
execute as @a run scoreboard players operation $sg.highest sg.points.indiv.temp > @s sg.points.indiv.temp
execute as @a if score @s sg.points.indiv.temp = $sg.highest sg.points.indiv.temp unless score @s sg.points.indiv.rank matches 0.. run scoreboard players set @s sg.points.indiv.rank 24
execute as @a if score @s sg.points.indiv.rank matches 24 run scoreboard players reset @s sg.points.indiv.temp

# <===== FASTEST LAPS =====>

# calculate fastest laps for each player
scoreboard players set @a sg.kills 0

# reset ranks
execute as @a run scoreboard players set @s sg.kills.rank -1

# first, store our data in a temporary place to work with
scoreboard objectives add sg.kills.temp dummy
execute as @a at @s run scoreboard players operation @s sg.kills.temp = @s sg.kills

# set dummy player to -1
scoreboard players set $sg.highest sg.kills.temp 4800

# determine highest value
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.kills.temp < @s sg.kills.temp

# determine who has that highest value & assign them appropriate rank
execute as @a if score @s sg.kills.temp = $sg.highest sg.kills.temp run scoreboard players set @s sg.kills.rank 1

# and repeat four more times
scoreboard players set $sg.highest sg.kills.temp 0
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.kills.temp < @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $sg.highest sg.kills.temp run scoreboard players set @s sg.kills.rank 2

scoreboard players set $sg.highest sg.kills.temp 0
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.kills.temp < @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $sg.highest sg.kills.temp run scoreboard players set @s sg.kills.rank 3

scoreboard players set $sg.highest sg.kills.temp 0
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.kills.temp < @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $sg.highest sg.kills.temp run scoreboard players set @s sg.kills.rank 4

scoreboard players set $sg.highest sg.kills.temp 0
execute as @a unless score @s sg.kills.rank matches 1.. run scoreboard players operation $sg.highest sg.kills.temp < @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $sg.highest sg.kills.temp run scoreboard players set @s sg.kills.rank 5