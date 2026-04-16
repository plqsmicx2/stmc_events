# helper function that handles the individual round threads

# runs a single round of scramble

# increment round timer
scoreboard players add scramble.lobby1 scramble.timer.round 1

# <===== ROUND START =====>

# at the start of the round, update the current round length
execute if score scramble.lobby1 scramble.timer.round matches 1 run function stmc:games/trials/scramble/helper/round_length

# announce current round & delay
title @a[team=dim.tr.scramble,scores={scramble.alive=1}] actionbar ["",{text:"Rounds Survived: ",color:aqua},\
        {score:{name:"scramble.lobby1",objective:"scramble.roundsCompleted"},color:gold,bold:true},\
        {text:" | Round Length: ",color:aqua},\
        {score:{name:"scramble.lobby1",objective:"scramble.current_round_length"},color:red,bold:true},\
        {text:" ticks.",color:aqua}]

# randomize block
execute if score scramble.lobby1 scramble.timer.round matches 1 store result score scramble.lobby1 scramble.current_round_block run random value 1..5

# set inventory
execute as @a[scores={scramble.alive=1}] if score scramble.lobby1 scramble.timer.round matches 1 \
        run function stmc:games/trials/scramble/helper/set_inventory

# and update the floor
execute if score scramble.lobby1 scramble.timer.round matches 2 in stmc:trials/scramble run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..10
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 0..50
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..10
execute as @e[tag=upper_level] positioned as @s in stmc:trials/scramble run clone ~ ~ ~ ~14 ~ ~14 193 100 -7
execute in stmc:trials/scramble run kill @e[tag=upper_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length run scoreboard players add scramble.lobby1 scramble.roundsCompleted 1
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length as @a[scores={scramble.alive=1}] at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# remove black concrete
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:black_concrete

# keep dark oak wood
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 1 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:pink_wool
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 1 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:blackstone
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 1 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:moss_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 1 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:amethyst_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 1 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:tinted_glass

# keep snow block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 2 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:calcite
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 2 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:blackstone
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 2 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:moss_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 2 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:amethyst_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 2 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:tinted_glass

# keep light blue wool
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 3 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:calcite
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 3 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:pink_wool
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 3 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:moss_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 3 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:amethyst_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 3 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:tinted_glass

# keep moss block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 4 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:calcite
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 4 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:pink_wool
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 4 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:blackstone
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 4 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:amethyst_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 4 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:tinted_glass

# keep amethyst_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 5 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:calcite
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 5 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:pink_wool
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 5 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:blackstone
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 5 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:moss_block
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length if score scramble.lobby1 scramble.current_round_block matches 5 in stmc:trials/scramble run fill 193 100 -7 207 100 7 air replace minecraft:tinted_glass

# <===== "KILL" PLAYERS =====>

execute in stmc:trials/scramble as @a[team=dim.tr.scramble] at @s[x=193,y=97,z=-7,dx=15,dy=2,dz=15] \
        run function stmc:games/trials/scramble/helper/kill_player

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length_delay in stmc:trials/scramble run kill @e[type=!player]
execute if score scramble.lobby1 scramble.timer.round = scramble.lobby1 scramble.current_round_length_delay run scoreboard players set scramble.lobby1 scramble.timer.round 0