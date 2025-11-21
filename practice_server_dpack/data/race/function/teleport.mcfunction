# acts as the 'load' function for race
# teleports player to the dimension & sets lots of default values for them

# function is run on @s

execute in race:race run tp @s 0 100 197

execute in race:race at @s positioned ~ ~ ~ run playsound block.portal.travel master @s ~ ~ ~ 0.1 1.1

gamemode adventure @s

clear @s
effect clear @s

effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

xp set @a 0 levels
xp set @a 0 points
