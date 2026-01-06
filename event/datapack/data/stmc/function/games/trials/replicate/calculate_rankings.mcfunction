# $replicate.highest --> $replicate.highest
# solve.<team> --> replicate.<team>
# solve.timer.game.<room#>.temp --> replicate.timer.<build#>
# solve.timer.game.<room#>.rank --> replicate.points.rank.<build#>
# solve.timer.game.<room#> --> -

# <===== OVERALL RANKINGS =====>

# first, sum the times of each build into the overall time
scoreboard players set replicate.RedRaccoons replicate.timer.game 0
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build1
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build2
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build3
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build4
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build5
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build6

scoreboard players set replicate.OrangeOtters replicate.timer.game 0
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build1
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build2
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build3
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build4
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build5
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build6

scoreboard players set replicate.PinkPikas replicate.timer.game 0
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build1
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build2
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build3
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build4
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build5
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build6

scoreboard players set replicate.YellowYaks replicate.timer.game 0
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build1
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build2
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build3
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build4
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build5
scoreboard players operation replicate.YellowYaks replicate.timer.game += replicate.YellowYaks replicate.timer.build6

scoreboard players set replicate.GreenGoats replicate.timer.game 0
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build1
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build2
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build3
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build4
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build5
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build6

scoreboard players set replicate.CyanCougars replicate.timer.game 0
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build1
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build2
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build3
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build4
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build5
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build6

scoreboard players set replicate.PurplePenguins replicate.timer.game 0
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build1
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build2
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build3
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build4
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build5
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build6

scoreboard players set replicate.BlueBears replicate.timer.game 0
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build1
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build2
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build3
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build4
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build5
scoreboard players operation replicate.BlueBears replicate.timer.game += replicate.BlueBears replicate.timer.build6

# then run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/overall

# <===== ROOM TIME RANKINGS =====>

# build #1

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build1

# build #2

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build2

# build #3

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build3

# build #4

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build4

# build #5

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build5

# build #6

# run the helper function to calculate rankings
function stmc:games/trials/replicate/rankings/build6