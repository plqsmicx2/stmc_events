
#after aggro
execute as @e[tag=creaking] run data modify entity @s Silent set value 0b
execute as @e[tag=creaking] run attribute @s scale base reset
#teleport 10 blocks away
$execute as @e[type=creaking,tag=creaking] at @s at @p[gamemode=adventure] rotated $(rot) 0 positioned ^ ^ ^10 run tp @s ~ ~ ~

#guarantee spawn in air
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1

tag @e remove creaking