# runs a single round of disco

# <===== ROUND START =====>

# at the start of the round, update the current round length
execute if score disco.handler disco.timer.game matches 1 run function trials:disco/helper/round_length

# update bossbar
execute store result bossbar disco.timer value run scoreboard players get disco.handler disco.timer.game

# randomize block
execute if score disco.handler disco.timer.game matches 1 store result score disco.handler disco.current_round_block run random value 1..5

# set inventory
execute as @a[scores={disco.alive=1}] run function trials:disco/helper/set_inventory

# and update the floor
execute if score disco.handler disco.timer.game matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..10
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..10
execute as @e[tag=upper_level] positioned as @s in trials:disco run clone ~ ~ ~ ~14 ~ ~14 -7 116 -7
kill @e[tag=upper_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length run scoreboard players add disco.handler disco.rounds_played 1
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length as @a[scores={disco.alive=1}] run scoreboard players add @s disco.points.rounds 1
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length as @a[scores={disco.alive=1}] at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# remove black concrete
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:black_concrete

# keep dark oak wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep snow block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep light blue wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep moss block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# keep shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -7 116 -7 7 116 7 air replace minecraft:tinted_glass

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length_delay in trials:disco run kill @e[type=!player]
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length_delay run scoreboard players set disco.handler disco.timer.game 0

# <===== GAME END =====>

# move to next stage after 60 rounds
execute if score disco.handler disco.rounds_played matches 60.. run scoreboard players set disco.handler disco.stage 4
# or move to next stage no players are alive
execute if score disco.handler disco.players_alive matches 0 run scoreboard players set disco.handler disco.stage 4