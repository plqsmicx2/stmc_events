# $solve.highest --> $solve.highest
# solve.<team> --> solve.<team>
# solve.timer.game.<room#>.temp --> solve.timer.<room#>
# solve.timer.game.<room#>.rank --> solve.points.rank.<room#>
# solve.timer.game.<room#> --> -

# <===== OVERALL RANKINGS =====>

# first, sum the times of each room into the overall time
scoreboard players set solve.RedRaccoons solve.timer.game 0
scoreboard players operation solve.RedRaccoons solve.timer.game += solve.RedRaccoons solve.timer.game.room1
scoreboard players operation solve.RedRaccoons solve.timer.game += solve.RedRaccoons solve.timer.game.room2
scoreboard players operation solve.RedRaccoons solve.timer.game += solve.RedRaccoons solve.timer.game.room3
scoreboard players operation solve.RedRaccoons solve.timer.game += solve.RedRaccoons solve.timer.game.room4

scoreboard players set solve.OrangeOtters solve.timer.game 0
scoreboard players operation solve.OrangeOtters solve.timer.game += solve.OrangeOtters solve.timer.game.room1
scoreboard players operation solve.OrangeOtters solve.timer.game += solve.OrangeOtters solve.timer.game.room2
scoreboard players operation solve.OrangeOtters solve.timer.game += solve.OrangeOtters solve.timer.game.room3
scoreboard players operation solve.OrangeOtters solve.timer.game += solve.OrangeOtters solve.timer.game.room4

scoreboard players set solve.PinkPikas solve.timer.game 0
scoreboard players operation solve.PinkPikas solve.timer.game += solve.PinkPikas solve.timer.game.room1
scoreboard players operation solve.PinkPikas solve.timer.game += solve.PinkPikas solve.timer.game.room2
scoreboard players operation solve.PinkPikas solve.timer.game += solve.PinkPikas solve.timer.game.room3
scoreboard players operation solve.PinkPikas solve.timer.game += solve.PinkPikas solve.timer.game.room4

scoreboard players set solve.YellowYaks solve.timer.game 0
scoreboard players operation solve.YellowYaks solve.timer.game += solve.YellowYaks solve.timer.game.room1
scoreboard players operation solve.YellowYaks solve.timer.game += solve.YellowYaks solve.timer.game.room2
scoreboard players operation solve.YellowYaks solve.timer.game += solve.YellowYaks solve.timer.game.room3
scoreboard players operation solve.YellowYaks solve.timer.game += solve.YellowYaks solve.timer.game.room4

scoreboard players set solve.GreenGoats solve.timer.game 0
scoreboard players operation solve.GreenGoats solve.timer.game += solve.GreenGoats solve.timer.game.room1
scoreboard players operation solve.GreenGoats solve.timer.game += solve.GreenGoats solve.timer.game.room2
scoreboard players operation solve.GreenGoats solve.timer.game += solve.GreenGoats solve.timer.game.room3
scoreboard players operation solve.GreenGoats solve.timer.game += solve.GreenGoats solve.timer.game.room4

scoreboard players set solve.CyanCougars solve.timer.game 0
scoreboard players operation solve.CyanCougars solve.timer.game += solve.CyanCougars solve.timer.game.room1
scoreboard players operation solve.CyanCougars solve.timer.game += solve.CyanCougars solve.timer.game.room2
scoreboard players operation solve.CyanCougars solve.timer.game += solve.CyanCougars solve.timer.game.room3
scoreboard players operation solve.CyanCougars solve.timer.game += solve.CyanCougars solve.timer.game.room4

scoreboard players set solve.PurplePenguins solve.timer.game 0
scoreboard players operation solve.PurplePenguins solve.timer.game += solve.PurplePenguins solve.timer.game.room1
scoreboard players operation solve.PurplePenguins solve.timer.game += solve.PurplePenguins solve.timer.game.room2
scoreboard players operation solve.PurplePenguins solve.timer.game += solve.PurplePenguins solve.timer.game.room3
scoreboard players operation solve.PurplePenguins solve.timer.game += solve.PurplePenguins solve.timer.game.room4

scoreboard players set solve.BlueBears solve.timer.game 0
scoreboard players operation solve.BlueBears solve.timer.game += solve.BlueBears solve.timer.game.room1
scoreboard players operation solve.BlueBears solve.timer.game += solve.BlueBears solve.timer.game.room2
scoreboard players operation solve.BlueBears solve.timer.game += solve.BlueBears solve.timer.game.room3
scoreboard players operation solve.BlueBears solve.timer.game += solve.BlueBears solve.timer.game.room4

# then run the helper function to calculate rankings
function solve:rankings/overall

# <===== ROOM TIME RANKINGS =====>

# room #1

# run the helper function to calculate rankings
function solve:rankings/room1

# room #2

# run the helper function to calculate rankings
function solve:rankings/room2

# room #3

# run the helper function to calculate rankings
function solve:rankings/room3

# room #4

# run the helper function to calculate rankings
function solve:rankings/room4