# helper function that checks when players reach a checkpoint
# called every tick

# if a player is on a checkpoint, update their value
scoreboard objectives add .increment dummy
execute as @a[team=dim.race] at @s if block ~ ~ ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] at @s if block ~ ~-1 ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] at @s if block ~ ~-2 ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] at @s if block ~ ~-3 ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] at @s if block ~ ~-4 ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] at @s if block ~ ~-5 ~ orange_wool run \
        scoreboard players set @s .increment 1
execute as @a[team=dim.race] if score @s .increment matches 1.. run \
        function stmc:games/race/api/checkpoint/update
scoreboard objectives remove .increment