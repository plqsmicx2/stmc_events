execute as @a[scores={mine.game.mined.diamond_ore=1..}] at @s at @n[type=item,nbt={Item:{id:"minecraft:diamond"}}] run playsound minecraft:block.amethyst_cluster.hit player @s ~ ~ ~ 0.8 1.2 0
execute unless score mine.handler mine.stage.lobby matches 1 run scoreboard players add @a[scores={mine.game.mined.diamond_ore=1..}] mine.points.mined.diamond_ore 1
scoreboard players reset @a mine.game.mined.diamond_ore
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]