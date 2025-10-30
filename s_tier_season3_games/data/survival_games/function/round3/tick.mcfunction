# thread handler for survival games round 1

# stage key:
# 0- 20s delay to allow all players to teleport
# 1- explanation of game
# 2- 10s delay with countdown at 5 seconds
# 3- round start; round_timer begins
# 4- round end; 15 second delay to announce winners before resetting & updating sg.stage to next round

# update points every tick (regardless of stage)
function survival_games:round3/points_update

# first, we call our load function if this is the first time we're here
execute unless score sg.r3.handler sg.r3.stage matches 0.. run function survival_games:round3/load

# if we're in stage 0, we only need to increment our timer & check if 20 seconds have elapsed
# and then update our stage to 1
execute if score sg.r3.handler sg.r3.stage matches 0 run scoreboard players add sg.r3.handler sg.r3.timer.delay1 1
execute in survival_games:sg1 if score sg.r3.handler sg.r3.timer.delay1 matches 1..80 run function survival_games:round3/reset_world
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 2 run title @a title {text:"Round 3",color:dark_red,bold:true}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 3 run title @a subtitle {text:"begins in 20 seconds",color:dark_red}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 100 run item replace entity @a armor.chest with minecraft:elytra[enchantments={"minecraft:binding_curse":1b}]
# generate border
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 100 run function survival_games:border_generate
# start game
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 300 run title @a actionbar {"text":"5 seconds!","bold":true,"color":"gold"}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 320 run title @a actionbar {"text":"4 seconds!","bold":true,"color":"gold"}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 340 run title @a actionbar {"text":"3 seconds!","bold":true,"color":"gold"}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 360 run title @a actionbar {"text":"2 seconds!","bold":true,"color":"gold"}
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 380 run title @a actionbar {"text":"1 seconds!","bold":true,"color":"gold"}
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 320 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute as @a at @s if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 399 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute if score sg.r3.handler sg.r3.stage matches 0 if score sg.r3.handler sg.r3.timer.delay1 matches 400.. run scoreboard players set sg.r3.handler sg.r3.stage 1

# if we're in stage 1, we need to increment the timer & call the round_tick function (a lot happens in there)
# round_tick will automatically update the stage when the round ends
execute if score sg.r3.handler sg.r3.stage matches 1 run scoreboard players add sg.r3.handler sg.r3.timer.round 1
execute if score sg.r3.handler sg.r3.stage matches 1 run function survival_games:round3/round_tick

# if we're in stage 2, we just need to increment its timer [points are not announced after this round]
# and then update sg.stage to 1
execute if score sg.r3.handler sg.r3.stage matches 2 run scoreboard players add sg.r3.handler sg.r3.timer.delay2 1
execute if score sg.r3.handler sg.r3.stage matches 2 if score sg.r3.handler sg.r3.timer.delay2 matches 200.. run scoreboard players set sg.handler sg.stage 2