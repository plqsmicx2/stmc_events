# this function will be run as @s
# if @s set a new record

# new record announcement!
tellraw @a [{selector:"@s"},{text:" set a new Mine ores broken record!",color:green,bold:true}]

# store @s's ores
execute store result storage stmc:records mine.ores.value int 1 run scoreboard players get @s mine.points.indiv

# store @s's nickname
execute at @s in stmc:mine/game run summon item_display ~ ~ ~ {Tags:[profile]}
execute as @s run loot replace entity @e[type=item_display,tag=profile] contents loot \
        {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",\
        functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
data modify storage stmc:records mine.ores.name set from entity @n[type=item_display,tag=profile] \
        item.components."minecraft:profile".name
execute in stmc:mine/game run kill @e[type=item_display]