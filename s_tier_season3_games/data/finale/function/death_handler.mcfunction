# function to track player deaths & update appropriate scoreboards

execute as @a if entity @s[gamemode=!adventure] if score @s finale.stats.deaths matches 1.. run gamemode adventure @s

# and that their status is updated
execute as @a if score @s finale.stats.deaths matches 1.. run scoreboard players set @s finale.stats.alive 0