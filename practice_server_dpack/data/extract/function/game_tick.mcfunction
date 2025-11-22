# increment game timer
scoreboard players add extract.handler extract.timer.game 1
execute store result bossbar extract.timer value run scoreboard players get extract.handler extract.timer.game

# check for interactions
execute in extract:extract as @e[tag=zombie] on target run function extract:inventory/grant_zombie
execute in extract:extract as @e[tag=piglin] on target run function extract:inventory/grant_piglin
execute in extract:extract as @e[tag=skeleton] on target run function extract:inventory/grant_skeleton
execute in extract:extract as @e[tag=medic] on target run function extract:inventory/grant_medic
execute in extract:extract as @e[tag=miner] on target run function extract:inventory/grant_miner
execute in extract:extract as @e[tag=witch] on target run function extract:inventory/grant_witch
execute in extract:extract as @e[type=interaction] run data remove entity @s interaction

# prevent extra items at the start of the round
execute in extract:extract if score extract.handler extract.timer.game matches ..400 run effect clear @a
execute in extract:extract if score extract.handler extract.timer.game matches ..400 run kill @e[type=item]

# countdown at 5 seconds
execute if score extract.handler extract.timer.game matches 300 run title @a actionbar {text:"5 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute if score extract.handler extract.timer.game matches 320 run title @a actionbar {text:"4 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 320 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute if score extract.handler extract.timer.game matches 340 run title @a actionbar {text:"3 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute if score extract.handler extract.timer.game matches 360 run title @a actionbar {text:"2 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute if score extract.handler extract.timer.game matches 380 run title @a actionbar {text:"1 second!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute if score extract.handler extract.timer.game matches 400 run title @a title {text:"Go!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game matches 400 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# start round after 15 seconds
execute in extract:extract if score extract.handler extract.timer.game matches 400 run fill 45 101 -20 55 106 20 air replace red_stained_glass
execute in extract:extract if score extract.handler extract.timer.game matches 400 run fill 45 101 -20 55 106 20 air replace blue_stained_glass
execute in extract:extract if score extract.handler extract.timer.game matches 400 run fill 45 101 -20 55 106 20 air replace barrier
execute in extract:extract if score extract.handler extract.timer.game matches 400 run kill @e[type=armor_stand]
execute in extract:extract if score extract.handler extract.timer.game matches 400 run kill @e[type=interaction]

# kills & block breaks are automatically calculated by the game, so no need to check up on them

# make sure blocks are not dropped
execute in extract:extract run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}]
execute in extract:extract run kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}]

# round end check
execute if score extract.handler extract.timer.game matches 2400 run function extract:reset
