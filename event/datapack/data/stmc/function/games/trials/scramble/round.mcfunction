# runs a single round of scramble

# <===== ROUND START =====>

# at the start of the round, update the current round length
execute if score scramble.handler scramble.timer.game matches 1 run function stmc:games/trials/scramble/helper/round_length

# update bossbar
execute store result bossbar scramble.timer value run scoreboard players get scramble.handler scramble.timer.game

# randomize block
execute if score scramble.handler scramble.timer.game matches 1 store result score scramble.handler scramble.current_round_block run random value 1..5

# set inventory
execute as @a[scores={scramble.alive=1}] run function stmc:games/trials/scramble/helper/set_inventory

# and update the floor
execute if score scramble.handler scramble.timer.game matches 1 in stmc:trials/scramble run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..10
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..10
execute as @e[tag=upper_level] positioned as @s in stmc:trials/scramble run clone ~ ~ ~ ~13 ~ ~13 -7 116 -7
kill @e[tag=upper_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length run scoreboard players add scramble.handler scramble.rounds_played 1
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length as @a[scores={scramble.alive=1}] run scoreboard players add @s scramble.points.rounds 1
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length as @a[scores={scramble.alive=1}] at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# remove black concrete
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:black_concrete

# keep dark oak wood
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 1 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep snow block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 2 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep light blue wool
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 3 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep moss block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 4 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep shroomlight
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length if score scramble.handler scramble.current_round_block matches 5 in stmc:trials/scramble run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length_delay in stmc:trials/scramble run kill @e[type=!player]
execute if score scramble.handler scramble.timer.game = scramble.handler scramble.current_round_length_delay run scoreboard players set scramble.handler scramble.timer.game 0

# <===== GAME END =====>

# move to next stage after 60 rounds
execute if score scramble.handler scramble.rounds_played matches 60.. run scoreboard players set scramble.handler scramble.stage 4
# or move to next stage no players are alive
execute if score scramble.handler scramble.players_alive matches 0 run scoreboard players set scramble.handler scramble.stage 4