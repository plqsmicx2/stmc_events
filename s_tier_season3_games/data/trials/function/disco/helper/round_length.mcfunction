# helper function that sets the current round length

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
