# thread function that runs each round

# increment timer
scoreboard players add extract.handler extract.timer.game.round 1

# update timer bossbar
execute if score extract.handler extract.timer.game.round matches 1 run bossbar add extract.timer {text:"Round",color:red}
execute if score extract.handler extract.timer.game.round matches 1 run bossbar set extract.timer value 0
execute if score extract.handler extract.timer.game.round matches 1 run bossbar set extract.timer color red
execute if score extract.handler extract.timer.game.round matches 1 run bossbar set extract.timer max 2200
execute if score extract.handler extract.timer.game.round matches 1 run bossbar set extract.timer players @a
execute store result bossbar extract.timer value run scoreboard players get extract.handler extract.timer.game.round

# set matchups
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 0 run \
        function stmc:games/extract/round/world/round1
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 1 run \
        function stmc:games/extract/round/world/round2
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 2 run \
        function stmc:games/extract/round/world/round3
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 3 run \
        function stmc:games/extract/round/world/round4
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 4 run \
        function stmc:games/extract/round/world/round5
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 5 run \
        function stmc:games/extract/round/world/round6
execute if score extract.handler extract.timer.game.round matches 1 if score extract.handler extract.stats.roundsCompleted matches 6 run \
        function stmc:games/extract/round/world/round7

# build world
execute if score extract.handler extract.timer.game.round matches 0..60 store result storage extract:map time int 1 run scoreboard players get extract.handler extract.timer.game.round
execute if score extract.handler extract.timer.game.round matches 0..60 run function stmc:games/extract/build_world with storage extract:map

# give players base items
execute as @a if score extract.handler extract.timer.game.round matches 60 run function stmc:games/extract/inventory/grant_base

# automatically pause between rounds (but not during build round phase or <2s before start)
execute if score extract.handler extract.timer.game.round matches 61..360 run function thread:automatic_pause

# teleport players @62 ticks (to ensure dced players still get it)
execute if score extract.handler extract.timer.game.round matches 62 run function stmc:games/extract/helper/player_teleport

# check for interactions
execute in stmc:extract as @e[tag=zombie] on attacker run function stmc:games/extract/inventory/grant_zombie
execute in stmc:extract as @e[tag=piglin] on attacker run function stmc:games/extract/inventory/grant_piglin
execute in stmc:extract as @e[tag=skeleton] on attacker run function stmc:games/extract/inventory/grant_skeleton
execute in stmc:extract as @e[tag=medic] on attacker run function stmc:games/extract/inventory/grant_medic
execute in stmc:extract as @e[tag=miner] on attacker run function stmc:games/extract/inventory/grant_miner
execute in stmc:extract as @e[tag=witch] on attacker run function stmc:games/extract/inventory/grant_witch
execute in stmc:extract as @e[type=interaction] run data remove entity @s attack

# prevent extra items at the start of the round
execute in stmc:extract if score extract.handler extract.timer.game.round matches 45..400 run effect clear @a
execute in stmc:extract if score extract.handler extract.timer.game.round matches ..400 run kill @e[type=item]

# countdown at 5 seconds
execute if score extract.handler extract.timer.game.round matches 300 run title @a actionbar {text:"5 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute if score extract.handler extract.timer.game.round matches 320 run title @a actionbar {text:"4 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 320 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute if score extract.handler extract.timer.game.round matches 340 run title @a actionbar {text:"3 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute if score extract.handler extract.timer.game.round matches 360 run title @a actionbar {text:"2 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute if score extract.handler extract.timer.game.round matches 380 run title @a actionbar {text:"1 second!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute if score extract.handler extract.timer.game.round matches 400 run title @a title {text:"Go!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round matches 400 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# start round after 15 seconds
execute in stmc:extract if score extract.handler extract.timer.game.round matches 400 run function stmc:games/extract/round/round_start

# kills & block breaks are automatically calculated by the game, so no need to check up on them

# track double points
execute if score extract.handler extract.timer.game.round matches 400..800 run function stmc:games/extract/helper/double_value

# announce end of double points
execute if score extract.handler extract.timer.game.round matches 800 run tellraw @a {text:"Double points ended.",color:red}

# make sure blocks are not dropped
execute in stmc:extract run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}]
execute in stmc:extract run kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}]

# round end check
execute if score extract.handler extract.timer.game.round matches 2200 run function stmc:games/extract/round/round_end
