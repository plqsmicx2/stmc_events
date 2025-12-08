# helper function that calculates # of players on each team

scoreboard objectives add mine.players dummy

# set team value to 0
scoreboard players set mine.RedRaccoons mine.players 0
# increment value for team
execute as @a[team=RED_RACCOONS] run scoreboard players add mine.RedRaccoons mine.players 1

scoreboard players set mine.OrangeOtters mine.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add mine.OrangeOtters mine.players 1

scoreboard players set mine.PinkPikas mine.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add mine.PinkPikas mine.players 1

scoreboard players set mine.YellowYaks mine.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add mine.YellowYaks mine.players 1

scoreboard players set mine.GreenGoats mine.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add mine.GreenGoats mine.players 1

scoreboard players set mine.CyanCougars mine.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add mine.CyanCougars mine.players 1

scoreboard players set mine.PurplePenguins mine.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add mine.PurplePenguins mine.players 1

scoreboard players set mine.BlueBears mine.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add mine.BlueBears mine.players 1