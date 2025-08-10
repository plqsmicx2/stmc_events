# game tick function for race [RACE]

# <===== GAME START =====>

# remove starting barrier
execute in race:race if score race.handler race.timer.game matches 1 run fill -15 106 10 -11 109 10 air replace minecraft:spruce_fence

# <===== GAME END =====>

# end by time
execute if score race.handler race.timer.game matches 14400.. run scoreboard players set race.handler race.stage 4

# end by all players completed
execute if score race.handler race.teams_completed matches 6 run scoreboard players set race.handler race.stage 4

# <===== INCREMENT TIMERS =====>

# depending on laps completed, we increment different timers
execute as @a if score @s race.laps_completed matches 0 run scoreboard players add @s race.laptime.1 1
execute as @a if score @s race.laps_completed matches 1 run scoreboard players add @s race.laptime.2 1
execute as @a if score @s race.laps_completed matches 2 run scoreboard players add @s race.laptime.3 1
execute as @a if score @s race.laps_completed matches 3 run scoreboard players add @s race.laptime.4 1

# increment recent completion delay
execute as @a if score @s race.recentlyCompletedLap matches 1.. run scoreboard players add @s race.recentCompletionDelay 1
# reset recent completion delay if it reaches 80
execute as @a if score @s race.recentCompletionDelay matches 80.. run scoreboard players set @s race.recentlyCompletedLap 0
execute as @a if score @s race.recentCompletionDelay matches 80.. run scoreboard players set @s race.recentCompletionDelay 0

# increment each players' lap times for display
execute as @a if score @s race.laps_completed matches 0..3 run scoreboard players add @s race.laptime.tick 1

execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.tick matches 20 run scoreboard players add @s race.laptime.seconds 1
execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.tick matches 20 run scoreboard players set @s race.laptime.tick 0

execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.seconds matches 60 run scoreboard players add @s race.laptime.mins 1
execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.seconds matches 60 run scoreboard players set @s race.laptime.seconds 0

# <===== LAP COMPLETIONS =====>

# checkpoint update (also checks for lap completions)
execute as @a unless score @s race.laps_completed matches 4.. run function race:checkpoint_update

# grant elytra
execute in race:race as @a[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.chest with minecraft:elytra[enchantments={"minecraft:binding_curse":1}]
# teleport players back to checkpoint if they're out of bounds
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=-17,dx=-100] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[z=57,dz=50] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=-11,dx=100,z=-7,dz=-50] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=57,dx=50] run tp @s -14 126 -10

# set players to spectator mode & announce if they have completed all laps
execute as @a[gamemode=!spectator] if score @s race.laps_completed matches 4.. run gamemode spectator @s

# update players & teams completed
scoreboard players set race.handler race.players_completed 0
execute as @a[scores={race.laps_completed=4..}] run scoreboard players add race.handler race.players_completed 1

scoreboard players set race.RedRaccoons race.players_completed 0
scoreboard players set race.OrangeOtters race.players_completed 0
scoreboard players set race.PinkPikas race.players_completed 0
scoreboard players set race.GreenGoats race.players_completed 0
scoreboard players set race.CyanCougars race.players_completed 0
scoreboard players set race.PurplePenguins race.players_completed 0
execute as @a[scores={race.laps_completed=4..},team=RED_RACCOONS] run scoreboard players add race.RedRaccoons race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=ORANGE_OTTERS] run scoreboard players add race.OrangeOtters race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=PINK_PIKAS] run scoreboard players add race.PinkPikas race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=GREEN_GOATS] run scoreboard players add race.GreenGoats race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=CYAN_COUGARS] run scoreboard players add race.CyanCougars race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=PURPLE_PENGUINS] run scoreboard players add race.PurplePenguins race.players_completed 1

scoreboard players set race.handler race.teams_completed 0
execute if score race.RedRaccoons race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1
execute if score race.OrangeOtters race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1
execute if score race.PinkPikas race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1
execute if score race.GreenGoats race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1
execute if score race.CyanCougars race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1
execute if score race.PurplePenguins race.players_completed matches 4.. run scoreboard players add race.handler race.players_completed 1

# store player/team completion ranks & announce completion
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 0..9 run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":0",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 10.. run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. run scoreboard players operation @s race.completion.rank = race.handler race.players_completed

execute as @a if score race.RedRaccoons race.players_completed matches 4.. unless score race.RedRaccoons race.completion.rank matches 1.. run tellraw @a ["",{text:"Red Raccoons",bold:true,color:"red"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"red"},{text:"team to finish!",color:"green"}]
execute as @a if score race.RedRaccoons race.players_completed matches 4.. unless score race.RedRaccoons race.completion.rank matches 1.. run scoreboard players operation race.RedRaccoons race.completion.rank = race.handler race.players_completed
execute as @a if score race.OrangeOtters race.players_completed matches 4.. unless score race.OrangeOtters race.completion.rank matches 1.. run tellraw @a ["",{text:"Orange Otters",bold:true,color:"gold"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"gold"},{text:"team to finish!",color:"green"}]
execute as @a if score race.OrangeOtters race.players_completed matches 4.. unless score race.OrangeOtters race.completion.rank matches 1.. run scoreboard players operation race.OrangeOtters race.completion.rank = race.handler race.players_completed
execute as @a if score race.PinkPikas race.players_completed matches 4.. unless score race.PinkPikas race.completion.rank matches 1.. run tellraw @a ["",{text:"Pink Pikas",bold:true,color:"light_purple"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"light_purple"},{text:"team to finish!",color:"green"}]
execute as @a if score race.PinkPikas race.players_completed matches 4.. unless score race.PinkPikas race.completion.rank matches 1.. run scoreboard players operation race.PinkPikas race.completion.rank = race.handler race.players_completed
execute as @a if score race.GreenGoats race.players_completed matches 4.. unless score race.GreenGoats race.completion.rank matches 1.. run tellraw @a ["",{text:"Green Goats",bold:true,color:"dark_green"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"green"},{text:"team to finish!",color:"green"}]
execute as @a if score race.GreenGoats race.players_completed matches 4.. unless score race.GreenGoats race.completion.rank matches 1.. run scoreboard players operation race.GreenGoats race.completion.rank = race.handler race.players_completed
execute as @a if score race.CyanCougars race.players_completed matches 4.. unless score race.CyanCougars race.completion.rank matches 1.. run tellraw @a ["",{text:"Cyan Cougars",bold:true,color:"dark_aqua"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"red"},{text:"team to finish!",color:"green"}]
execute as @a if score race.CyanCougars race.players_completed matches 4.. unless score race.CyanCougars race.completion.rank matches 1.. run scoreboard players operation race.CyanCougars race.completion.rank = race.handler race.players_completed
execute as @a if score race.PurplePenguins race.players_completed matches 4.. unless score race.PurplePenguins race.completion.rank matches 1.. run tellraw @a ["",{text:"Purple Penguins",bold:true,color:"dark_purple"},{text:" were the #",color:"green"},{score:{name:"race.handler",objective:"race.teams_completed"},bold:true,color:"red"},{text:"team to finish!",color:"green"}]
execute as @a if score race.PurplePenguins race.players_completed matches 4.. unless score race.PurplePenguins race.completion.rank matches 1.. run scoreboard players operation race.PurplePenguins race.completion.rank = race.handler race.players_completed