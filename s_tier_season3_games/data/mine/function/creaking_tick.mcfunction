scoreboard players remove @a[scores={mine.game.crafted.spectral_arrow=1..}] mine.points.mined.diamond_ore 1
scoreboard players remove @a[scores={mine.game.crafted.spectral_arrow=1..}] mine.game.crafted.spectral_arrow 1

execute as @a[scores={mine.game.crafted.rail=1..}] run clear @s rail[!can_place_on] 6
execute as @a[scores={mine.game.crafted.rail=1..}] run give @s rail[can_place_on=[{blocks:"minecraft:cyan_terracotta"}]] 6
scoreboard players remove @a[scores={mine.game.crafted.rail=1..}] mine.points.mined.diamond_ore 3
scoreboard players remove @a[scores={mine.game.crafted.rail=1..}] mine.game.crafted.rail 6

execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=creaking,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ barrel{Items:[{Slot:0b,id:"minecraft:compass",count:1,components:{"minecraft:custom_name":{text:"Creaking Compass",italic:0b,color:"gold"},"minecraft:lore":[{text:"hold in offhand",italic:0b,color:"blue"}],"minecraft:lodestone_tracker":{target:{dimension:"mine:creaking",pos:[I;0,0,0]},tracked:true}}}]}
execute as @a if items entity @s weapon.offhand compass at @s as @n[type=creaking,distance=..20] if score @p mine.game.y = @s mine.game.y run data modify block ~ 199 ~ Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @s Pos
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=creaking,distance=..20] mine.game.y = @s mine.game.y run item replace entity @s weapon.offhand from block ~ 199 ~ container.0
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=creaking,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ air


execute unless entity @a[gamemode=adventure] run function mine:general_end

execute if score mine.handler mine.timer matches 20 run recipe give @a mine:mine_creaking_archer
execute if score mine.handler mine.timer matches 20 run recipe give @a mine:mine_creaking_builder

execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/creaking/archer
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/creaking/builder
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/creaking/fighter
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/creaking/tracker

execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Creaking"

execute if score mine.handler mine.timer matches 400 run function mine:game/openwalls

$execute if score mine.handler mine.timer matches 450 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 750 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 1050 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 1350 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 1550 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 1850 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 2150 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 2450 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 2750 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 3050 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 3350 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 3650 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 3950 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 4250 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 4550 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
$execute if score mine.handler mine.timer matches 4850 as @a[gamemode=adventure] at @s rotated as @s rotated ~$(rot) 0 positioned ^ ^ ^10 run function mine:mobs/game/creaking/creaking
