# helper function that counts the # of players on each team
# and counts the # of alive players on each team

# count # of players on each team
scoreboard players set blitz.RedRaccoons blitz.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add blitz.RedRaccoons blitz.stats.players 1
scoreboard players set blitz.OrangeOtters blitz.stats.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add blitz.OrangeOtters blitz.stats.players 1
scoreboard players set blitz.PinkPikas blitz.stats.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add blitz.YellowYaks blitz.stats.players 1
scoreboard players set blitz.YellowYaks blitz.stats.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add blitz.PinkPikas blitz.stats.players 1
scoreboard players set blitz.GreenGoats blitz.stats.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add blitz.GreenGoats blitz.stats.players 1
scoreboard players set blitz.CyanCougars blitz.stats.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add blitz.CyanCougars blitz.stats.players 1
scoreboard players set blitz.PurplePenguins blitz.stats.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add blitz.PurplePenguins blitz.stats.players 1
scoreboard players set blitz.BlueBears blitz.stats.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add blitz.BlueBears blitz.stats.players 1

# & alive players
scoreboard players set blitz.RedRaccoons blitz.stats.playersAlive 0
execute as @a[team=RED_RACCOONS] run scoreboard players add blitz.RedRaccoons blitz.stats.playersAlive 1
scoreboard players set blitz.OrangeOtters blitz.stats.playersAlive 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add blitz.OrangeOtters blitz.stats.playersAlive 1
scoreboard players set blitz.PinkPikas blitz.stats.playersAlive 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add blitz.YellowYaks blitz.stats.playersAlive 1
scoreboard players set blitz.YellowYaks blitz.stats.playersAlive 0
execute as @a[team=PINK_PIKAS] run scoreboard players add blitz.PinkPikas blitz.stats.playersAlive 1
scoreboard players set blitz.GreenGoats blitz.stats.playersAlive 0
execute as @a[team=GREEN_GOATS] run scoreboard players add blitz.GreenGoats blitz.stats.playersAlive 1
scoreboard players set blitz.CyanCougars blitz.stats.playersAlive 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add blitz.CyanCougars blitz.stats.playersAlive 1
scoreboard players set blitz.PurplePenguins blitz.stats.playersAlive 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add blitz.PurplePenguins blitz.stats.playersAlive 1
scoreboard players set blitz.BlueBears blitz.stats.playersAlive 0
execute as @a[team=BLUE_BEARS] run scoreboard players add blitz.BlueBears blitz.stats.playersAlive 1