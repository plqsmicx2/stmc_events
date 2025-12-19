# helper function that handles the individual round threads

# runs a single round of scramble

# increment round timer
scoreboard players add scramble.lobby1 scramble.timer.round 1

# <===== ROUND START =====>

# at the start of the round, update the current round length
execute if score scramble.handler scramble.timer.round matches 1 run function trials:scramble/helper/round_length

# randomize block
execute if score scramble.handler scramble.timer.round matches 1 store result score scramble.lobby1 scramble.current_round_block run random value 1..5

# set inventory
execute as @a[scores={scramble.alive=1}] if score scramble.lobby1 scramble.timer.round matches 1 \
        run function trials:scramble/helper/set_inventory

# and update the floor
execute if score scramble.handler scramble.timer.round matches 1 in trials:scramble run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..10
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..10
$execute as @e[tag=upper_level] positioned as @s in trials:scramble run clone ~ ~ ~ ~14 ~ ~14 -$(x) 100 -$(z)
kill @e[tag=upper_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length run scoreboard players add scramble.handler scramble.roundsCompleted 1
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length as @a[scores={scramble.alive=1}] at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# remove black concrete
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:black_concrete

# keep dark oak wood
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep snow block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep light blue wool
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep moss block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep shroomlight
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in trials:scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# <===== "KILL" PLAYERS =====>

$execute as @a[x=$(x),y=97,z=$(z),dx=15,dy=2,dz=15] if score @s scramble.alive matches 1 run function trials:scramble/helper/kill_player

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length_delay in trials:scramble run kill @e[type=!player]
execute if score scramble.handler scramble.timer.round = scramble.handler scramble.current_round_length_delay run scoreboard players set scramble.handler scramble.timer.game 0