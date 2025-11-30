# this function runs the game thread for blitz

# update border
function blitz:border/tick

# update visual timer
# increment timer
scoreboard players add blitz.handler blitz.timer.game.temp 1
# check if we need to update the seconds Remaining
execute if score blitz.handler blitz.timer.game.temp matches 20 run scoreboard players add blitz.handler blitz.timer.game.secsRemaining 1
execute if score blitz.handler blitz.timer.game.temp matches 20 run scoreboard players set blitz.handler blitz.timer.game.temp 0
# check if we need to update the minutes Remaining
execute if score blitz.handler blitz.timer.game.secsRemaining matches 60.. run scoreboard players add blitz.handler blitz.timer.game.minsRemaining 1
execute if score blitz.handler blitz.timer.game.secsRemaining matches 60.. run scoreboard players set blitz.handler blitz.timer.game.secsRemaining 0

# prevent crate item drops
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}}]
execute in blitz:blitz run kill @e[type=experience_orb]

# and core item drops
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:pink_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:green_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:cyan_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:purple_wool"}}]
execute in blitz:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}]

# ore generation
function blitz:helper/generate

# check for deaths
function blitz:helper/death_handler

# handle players' items
function blitz:helper/item_replace

# check for cores broken

execute in blitz:blitz if score blitz.RedRaccoons blitz.stats.coreIntact matches 1 unless block -36 106 97 red_wool run scoreboard players set blitz.RedRaccoons blitz.stats.coreIntact 2
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Red Raccoons' core has been broken!",color:red}]
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 run scoreboard players set blitz.RedRaccoons blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.OrangeOtters blitz.stats.coreIntact matches 1 unless block -36 106 -97 orange_wool run scoreboard players set blitz.OrangeOtters blitz.stats.coreIntact 2
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Orange Otters' core has been broken!",color:red}]
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 run scoreboard players set blitz.OrangeOtters blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.PinkPikas blitz.stats.coreIntact matches 1 unless block 97 106 -36 pink_wool run scoreboard players set blitz.PinkPikas blitz.stats.coreIntact 2
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Pink Pikas' core has been broken!",color:red}]
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 run scoreboard players set blitz.PinkPikas blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.YellowYaks blitz.stats.coreIntact matches 1 unless block 97 106 36 yellow_wool run scoreboard players set blitz.YellowYaks blitz.stats.coreIntact 2
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Yellow Yaks' core has been broken!",color:red}]
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 run scoreboard players set blitz.YellowYaks blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.GreenGoats blitz.stats.coreIntact matches 1 unless block 36 106 -97 green_wool run scoreboard players set blitz.GreenGoats blitz.stats.coreIntact 2
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Green Goats' core has been broken!",color:red}]
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 run scoreboard players set blitz.GreenGoats blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.CyanCougars blitz.stats.coreIntact matches 1 unless block -97 106 -36 cyan_wool run scoreboard players set blitz.CyanCougars blitz.stats.coreIntact 2
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Cyan Cougars' core has been broken!",color:red}]
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 run scoreboard players set blitz.CyanCougars blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.PurplePenguins blitz.stats.coreIntact matches 1 unless block -97 106 36 purple_wool run scoreboard players set blitz.PurplePenguins blitz.stats.coreIntact 2
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Purple Penguins' core has been broken!",color:red}]
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 run scoreboard players set blitz.PurplePenguins blitz.stats.coreIntact 0

execute in blitz:blitz if score blitz.BlueBears blitz.stats.coreIntact matches 1 unless block 36 106 97 blue_wool run scoreboard players set blitz.BlueBears blitz.stats.coreIntact 2
execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The Blue Bears' core has been broken!",color:red}]
execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 run scoreboard players set blitz.BlueBears blitz.stats.coreIntact 0

# at 3 minutes, remove crate barriers
execute if score blitz.handler blitz.timer.game matches 3600 in blitz:blitz run fill -35 103 -35 35 118 35 air replace tinted_glass

# end game
execute if score blitz.handler blitz.stats.teamsAlive matches 1 run function blitz:helper/game_end