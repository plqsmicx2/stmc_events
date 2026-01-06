# helper function that determines if a team has won

# check rounds won of each team
execute as @a[team=RED_RACCOONS] if score finale.RedRaccoons finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=ORANGE_OTTERS] if score finale.OrangeOtters finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=PINK_PIKAS] if score finale.PinkPikas finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=YELLOW_YAKS] if score finale.YellowYaks finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=GREEN_GOATS] if score finale.GreenGoats finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=CYAN_COUGARS] if score finale.CyanCougars finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=PURPLE_PENGUINS] if score finale.PurplePenguins finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute as @a[team=BLUE_BEARS] if score finale.BlueBears finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3