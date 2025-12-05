# this function handles the whole thread for collect

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- explanation of game
# 2- 20s delay with countdown at 5 seconds
# 3- round start; round_timer begins
# 4- round end; 15 second delay to announce winners before resetting & updating sg.stage to next round

# update points every tick (regardless of stage)
function collect:points-update
function collect:sidebar with storage stmc:global

# calculate players on each team
scoreboard players set collect.RedRaccoons collect.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add collect.RedRaccoons collect.stats.players 1
scoreboard players set collect.OrangeOtters collect.stats.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add collect.OrangeOtters collect.stats.players 1
scoreboard players set collect.PinkPikas collect.stats.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add collect.PinkPikas collect.stats.players 1
scoreboard players set collect.YellowYaks collect.stats.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add collect.YellowYaks collect.stats.players 1
scoreboard players set collect.GreenGoats collect.stats.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add collect.GreenGoats collect.stats.players 1
scoreboard players set collect.CyanCougars collect.stats.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add collect.CyanCougars collect.stats.players 1
scoreboard players set collect.PurplePenguins collect.stats.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add collect.PurplePenguins collect.stats.players 1
scoreboard players set collect.BlueBears collect.stats.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add collect.BlueBears collect.stats.players 1

# if we're in stage 0, we only need to increment our timer & check if 20 seconds have elapsed
# and then update our stage to 1
execute if score collect.handler collect.stage matches 0 run scoreboard players add collect.handler collect.timer.delay1 1
execute if score collect.handler collect.stage matches 0 if score collect.handler collect.timer.delay1 matches 400.. run scoreboard players set collect.handler collect.stage 1

# if we're in stage 1, we need to increment the timer, call our explanation function, & check if 30 seconds have elapsed
execute if score collect.handler collect.stage matches 1 run scoreboard players add collect.handler collect.timer.explanation 1
execute if score collect.handler collect.stage matches 1 run function collect:explanation
execute if score collect.handler collect.stage matches 1 if score collect.handler collect.timer.explanation matches 640.. run scoreboard players set collect.handler collect.stage 2

# if we're in stage 2, we just need to increment the timer & update the actionbar
execute if score collect.handler collect.stage matches 2 run scoreboard players add collect.handler collect.timer.delay2 1
# start game
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 200.. run function collect:helper/give_items
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 380 run title @a actionbar {"text":"1 seconds!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 399 run title @a title {"text":"Go!","bold":true,"color":"aqua"}
execute if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 400.. run function collect:start_game
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 320 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute as @a at @s if score collect.handler collect.stage matches 2 if score collect.handler collect.timer.delay2 matches 399 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# if we're in stage 3, we need to increment the timer & call the round_tick function (a lot happens in there)
# round_tick will automatically update the stage when the round ends
execute if score collect.handler collect.stage matches 3 run scoreboard players add collect.handler collect.timer.game 1
execute if score collect.handler collect.stage matches 3 run function collect:game_tick

# if we're in stage 4, we just need to increment its timer [points are not announced after this round]
# and then update sg.stage to 1
execute if score collect.handler collect.stage matches 4 run scoreboard players add collect.handler collect.timer.delay3 1
execute if score collect.handler collect.stage matches 4 if score collect.handler collect.timer.delay3 matches 100 run function collect:team_announcements
execute if score collect.handler collect.stage matches 4 if score collect.handler collect.timer.delay3 matches 200.. run function collect:reset