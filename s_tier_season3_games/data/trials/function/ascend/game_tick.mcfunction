# This function handles the game thread for ascend

# update timer
scoreboard players add ascend.handler ascend.timer.game.tempTimer 1

execute if score ascend.handler ascend.timer.game.tempTimer matches 20.. run scoreboard players remove ascend.handler ascend.timer.game.secondsLeft 1
execute if score ascend.handler ascend.timer.game.tempTimer matches 20.. run scoreboard players set ascend.handler ascend.timer.game.tempTimer 0

execute if score ascend.handler ascend.timer.game.secondsLeft matches ..-1 run scoreboard players remove ascend.handler ascend.timer.game.minsLeft 1
execute if score ascend.handler ascend.timer.game.secondsLeft matches ..-1 run scoreboard players set ascend.handler ascend.timer.game.secondsLeft 59

execute as @a if score ascend.handler ascend.timer.game.secondsLeft matches 10.. run title @s actionbar ["",{"score": {"name": "ascend.handler", "objective": "ascend.timer.game.minsLeft"},"color":"aqua"}, {"text": ":","color":"aqua"}, {"score": {"name": "ascend.handler", "objective": "ascend.timer.game.secondsLeft"},"color":"aqua"}, {"text": " remaining","color":"aqua"}]
execute as @a if score ascend.handler ascend.timer.game.secondsLeft matches ..9 run title @s actionbar ["",{"score": {"name": "ascend.handler", "objective": "ascend.timer.game.minsLeft"},"color":"aqua"}, {"text": ":0","color":"aqua"}, {"score": {"name": "ascend.handler", "objective": "ascend.timer.game.secondsLeft"},"color":"aqua"}, {"text": " remaining","color":"aqua"}]

# end game if timer > 4 minutes or all teams are done
execute if score ascend.handler ascend.timer.game matches 4800.. run scoreboard players set ascend.handler ascend.stage 4

scoreboard players set ascend.handler ascend.completed 0
execute if score ascend.RedRaccoons ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.OrangeOtters ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.PinkPikas ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.YellowYaks ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.GreenGoats ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.CyanCougars ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.PurplePenguins ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1
execute if score ascend.BlueBears ascend.completed matches 6.. run scoreboard players add ascend.handler ascend.completed 1

execute if score ascend.handler ascend.completed matches 6.. run scoreboard players set ascend.handler ascend.stage 4

# give players return item
execute as @a[team=!SPECTATORS] run item replace entity @s hotbar.8 with \
        fishing_rod[custom_name={text:"Return",color:red,bold:true,italic:false},lore=[{text:"Returns you to the central room.",color:gray}]]

# kill any dropped fishing rods
execute in trials:ascend run kill @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}}]

# and check for return item use
execute as @a if score @s ascend.return matches 1.. run function trials:ascend/spawn_return

# check for a completed armor stand nearby each player
scoreboard players set @a ascend.completed 0
execute at @a as @e[distance=..4,type=minecraft:armor_stand,nbt={equipment:{head:{id:"minecraft:leather_helmet"},chest:{id:"minecraft:leather_chestplate"},legs:{id:"minecraft:leather_leggings"},feet:{id:"minecraft:leather_boots"}}}] \
        run scoreboard players add @a ascend.completed 1

# for each team, check if any of their players have a completed armor stand nearby
# and if the # of completed armor stands matches the # needed to complete the stage
# increment their stage

execute as @a[team=RED_RACCOONS] if score @s ascend.completed matches 1 if score ascend.RedRaccoons ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=RED_RACCOONS] if score @s ascend.completed matches 2 if score ascend.RedRaccoons ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=ORANGE_OTTERS] if score @s ascend.completed matches 1 if score ascend.OrangeOtters ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=ORANGE_OTTERS] if score @s ascend.completed matches 2 if score ascend.OrangeOtters ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=PINK_PIKAS] if score @s ascend.completed matches 1 if score ascend.PinkPikas ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=PINK_PIKAS] if score @s ascend.completed matches 2 if score ascend.PinkPikas ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=YELLOW_YAKS] if score @s ascend.completed matches 1 if score ascend.YellowYaks ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=YELLOW_YAKS] if score @s ascend.completed matches 2 if score ascend.YellowYaks ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=GREEN_GOATS] if score @s ascend.completed matches 1 if score ascend.GreenGoats ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=GREEN_GOATS] if score @s ascend.completed matches 2 if score ascend.GreenGoats ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=CYAN_COUGARS] if score @s ascend.completed matches 1 if score ascend.CyanCougars ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=CYAN_COUGARS] if score @s ascend.completed matches 2 if score ascend.CyanCougars ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=PURPLE_PENGUINS] if score @s ascend.completed matches 1 if score ascend.PurplePenguins ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=PURPLE_PENGUINS] if score @s ascend.completed matches 2 if score ascend.PurplePenguins ascend.completed matches 4..5 run \
        function trials:ascend/increment_room

execute as @a[team=BLUE_BEARS] if score @s ascend.completed matches 1 if score ascend.BlueBears ascend.completed matches 0..3 run \
        function trials:ascend/increment_room
execute as @a[team=BLUE_BEARS] if score @s ascend.completed matches 2 if score ascend.BlueBears ascend.completed matches 4..5 run \
        function trials:ascend/increment_room
