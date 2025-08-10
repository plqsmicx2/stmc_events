# game tick for solve [SOLVE]

# this function 

# <===== START GAME =====>

# remove netherite blocks
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 5 20 95 7 air replace minecraft:netherite_block
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 25 20 95 27 air replace minecraft:netherite_block
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 45 20 95 47 air replace minecraft:netherite_block
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 65 20 95 67 air replace minecraft:netherite_block
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 85 20 95 87 air replace minecraft:netherite_block
execute in solve:solve if score solve.handler solve.timer.game matches 1 run fill 14 92 105 20 95 107 air replace minecraft:netherite_block

# <===== DURING TICK =====>

# update timers
scoreboard players add solve.handler solve.timer.game.tickCount 1

execute if score solve.handler solve.timer.game.tickCount matches 20 run scoreboard players add solve.handler solve.timer.game.secs 1
execute if score solve.handler solve.timer.game.tickCount matches 20 run scoreboard players set solve.handler solve.timer.game.tickCount 0

execute if score solve.handler solve.timer.game.secs matches 60 run scoreboard players add solve.handler solve.timer.game.mins 1
execute if score solve.handler solve.timer.game.secs matches 60 run scoreboard players set solve.handler solve.timer.game.secs 0

# show timer
execute if score solve.handler solve.timer.game.secs matches 0..9 run title @a actionbar [{text:"Time elapsed: ",color:yellow},{score:{name:"solve.handler",objective:"solve.timer.game.mins"},color:yellow},{text:":0",color:yellow},{score:{name:"solve.handler",objective:"solve.timer.game.secs"},color:yellow}]
execute if score solve.handler solve.timer.game.secs matches 10.. run title @a actionbar [{text:"Time elapsed: ",color:yellow},{score:{name:"solve.handler",objective:"solve.timer.game.mins"},color:yellow},{text:":",color:yellow},{score:{name:"solve.handler",objective:"solve.timer.game.secs"},color:yellow}]

# determine players on a team
scoreboard players set solve.RedRaccoons solve.stats.players 0
scoreboard players set solve.OrangeOtters solve.stats.players 0
scoreboard players set solve.PinkPikas solve.stats.players 0
scoreboard players set solve.GreenGoats solve.stats.players 0
scoreboard players set solve.CyanCougars solve.stats.players 0
scoreboard players set solve.PurplePenguins solve.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add solve.RedRaccoons solve.stats.players 1
execute as @a[team=ORANGE_OTTERS] run scoreboard players add solve.OrangeOtters solve.stats.players 1
execute as @a[team=PINK_PIKAS] run scoreboard players add solve.PinkPikas solve.stats.players 1
execute as @a[team=GREEN_GOATS] run scoreboard players add solve.GreenGoats solve.stats.players 1
execute as @a[team=CYAN_COUGARS] run scoreboard players add solve.CyanCougars solve.stats.players 1
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add solve.PurplePenguins solve.stats.players 1

# force minimum players
execute unless score solve.RedRaccoons solve.stats.players matches 1.. run scoreboard players set solve.RedRaccoons solve.stats.players 1
execute unless score solve.OrangeOtters solve.stats.players matches 1.. run scoreboard players set solve.OrangeOtters solve.stats.players 1
execute unless score solve.PinkPikas solve.stats.players matches 1.. run scoreboard players set solve.PinkPikas solve.stats.players 1
execute unless score solve.GreenGoats solve.stats.players matches 1.. run scoreboard players set solve.GreenGoats solve.stats.players 1
execute unless score solve.CyanCougars solve.stats.players matches 1.. run scoreboard players set solve.CyanCougars solve.stats.players 1
execute unless score solve.PurplePenguins solve.stats.players matches 1.. run scoreboard players set solve.PurplePenguins solve.stats.players 1

# check for teams completing rooms
function solve:game_active/room_checks

# <===== END GAME =====>

# update teams' total game timers
scoreboard players set solve.RedRaccoons solve.timer.game.rooms 0
scoreboard players operation solve.RedRaccoons solve.timer.game.rooms += solve.RedRaccoons solve.timer.game.room1
scoreboard players operation solve.RedRaccoons solve.timer.game.rooms += solve.RedRaccoons solve.timer.game.room2
scoreboard players operation solve.RedRaccoons solve.timer.game.rooms += solve.RedRaccoons solve.timer.game.room3
scoreboard players operation solve.RedRaccoons solve.timer.game.rooms += solve.RedRaccoons solve.timer.game.room4

scoreboard players set solve.OrangeOtters solve.timer.game.rooms 0
scoreboard players operation solve.OrangeOtters solve.timer.game.rooms += solve.OrangeOtters solve.timer.game.room1
scoreboard players operation solve.OrangeOtters solve.timer.game.rooms += solve.OrangeOtters solve.timer.game.room2
scoreboard players operation solve.OrangeOtters solve.timer.game.rooms += solve.OrangeOtters solve.timer.game.room3
scoreboard players operation solve.OrangeOtters solve.timer.game.rooms += solve.OrangeOtters solve.timer.game.room4

scoreboard players set solve.PinkPikas solve.timer.game.rooms 0
scoreboard players operation solve.PinkPikas solve.timer.game.rooms += solve.PinkPikas solve.timer.game.room1
scoreboard players operation solve.PinkPikas solve.timer.game.rooms += solve.PinkPikas solve.timer.game.room2
scoreboard players operation solve.PinkPikas solve.timer.game.rooms += solve.PinkPikas solve.timer.game.room3
scoreboard players operation solve.PinkPikas solve.timer.game.rooms += solve.PinkPikas solve.timer.game.room4

scoreboard players set solve.GreenGoats solve.timer.game.rooms 0
scoreboard players operation solve.GreenGoats solve.timer.game.rooms += solve.GreenGoats solve.timer.game.room1
scoreboard players operation solve.GreenGoats solve.timer.game.rooms += solve.GreenGoats solve.timer.game.room2
scoreboard players operation solve.GreenGoats solve.timer.game.rooms += solve.GreenGoats solve.timer.game.room3
scoreboard players operation solve.GreenGoats solve.timer.game.rooms += solve.GreenGoats solve.timer.game.room4

scoreboard players set solve.CyanCougars solve.timer.game.rooms 0
scoreboard players operation solve.CyanCougars solve.timer.game.rooms += solve.CyanCougars solve.timer.game.room1
scoreboard players operation solve.CyanCougars solve.timer.game.rooms += solve.CyanCougars solve.timer.game.room2
scoreboard players operation solve.CyanCougars solve.timer.game.rooms += solve.CyanCougars solve.timer.game.room3
scoreboard players operation solve.CyanCougars solve.timer.game.rooms += solve.CyanCougars solve.timer.game.room4

scoreboard players set solve.PurplePenguins solve.timer.game.rooms 0
scoreboard players operation solve.PurplePenguins solve.timer.game.rooms += solve.PurplePenguins solve.timer.game.room1
scoreboard players operation solve.PurplePenguins solve.timer.game.rooms += solve.PurplePenguins solve.timer.game.room2
scoreboard players operation solve.PurplePenguins solve.timer.game.rooms += solve.PurplePenguins solve.timer.game.room3
scoreboard players operation solve.PurplePenguins solve.timer.game.rooms += solve.PurplePenguins solve.timer.game.room4

# if a team is done, set them to spectator
execute as @a[team=RED_RACCOONS,gamemode=!spectator] if score solve.RedRaccoons solve.stats.roomsCompleted matches 4 run gamemode spectator @s
execute as @a[team=ORANGE_OTTERS,gamemode=!spectator] if score solve.OrangeOtters solve.stats.roomsCompleted matches 4 run gamemode spectator @s
execute as @a[team=PINK_PIKAS,gamemode=!spectator] if score solve.PinkPikas solve.stats.roomsCompleted matches 4 run gamemode spectator @s
execute as @a[team=GREEN_GOATS,gamemode=!spectator] if score solve.GreenGoats solve.stats.roomsCompleted matches 4 run gamemode spectator @s
execute as @a[team=CYAN_COUGARS,gamemode=!spectator] if score solve.CyanCougars solve.stats.roomsCompleted matches 4 run gamemode spectator @s
execute as @a[team=PURPLE_PENGUINS,gamemode=!spectator] if score solve.PurplePenguins solve.stats.roomsCompleted matches 4 run gamemode spectator @s

# if all teams are done, end the game
scoreboard players set solve.handler solve.stats.roomsCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 4 run scoreboard players add solve.handler solve.stats.roomsCompleted 1

execute if score solve.handler solve.stats.roomsCompleted matches 6 run scoreboard players set solve.handler solve.stage 4

# if we've hit 12 minutes, end game
execute if score solve.handler solve.timer.game.mins matches 12 run gamemode spectator @a
execute if score solve.handler solve.timer.game.mins matches 12 run scoreboard players set solve.handler solve.stage 4