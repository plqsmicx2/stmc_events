# runs a single round of disco

# Game Start
execute in trials:disco if score disco.handler disco.rounds_played matches 0 if score disco.handler disco.timer.game matches 1 run playsound music_disc.otherside master @a 0 105 0 0.9

# <===== ROUND START =====>

# set current round length
execute if score disco.handler disco.rounds_played matches 0..4 run scoreboard players set disco.handler disco.current_round_length 60
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 0 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 5..9 run scoreboard players set disco.handler disco.current_round_length 50
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 5 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 5 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 10..14 run scoreboard players set disco.handler disco.current_round_length 40
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 10 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 10 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 15..24 run scoreboard players set disco.handler disco.current_round_length 30
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 15 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 15 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 25..34 run scoreboard players set disco.handler disco.current_round_length 25
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 25 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 25 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 35..44 run scoreboard players set disco.handler disco.current_round_length 20
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 35 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 35 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 45..54 run scoreboard players set disco.handler disco.current_round_length 15
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 45 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 45 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

execute if score disco.handler disco.rounds_played matches 55..60 run scoreboard players set disco.handler disco.current_round_length 10
execute if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 55 run tellraw @a {text:"Speeding Up!",bold:true,color:"green"}
execute as @a at @s if score disco.handler disco.timer.game matches 1 if score disco.handler disco.rounds_played matches 55 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~

scoreboard players set disco.handler disco.current_round_length_delay 40
scoreboard players operation disco.handler disco.current_round_length_delay += disco.handler disco.current_round_length

# randomize block
execute if score disco.handler disco.timer.game matches 1 store result score disco.handler disco.current_round_block run random value 1..5

# and give the player that block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.0 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.1 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.2 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.3 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.4 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.5 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.6 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.7 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.8 with minecraft:stripped_dark_oak_wood
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s weapon.offhand with minecraft:stripped_dark_oak_wood

execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.0 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.1 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.2 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.3 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.4 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.5 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.6 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.7 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.8 with minecraft:snow_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s weapon.offhand with minecraft:snow_block

execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.0 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.1 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.2 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.3 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.4 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.5 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.6 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.7 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.8 with minecraft:light_blue_wool
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s weapon.offhand with minecraft:light_blue_wool

execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.0 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.1 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.2 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.3 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.4 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.5 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.6 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.7 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.8 with minecraft:moss_block
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s weapon.offhand with minecraft:moss_block

execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.0 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.1 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.2 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.3 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.4 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.5 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.6 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.7 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.8 with minecraft:shroomlight
execute as @a if score disco.handler disco.timer.game matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s weapon.offhand with minecraft:shroomlight

# and update the floor

# first upper level
execute if score disco.handler disco.timer.game matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..16
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..16
execute as @e[tag=upper_level] positioned as @s in trials:disco run clone ~ ~ ~ ~8 ~ ~8 -4 107 -4
kill @e[tag=upper_level]

# then lower level
execute if score disco.handler disco.timer.game matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["lower_level"]}
execute as @e[tag=lower_level] store result entity @s Pos[0] double 1 run random value -25..14
execute as @e[tag=lower_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=lower_level] store result entity @s Pos[2] double 1 run random value -25..14
execute as @e[tag=lower_level] positioned as @s in trials:disco run clone ~ ~ ~ ~10 ~ ~10 -5 103 -5
kill @e[tag=lower_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length run scoreboard players add disco.handler disco.rounds_played 1
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length as @a[scores={disco.alive=1}] run scoreboard players add @s disco.points.rounds 1
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length as @a[scores={disco.alive=1}] at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# remove black concrete
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:black_concrete

# keep dark oak wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep snow block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep light blue wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep moss block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep shroomlight
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:stripped_dark_oak_wood
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:snow_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:light_blue_wool
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:moss_block
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length_delay in trials:disco run kill @e[type=!player]
execute if score disco.handler disco.timer.game = disco.handler disco.current_round_length_delay run scoreboard players set disco.handler disco.timer.game 0

# <===== GAME END =====>

# move to next stage after 60 rounds
execute if score disco.handler disco.rounds_played matches 60.. run scoreboard players set disco.handler disco.stage 4
# or move to next stage no players are alive
execute if score disco.handler disco.players_alive matches 0 run scoreboard players set disco.handler disco.stage 4