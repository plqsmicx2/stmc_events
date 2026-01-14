execute if items entity @s hotbar.* minecraft:lantern at @s anchored eyes unless block ~ ~ ~ light run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute if items entity @s hotbar.* minecraft:lantern at @s anchored eyes if block ~ ~ ~ air run setblock ~ ~ ~ light[level=9]
execute anchored eyes if block ~ ~ ~ light unless items entity @p hotbar.* minecraft:lantern run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
