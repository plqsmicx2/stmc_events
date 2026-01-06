# $solve.highest --> $solve.highest
# solve.<team> --> solve.<team>
# solve.timer.game.<room#>.temp --> solve.timer.<room#>
# solve.timer.game.<room#>.rank --> solve.points.rank.<room#>
# solve.timer.game.<room#> --> -

# <===== OVERALL RANKINGS =====>

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/overall

# <===== ROOM TIME RANKINGS =====>

# room #1

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room1

# room #2

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room2

# room #3

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room3

# room #4

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room4

# room #5

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room5

# room #6

# run the helper function to calculate rankings
function stmc:games/dungeons/points/rankings/room6

# <===== TEAM POINT RANKINGS =====>

# update points from new rankings
function stmc:games/dungeons/points/point_update

# first, store our data in a temporary place to work with
scoreboard objectives add dungeons.points.team.temp dummy
scoreboard players operation RED_RACCOONS dungeons.points.team.temp = RED_RACCOONS dungeons.points.team
scoreboard players operation ORANGE_OTTERS dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team
scoreboard players operation PINK_PIKAS dungeons.points.team.temp = PINK_PIKAS dungeons.points.team
scoreboard players operation YELLOW_YAKS dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team
scoreboard players operation GREEN_GOATS dungeons.points.team.temp = GREEN_GOATS dungeons.points.team
scoreboard players operation CYAN_COUGARS dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team
scoreboard players operation PURPLE_PENGUINS dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team
scoreboard players operation BLUE_BEARS dungeons.points.team.temp = BLUE_BEARS dungeons.points.team

# then reset ranks
scoreboard players set RED_RACCOONS dungeons.points.team.rank -1
scoreboard players set ORANGE_OTTERS dungeons.points.team.rank -1
scoreboard players set PINK_PIKAS dungeons.points.team.rank -1
scoreboard players set YELLOW_YAKS dungeons.points.team.rank -1
scoreboard players set GREEN_GOATS dungeons.points.team.rank -1
scoreboard players set CYAN_COUGARS dungeons.points.team.rank -1
scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank -1
scoreboard players set BLUE_BEARS dungeons.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest dungeons.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 1
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 2
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 2

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 3
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 3

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 4
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 4

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 5
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 5

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 6
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 6

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 7
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 7

scoreboard players set $stmc.highest dungeons.points.team.temp -1
execute unless score RED_RACCOONS dungeons.points.team.rank matches 1.. if score RED_RACCOONS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp
execute unless score ORANGE_OTTERS dungeons.points.team.rank matches 1.. if score ORANGE_OTTERS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp
execute unless score PINK_PIKAS dungeons.points.team.rank matches 1.. if score PINK_PIKAS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp
execute unless score YELLOW_YAKS dungeons.points.team.rank matches 1.. if score YELLOW_YAKS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp
execute unless score GREEN_GOATS dungeons.points.team.rank matches 1.. if score GREEN_GOATS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp
execute unless score CYAN_COUGARS dungeons.points.team.rank matches 1.. if score CYAN_COUGARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp
execute unless score PURPLE_PENGUINS dungeons.points.team.rank matches 1.. if score PURPLE_PENGUINS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp
execute unless score BLUE_BEARS dungeons.points.team.rank matches 1.. if score BLUE_BEARS dungeons.points.team.temp > $stmc.highest dungeons.points.team.temp run scoreboard players operation $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp
execute if score $stmc.highest dungeons.points.team.temp = RED_RACCOONS dungeons.points.team.temp run scoreboard players set RED_RACCOONS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = ORANGE_OTTERS dungeons.points.team.temp run scoreboard players set ORANGE_OTTERS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = PINK_PIKAS dungeons.points.team.temp run scoreboard players set PINK_PIKAS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = YELLOW_YAKS dungeons.points.team.temp run scoreboard players set YELLOW_YAKS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = GREEN_GOATS dungeons.points.team.temp run scoreboard players set GREEN_GOATS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = CYAN_COUGARS dungeons.points.team.temp run scoreboard players set CYAN_COUGARS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = PURPLE_PENGUINS dungeons.points.team.temp run scoreboard players set PURPLE_PENGUINS dungeons.points.team.rank 8
execute if score $stmc.highest dungeons.points.team.temp = BLUE_BEARS dungeons.points.team.temp run scoreboard players set BLUE_BEARS dungeons.points.team.rank 8