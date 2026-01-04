# helper function that sets all the stats for players who died without a core

# reset players' alive status
gamemode spectator @s
teleport @s 0 140 0
scoreboard players set @s blitz.alive 0

# announce player's death
scoreboard objectives add .kill dummy
scoreboard players set blitz.temp .kill 0
execute as @a if score @s blitz.tempkills matches 1.. run scoreboard players set blitz.temp .kill 1

# died to another player
execute if score blitz.temp .kill matches 1.. run tellraw @a \
        [{text:"FINAL: ",color:red},{selector:"@a[scores={blitz.tempkills=1..}]"},\
        {text:" killed ",color:red},{selector:"@s"}]

# died otherwise
execute if score blitz.temp .kill matches 0 run tellraw @a \
        [{text:"FINAL: ",color:red},{selector:"@s"},\
        {text:" died.",color:red}]

scoreboard objectives remove .kill

# award whoever got the kill a final kill
execute as @a if score @s blitz.tempkills matches 1.. run scoreboard players operation @s blitz.finalKills += @s blitz.tempkills

# and reset all players' temp kills
scoreboard players set @a blitz.tempkills 0