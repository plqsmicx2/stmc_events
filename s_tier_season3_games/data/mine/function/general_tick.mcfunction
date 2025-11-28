# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

execute as @e[type=silverfish] at @s store success entity @s Pos[1] double -300 run summon endermite

execute as @a[scores={mine.game.mined.diamond_ore=1..}] at @s at @n[type=item,nbt={Item:{id:"minecraft:diamond"}}] run playsound minecraft:block.amethyst_cluster.hit player @s ~ ~ ~ 0.8 1.2 0

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] unless data entity @s Item.components."minecraft:lore" run data modify entity @s Item.components."minecraft:lore" set value [{color:"dark_gray",text:"can be safely discarded",italic:0b},{color:"red",text:"crafting removes points",italic:0b}]

execute as @a[gamemode=adventure,scores={mine.game.deathcount=1}] run gamemode spectator @s

execute as @e store result score @s mine.game.y run data get entity @s Pos[1] .2

function mine:game/spectp