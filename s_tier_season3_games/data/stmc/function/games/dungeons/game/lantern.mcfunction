
#remove light
execute as @a if items entity @s[gamemode=!spectator] hotbar.* minecraft:lantern at @s if block ~.5 ~ ~ air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=!spectator] hotbar.* minecraft:lantern at @s if block ~-.5 ~ ~ air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=!spectator] hotbar.* minecraft:lantern at @s if block ~ ~ ~.5 air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=!spectator] hotbar.* minecraft:lantern at @s if block ~ ~ ~-.5 air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light

#place light
execute as @a if items entity @s[gamemode=!spectator] hotbar.* minecraft:lantern at @s unless block ~.5 ~ ~ light unless block ~-.5 ~ ~ light unless block ~ ~ ~.5 light unless block ~ ~ ~-.5 light run fill ~-.5 ~-.5 ~-.5 ~.5 ~.5 ~.5 light[level=11] replace air

#remove light spectator
execute as @a if items entity @s[gamemode=spectator] hotbar.* minecraft:lantern at @s if block ~.5 ~ ~ light run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=spectator] hotbar.* minecraft:lantern at @s if block ~-.5 ~ ~ light run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=spectator] hotbar.* minecraft:lantern at @s if block ~ ~ ~.5 light run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a if items entity @s[gamemode=spectator] hotbar.* minecraft:lantern at @s if block ~ ~ ~-.5 light run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light

#remove light item drop
execute as @a at @s[gamemode=!spectator] if block ~.5 ~ ~ light unless items entity @s hotbar.* minecraft:lantern run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a at @s[gamemode=!spectator] if block ~-.5 ~ ~ light unless items entity @s hotbar.* minecraft:lantern run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a at @s[gamemode=!spectator] if block ~ ~ ~.5 light unless items entity @s hotbar.* minecraft:lantern run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light
execute as @a at @s[gamemode=!spectator] if block ~ ~ ~-.5 light unless items entity @s hotbar.* minecraft:lantern run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace light




