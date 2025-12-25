# this function checks the player count on each team
# and appends that value to the team

# set team value to 0
scoreboard players set extract.RedRaccoons extract.players 0
# increment value for team
execute as @a[team=RED_RACCOONS] run scoreboard players add extract.RedRaccoons extract.players 1

scoreboard players set extract.OrangeOtters extract.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add extract.OrangeOtters extract.players 1

scoreboard players set extract.PinkPikas extract.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add extract.PinkPikas extract.players 1

scoreboard players set extract.YellowYaks extract.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add extract.YellowYaks extract.players 1

scoreboard players set extract.GreenGoats extract.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add extract.GreenGoats extract.players 1

scoreboard players set extract.CyanCougars extract.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add extract.CyanCougars extract.players 1

scoreboard players set extract.PurplePenguins extract.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add extract.PurplePenguins extract.players 1

scoreboard players set extract.BlueBears extract.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add extract.BlueBears extract.players 1