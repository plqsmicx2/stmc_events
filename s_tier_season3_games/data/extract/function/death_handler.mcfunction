# death handler for Extract

# all it needs to do is set player spawnpoints & reset their alive status

# spawnpoint
execute in extract:extract as @a at @s run spawnpoint @s ~ ~ ~

# reset alive status
execute as @a[scores={extract.stats.alive=1}] if score @s extract.stats.deaths matches 1.. run scoreboard players set @s extract.stats.alive 0
execute as @a[scores={extract.stats.alive=0},gamemode=!spectator] run gamemode spectator @s