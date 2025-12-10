# start round

# remove glass
execute in survival_games:sg1 run fill 8 170 8 -8 170 -8 air replace tinted_glass

# reapply elytra
item replace entity @a armor.chest with minecraft:elytra[enchantments={"minecraft:binding_curse":1b}]

# reset scoreboards & stats
gamemode adventure @a
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players set @s sg.alive 1
effect give @a instant_health 1 110 true
effect give @a saturation 1 1 true

# announce start
title @a title {"text":"Go!","bold":true,"color":"gold"}