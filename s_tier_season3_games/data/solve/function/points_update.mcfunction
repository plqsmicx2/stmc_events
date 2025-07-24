# points update function for Extract [EXTRACT]

# this function calculates team points & updates individual points

# <===== TEAM POINTS =====>

# reset team points
scoreboard players set solve.RedRaccoons solve.points.team 0
scoreboard players set solve.OrangeOtters solve.points.team 0
scoreboard players set solve.PinkPikas solve.points.team 0
scoreboard players set solve.GreenGoats solve.points.team 0
scoreboard players set solve.CyanCougars solve.points.team 0
scoreboard players set solve.PurplePenguins solve.points.team 0

# room completion points
scoreboard players operation solve.RedRaccoons solve.points.team.roomPoints = solve.RedRaccoons solve.stats.roomsCompleted
scoreboard players operation solve.RedRaccoons solve.points.team.roomPoints *= solve.handler solve.points.roomValue
scoreboard players operation solve.OrangeOtters solve.points.team.roomPoints = solve.OrangeOtters solve.stats.roomsCompleted
scoreboard players operation solve.OrangeOtters solve.points.team.roomPoints *= solve.handler solve.points.roomValue
scoreboard players operation solve.PinkPikas solve.points.team.roomPoints = solve.PinkPikas solve.stats.roomsCompleted
scoreboard players operation solve.PinkPikas solve.points.team.roomPoints *= solve.handler solve.points.roomValue
scoreboard players operation solve.GreenGoats solve.points.team.roomPoints = solve.GreenGoats solve.stats.roomsCompleted
scoreboard players operation solve.GreenGoats solve.points.team.roomPoints *= solve.handler solve.points.roomValue
scoreboard players operation solve.CyanCougars solve.points.team.roomPoints = solve.CyanCougars solve.stats.roomsCompleted
scoreboard players operation solve.CyanCougars solve.points.team.roomPoints *= solve.handler solve.points.roomValue
scoreboard players operation solve.PurplePenguins solve.points.team.roomPoints = solve.PurplePenguins solve.stats.roomsCompleted
scoreboard players operation solve.PurplePenguins solve.points.team.roomPoints *= solve.handler solve.points.roomValue

# overall ranking points
execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.RedRaccoons solve.points.team 440
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.OrangeOtters solve.points.team 440
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.PinkPikas solve.points.team 440
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.GreenGoats solve.points.team 440
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.CyanCougars solve.points.team 440
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 1 run scoreboard players add solve.PurplePenguins solve.points.team 440

execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.RedRaccoons solve.points.team 360
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.OrangeOtters solve.points.team 360
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.PinkPikas solve.points.team 360
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.GreenGoats solve.points.team 360
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.CyanCougars solve.points.team 360
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 2 run scoreboard players add solve.PurplePenguins solve.points.team 360

execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.RedRaccoons solve.points.team 300
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.OrangeOtters solve.points.team 300
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.PinkPikas solve.points.team 300
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.GreenGoats solve.points.team 300
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.CyanCougars solve.points.team 300
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 3 run scoreboard players add solve.PurplePenguins solve.points.team 300

execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.RedRaccoons solve.points.team 240
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.OrangeOtters solve.points.team 240
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.PinkPikas solve.points.team 240
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.GreenGoats solve.points.team 240
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.CyanCougars solve.points.team 240
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 4 run scoreboard players add solve.PurplePenguins solve.points.team 240

execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.RedRaccoons solve.points.team 160
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.OrangeOtters solve.points.team 160
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.PinkPikas solve.points.team 160
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.GreenGoats solve.points.team 160
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.CyanCougars solve.points.team 160
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 5 run scoreboard players add solve.PurplePenguins solve.points.team 160

execute if score solve.RedRaccoons solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.RedRaccoons solve.points.team 100
execute if score solve.OrangeOtters solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.OrangeOtters solve.points.team 100
execute if score solve.PinkPikas solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.PinkPikas solve.points.team 100
execute if score solve.GreenGoats solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.GreenGoats solve.points.team 100
execute if score solve.CyanCougars solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.CyanCougars solve.points.team 100
execute if score solve.PurplePenguins solve.timer.game.rooms.rank matches 6 run scoreboard players add solve.PurplePenguins solve.points.team 100

# and by room
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 1 run scoreboard players add solve.RedRaccoons solve.points.team 180
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 1 run scoreboard players add solve.OrangeOtters solve.points.team 180
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 1 run scoreboard players add solve.PinkPikas solve.points.team 180
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 1 run scoreboard players add solve.GreenGoats solve.points.team 180
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 1 run scoreboard players add solve.CyanCougars solve.points.team 180
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 1 run scoreboard players add solve.PurplePenguins solve.points.team 180
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 2 run scoreboard players add solve.RedRaccoons solve.points.team 120
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 2 run scoreboard players add solve.OrangeOtters solve.points.team 120
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 2 run scoreboard players add solve.PinkPikas solve.points.team 120
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 2 run scoreboard players add solve.GreenGoats solve.points.team 120
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 2 run scoreboard players add solve.CyanCougars solve.points.team 120
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 2 run scoreboard players add solve.PurplePenguins solve.points.team 120
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 3 run scoreboard players add solve.RedRaccoons solve.points.team 80
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 3 run scoreboard players add solve.OrangeOtters solve.points.team 80
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 3 run scoreboard players add solve.PinkPikas solve.points.team 80
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 3 run scoreboard players add solve.GreenGoats solve.points.team 80
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 3 run scoreboard players add solve.CyanCougars solve.points.team 80
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 3 run scoreboard players add solve.PurplePenguins solve.points.team 80
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 4 run scoreboard players add solve.RedRaccoons solve.points.team 60
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 4 run scoreboard players add solve.OrangeOtters solve.points.team 60
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 4 run scoreboard players add solve.PinkPikas solve.points.team 60
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 4 run scoreboard players add solve.GreenGoats solve.points.team 60
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 4 run scoreboard players add solve.CyanCougars solve.points.team 60
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 4 run scoreboard players add solve.PurplePenguins solve.points.team 60
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 5 run scoreboard players add solve.RedRaccoons solve.points.team 40
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 5 run scoreboard players add solve.OrangeOtters solve.points.team 40
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 5 run scoreboard players add solve.PinkPikas solve.points.team 40
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 5 run scoreboard players add solve.GreenGoats solve.points.team 40
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 5 run scoreboard players add solve.CyanCougars solve.points.team 40
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 5 run scoreboard players add solve.PurplePenguins solve.points.team 40
execute if score solve.RedRaccoons solve.timer.game.room1.rank matches 6 run scoreboard players add solve.RedRaccoons solve.points.team 20
execute if score solve.OrangeOtters solve.timer.game.room1.rank matches 6 run scoreboard players add solve.OrangeOtters solve.points.team 20
execute if score solve.PinkPikas solve.timer.game.room1.rank matches 6 run scoreboard players add solve.PinkPikas solve.points.team 20
execute if score solve.GreenGoats solve.timer.game.room1.rank matches 6 run scoreboard players add solve.GreenGoats solve.points.team 20
execute if score solve.CyanCougars solve.timer.game.room1.rank matches 6 run scoreboard players add solve.CyanCougars solve.points.team 20
execute if score solve.PurplePenguins solve.timer.game.room1.rank matches 6 run scoreboard players add solve.PurplePenguins solve.points.team 20

execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 1 run scoreboard players add solve.RedRaccoons solve.points.team 180
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 1 run scoreboard players add solve.OrangeOtters solve.points.team 180
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 1 run scoreboard players add solve.PinkPikas solve.points.team 180
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 1 run scoreboard players add solve.GreenGoats solve.points.team 180
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 1 run scoreboard players add solve.CyanCougars solve.points.team 180
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 1 run scoreboard players add solve.PurplePenguins solve.points.team 180
execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 2 run scoreboard players add solve.RedRaccoons solve.points.team 120
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 2 run scoreboard players add solve.OrangeOtters solve.points.team 120
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 2 run scoreboard players add solve.PinkPikas solve.points.team 120
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 2 run scoreboard players add solve.GreenGoats solve.points.team 120
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 2 run scoreboard players add solve.CyanCougars solve.points.team 120
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 2 run scoreboard players add solve.PurplePenguins solve.points.team 120
execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 3 run scoreboard players add solve.RedRaccoons solve.points.team 80
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 3 run scoreboard players add solve.OrangeOtters solve.points.team 80
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 3 run scoreboard players add solve.PinkPikas solve.points.team 80
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 3 run scoreboard players add solve.GreenGoats solve.points.team 80
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 3 run scoreboard players add solve.CyanCougars solve.points.team 80
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 3 run scoreboard players add solve.PurplePenguins solve.points.team 80
execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 4 run scoreboard players add solve.RedRaccoons solve.points.team 60
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 4 run scoreboard players add solve.OrangeOtters solve.points.team 60
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 4 run scoreboard players add solve.PinkPikas solve.points.team 60
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 4 run scoreboard players add solve.GreenGoats solve.points.team 60
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 4 run scoreboard players add solve.CyanCougars solve.points.team 60
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 4 run scoreboard players add solve.PurplePenguins solve.points.team 60
execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 5 run scoreboard players add solve.RedRaccoons solve.points.team 40
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 5 run scoreboard players add solve.OrangeOtters solve.points.team 40
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 5 run scoreboard players add solve.PinkPikas solve.points.team 40
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 5 run scoreboard players add solve.GreenGoats solve.points.team 40
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 5 run scoreboard players add solve.CyanCougars solve.points.team 40
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 5 run scoreboard players add solve.PurplePenguins solve.points.team 40
execute if score solve.RedRaccoons solve.timer.game.room2.rank matches 6 run scoreboard players add solve.RedRaccoons solve.points.team 20
execute if score solve.OrangeOtters solve.timer.game.room2.rank matches 6 run scoreboard players add solve.OrangeOtters solve.points.team 20
execute if score solve.PinkPikas solve.timer.game.room2.rank matches 6 run scoreboard players add solve.PinkPikas solve.points.team 20
execute if score solve.GreenGoats solve.timer.game.room2.rank matches 6 run scoreboard players add solve.GreenGoats solve.points.team 20
execute if score solve.CyanCougars solve.timer.game.room2.rank matches 6 run scoreboard players add solve.CyanCougars solve.points.team 20
execute if score solve.PurplePenguins solve.timer.game.room2.rank matches 6 run scoreboard players add solve.PurplePenguins solve.points.team 20

execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 1 run scoreboard players add solve.RedRaccoons solve.points.team 180
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 1 run scoreboard players add solve.OrangeOtters solve.points.team 180
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 1 run scoreboard players add solve.PinkPikas solve.points.team 180
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 1 run scoreboard players add solve.GreenGoats solve.points.team 180
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 1 run scoreboard players add solve.CyanCougars solve.points.team 180
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 1 run scoreboard players add solve.PurplePenguins solve.points.team 180
execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 2 run scoreboard players add solve.RedRaccoons solve.points.team 120
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 2 run scoreboard players add solve.OrangeOtters solve.points.team 120
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 2 run scoreboard players add solve.PinkPikas solve.points.team 120
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 2 run scoreboard players add solve.GreenGoats solve.points.team 120
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 2 run scoreboard players add solve.CyanCougars solve.points.team 120
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 2 run scoreboard players add solve.PurplePenguins solve.points.team 120
execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 3 run scoreboard players add solve.RedRaccoons solve.points.team 80
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 3 run scoreboard players add solve.OrangeOtters solve.points.team 80
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 3 run scoreboard players add solve.PinkPikas solve.points.team 80
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 3 run scoreboard players add solve.GreenGoats solve.points.team 80
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 3 run scoreboard players add solve.CyanCougars solve.points.team 80
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 3 run scoreboard players add solve.PurplePenguins solve.points.team 80
execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 4 run scoreboard players add solve.RedRaccoons solve.points.team 60
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 4 run scoreboard players add solve.OrangeOtters solve.points.team 60
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 4 run scoreboard players add solve.PinkPikas solve.points.team 60
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 4 run scoreboard players add solve.GreenGoats solve.points.team 60
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 4 run scoreboard players add solve.CyanCougars solve.points.team 60
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 4 run scoreboard players add solve.PurplePenguins solve.points.team 60
execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 5 run scoreboard players add solve.RedRaccoons solve.points.team 40
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 5 run scoreboard players add solve.OrangeOtters solve.points.team 40
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 5 run scoreboard players add solve.PinkPikas solve.points.team 40
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 5 run scoreboard players add solve.GreenGoats solve.points.team 40
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 5 run scoreboard players add solve.CyanCougars solve.points.team 40
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 5 run scoreboard players add solve.PurplePenguins solve.points.team 40
execute if score solve.RedRaccoons solve.timer.game.room3.rank matches 6 run scoreboard players add solve.RedRaccoons solve.points.team 20
execute if score solve.OrangeOtters solve.timer.game.room3.rank matches 6 run scoreboard players add solve.OrangeOtters solve.points.team 20
execute if score solve.PinkPikas solve.timer.game.room3.rank matches 6 run scoreboard players add solve.PinkPikas solve.points.team 20
execute if score solve.GreenGoats solve.timer.game.room3.rank matches 6 run scoreboard players add solve.GreenGoats solve.points.team 20
execute if score solve.CyanCougars solve.timer.game.room3.rank matches 6 run scoreboard players add solve.CyanCougars solve.points.team 20
execute if score solve.PurplePenguins solve.timer.game.room3.rank matches 6 run scoreboard players add solve.PurplePenguins solve.points.team 20

execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 1 run scoreboard players add solve.RedRaccoons solve.points.team 180
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 1 run scoreboard players add solve.OrangeOtters solve.points.team 180
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 1 run scoreboard players add solve.PinkPikas solve.points.team 180
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 1 run scoreboard players add solve.GreenGoats solve.points.team 180
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 1 run scoreboard players add solve.CyanCougars solve.points.team 180
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 1 run scoreboard players add solve.PurplePenguins solve.points.team 180
execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 2 run scoreboard players add solve.RedRaccoons solve.points.team 120
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 2 run scoreboard players add solve.OrangeOtters solve.points.team 120
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 2 run scoreboard players add solve.PinkPikas solve.points.team 120
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 2 run scoreboard players add solve.GreenGoats solve.points.team 120
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 2 run scoreboard players add solve.CyanCougars solve.points.team 120
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 2 run scoreboard players add solve.PurplePenguins solve.points.team 120
execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 3 run scoreboard players add solve.RedRaccoons solve.points.team 80
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 3 run scoreboard players add solve.OrangeOtters solve.points.team 80
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 3 run scoreboard players add solve.PinkPikas solve.points.team 80
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 3 run scoreboard players add solve.GreenGoats solve.points.team 80
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 3 run scoreboard players add solve.CyanCougars solve.points.team 80
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 3 run scoreboard players add solve.PurplePenguins solve.points.team 80
execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 4 run scoreboard players add solve.RedRaccoons solve.points.team 60
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 4 run scoreboard players add solve.OrangeOtters solve.points.team 60
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 4 run scoreboard players add solve.PinkPikas solve.points.team 60
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 4 run scoreboard players add solve.GreenGoats solve.points.team 60
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 4 run scoreboard players add solve.CyanCougars solve.points.team 60
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 4 run scoreboard players add solve.PurplePenguins solve.points.team 60
execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 5 run scoreboard players add solve.RedRaccoons solve.points.team 40
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 5 run scoreboard players add solve.OrangeOtters solve.points.team 40
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 5 run scoreboard players add solve.PinkPikas solve.points.team 40
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 5 run scoreboard players add solve.GreenGoats solve.points.team 40
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 5 run scoreboard players add solve.CyanCougars solve.points.team 40
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 5 run scoreboard players add solve.PurplePenguins solve.points.team 40
execute if score solve.RedRaccoons solve.timer.game.room4.rank matches 6 run scoreboard players add solve.RedRaccoons solve.points.team 20
execute if score solve.OrangeOtters solve.timer.game.room4.rank matches 6 run scoreboard players add solve.OrangeOtters solve.points.team 20
execute if score solve.PinkPikas solve.timer.game.room4.rank matches 6 run scoreboard players add solve.PinkPikas solve.points.team 20
execute if score solve.GreenGoats solve.timer.game.room4.rank matches 6 run scoreboard players add solve.GreenGoats solve.points.team 20
execute if score solve.CyanCougars solve.timer.game.room4.rank matches 6 run scoreboard players add solve.CyanCougars solve.points.team 20
execute if score solve.PurplePenguins solve.timer.game.room4.rank matches 6 run scoreboard players add solve.PurplePenguins solve.points.team 20

# sum team points
scoreboard players operation solve.RedRaccoons solve.points.team += solve.RedRaccoons solve.points.team.roomPoints
scoreboard players operation solve.OrangeOtters solve.points.team += solve.OrangeOtters solve.points.team.roomPoints
scoreboard players operation solve.PinkPikas solve.points.team += solve.PinkPikas solve.points.team.roomPoints
scoreboard players operation solve.GreenGoats solve.points.team += solve.GreenGoats solve.points.team.roomPoints
scoreboard players operation solve.CyanCougars solve.points.team += solve.CyanCougars solve.points.team.roomPoints
scoreboard players operation solve.PurplePenguins solve.points.team += solve.PurplePenguins solve.points.team.roomPoints

# <===== INDIVIDUAL POINTS =====>

# determine players on team
scoreboard players set solve.RedRaccoons solve.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add solve.RedRaccoons solve.stats.players 1
scoreboard players set solve.OrangeOtters solve.stats.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add solve.OrangeOtters solve.stats.players 1
scoreboard players set solve.PinkPikas solve.stats.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add solve.PinkPikas solve.stats.players 1
scoreboard players set solve.GreenGoats solve.stats.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add solve.GreenGoats solve.stats.players 1
scoreboard players set solve.CyanCougars solve.stats.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add solve.CyanCougars solve.stats.players 1
scoreboard players set solve.PurplePenguins solve.stats.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add solve.PurplePenguins solve.stats.players 1

# reset individual points
execute as @a run scoreboard players set @s solve.points.indiv 0

# update individual points by team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s solve.points.indiv = solve.RedRaccoons solve.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s solve.points.indiv /= solve.RedRaccoons solve.stats.players
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s solve.points.indiv = solve.OrangeOtters solve.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s solve.points.indiv /= solve.OrangeOtters solve.stats.players
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s solve.points.indiv = solve.PinkPikas solve.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s solve.points.indiv /= solve.PinkPikas solve.stats.players
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s solve.points.indiv = solve.GreenGoats solve.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s solve.points.indiv /= solve.GreenGoats solve.stats.players
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s solve.points.indiv = solve.CyanCougars solve.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s solve.points.indiv /= solve.CyanCougars solve.stats.players
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s solve.points.indiv = solve.PurplePenguins solve.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s solve.points.indiv /= solve.PurplePenguins solve.stats.players