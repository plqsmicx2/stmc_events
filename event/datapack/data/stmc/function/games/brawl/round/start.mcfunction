# start round

# standardize players
clear @a
effect clear @a
execute as @a run attribute @s knockback_resistance base reset

# remove glass
execute in stmc:brawl/main run fill 8 170 8 -8 170 -8 air replace tinted_glass

# reapply elytra
item replace entity @a armor.chest with minecraft:elytra[enchantments={"minecraft:binding_curse":1b}]

# reset scoreboards & stats
gamemode adventure @a
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players set @s brawl.alive 1
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players set @s brawl.death 0
effect give @a instant_health 1 110 true
effect give @a saturation 1 1 true

# announce start
title @a title {"text":"Go!","bold":true,"color":"gold"}