# support function that ranks teams & players based on scores
# stores these rankings either in mine.points.team.rank or mine.points.indiv.rank

# <===== SUM TEAM POINTS =====>

scoreboard players set mine.RedRaccoons mine.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation mine.RedRaccoons mine.points.team += @s mine.points.indiv
scoreboard players set mine.OrangeOtters mine.points.team 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation mine.OrangeOtters mine.points.team += @s mine.points.indiv
scoreboard players set mine.PinkPikas mine.points.team 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation mine.PinkPikas mine.points.team += @s mine.points.indiv
scoreboard players set mine.YellowYaks mine.points.team 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation mine.YellowYaks mine.points.team += @s mine.points.indiv
scoreboard players set mine.GreenGoats mine.points.team 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation mine.GreenGoats mine.points.team += @s mine.points.indiv
scoreboard players set mine.CyanCougars mine.points.team 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation mine.CyanCougars mine.points.team += @s mine.points.indiv
scoreboard players set mine.PurplePenguins mine.points.team 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation mine.PurplePenguins mine.points.team += @s mine.points.indiv
scoreboard players set mine.BlueBears mine.points.team 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation mine.BlueBears mine.points.team += @s mine.points.indiv

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add mine.points.team.temp dummy
scoreboard players operation mine.RedRaccoons mine.points.team.temp = mine.RedRaccoons mine.points.team
scoreboard players operation mine.OrangeOtters mine.points.team.temp = mine.OrangeOtters mine.points.team
scoreboard players operation mine.PinkPikas mine.points.team.temp = mine.PinkPikas mine.points.team
scoreboard players operation mine.YellowYaks mine.points.team.temp = mine.YellowYaks mine.points.team
scoreboard players operation mine.GreenGoats mine.points.team.temp = mine.GreenGoats mine.points.team
scoreboard players operation mine.CyanCougars mine.points.team.temp = mine.CyanCougars mine.points.team
scoreboard players operation mine.PurplePenguins mine.points.team.temp = mine.PurplePenguins mine.points.team
scoreboard players operation mine.BlueBears mine.points.team.temp = mine.BlueBears mine.points.team

# then reset ranks
scoreboard objectives add mine.points.team.rank dummy
scoreboard players set mine.RedRaccoons mine.points.team.rank -1
scoreboard players set mine.OrangeOtters mine.points.team.rank -1
scoreboard players set mine.PinkPikas mine.points.team.rank -1
scoreboard players set mine.YellowYaks mine.points.team.rank -1
scoreboard players set mine.GreenGoats mine.points.team.rank -1
scoreboard players set mine.CyanCougars mine.points.team.rank -1
scoreboard players set mine.PurplePenguins mine.points.team.rank -1
scoreboard players set mine.BlueBears mine.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest mine.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 1
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 2
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 2

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 3
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 3

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 4
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 4

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 5
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 5

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 6
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 6

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 7
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 7

scoreboard players set $stmc.highest mine.points.team.temp -1
execute unless score mine.RedRaccoons mine.points.team.rank matches 1.. if score mine.RedRaccoons mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp
execute unless score mine.OrangeOtters mine.points.team.rank matches 1.. if score mine.OrangeOtters mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp
execute unless score mine.PinkPikas mine.points.team.rank matches 1.. if score mine.PinkPikas mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp
execute unless score mine.YellowYaks mine.points.team.rank matches 1.. if score mine.YellowYaks mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp
execute unless score mine.GreenGoats mine.points.team.rank matches 1.. if score mine.GreenGoats mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp
execute unless score mine.CyanCougars mine.points.team.rank matches 1.. if score mine.CyanCougars mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp
execute unless score mine.PurplePenguins mine.points.team.rank matches 1.. if score mine.PurplePenguins mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp
execute unless score mine.BlueBears mine.points.team.rank matches 1.. if score mine.BlueBears mine.points.team.temp > $stmc.highest mine.points.team.temp run scoreboard players operation $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp
execute if score $stmc.highest mine.points.team.temp = mine.RedRaccoons mine.points.team.temp run scoreboard players set mine.RedRaccoons mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.OrangeOtters mine.points.team.temp run scoreboard players set mine.OrangeOtters mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.PinkPikas mine.points.team.temp run scoreboard players set mine.PinkPikas mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.YellowYaks mine.points.team.temp run scoreboard players set mine.YellowYaks mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.GreenGoats mine.points.team.temp run scoreboard players set mine.GreenGoats mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.CyanCougars mine.points.team.temp run scoreboard players set mine.CyanCougars mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.PurplePenguins mine.points.team.temp run scoreboard players set mine.PurplePenguins mine.points.team.rank 8
execute if score $stmc.highest mine.points.team.temp = mine.BlueBears mine.points.team.temp run scoreboard players set mine.BlueBears mine.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add mine.points.indiv.rank dummy
scoreboard objectives add mine.points.indiv.temp dummy
execute as @a run scoreboard players operation @s mine.points.indiv.temp = @s mine.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s mine.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $mine.highest mine.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s mine.points.indiv.rank matches 1 run scoreboard players reset @s mine.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 2
execute as @a if score @s mine.points.indiv.rank matches 2 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 3
execute as @a if score @s mine.points.indiv.rank matches 3 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 4
execute as @a if score @s mine.points.indiv.rank matches 4 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 5
execute as @a if score @s mine.points.indiv.rank matches 5 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 6
execute as @a if score @s mine.points.indiv.rank matches 6 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 7
execute as @a if score @s mine.points.indiv.rank matches 7 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 8
execute as @a if score @s mine.points.indiv.rank matches 8 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 9
execute as @a if score @s mine.points.indiv.rank matches 9 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 10
execute as @a if score @s mine.points.indiv.rank matches 10 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 11
execute as @a if score @s mine.points.indiv.rank matches 11 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 12
execute as @a if score @s mine.points.indiv.rank matches 12 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 13
execute as @a if score @s mine.points.indiv.rank matches 13 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 14
execute as @a if score @s mine.points.indiv.rank matches 14 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 15
execute as @a if score @s mine.points.indiv.rank matches 15 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 16
execute as @a if score @s mine.points.indiv.rank matches 16 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 17
execute as @a if score @s mine.points.indiv.rank matches 17 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 18
execute as @a if score @s mine.points.indiv.rank matches 18 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 19
execute as @a if score @s mine.points.indiv.rank matches 19 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 20
execute as @a if score @s mine.points.indiv.rank matches 20 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 21
execute as @a if score @s mine.points.indiv.rank matches 21 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 22
execute as @a if score @s mine.points.indiv.rank matches 22 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 23
execute as @a if score @s mine.points.indiv.rank matches 23 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 24 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 25 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 26 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 27 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 28 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 29 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 30 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 31 run scoreboard players reset @s mine.points.indiv.temp

scoreboard players set $mine.highest mine.points.indiv.temp -1
execute as @a run scoreboard players operation $mine.highest mine.points.indiv.temp > @s mine.points.indiv.temp
execute as @a if score @s mine.points.indiv.temp = $mine.highest mine.points.indiv.temp unless score @s mine.points.indiv.rank matches 0.. run scoreboard players set @s mine.points.indiv.rank 24
execute as @a if score @s mine.points.indiv.rank matches 32 run scoreboard players reset @s mine.points.indiv.temp