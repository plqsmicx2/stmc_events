# this function will be run as @s
# if @s set a new record

# new record announcement!
tellraw @a [{selector:"@s"},{text:" set a new Race time record!",color:green}]

# store @s's time in ticks
execute store result storage race:data record.time int 1 run scoreboard players get @s race.laptime.total

# store @s's nickname
execute at @s in race:race run summon item_display ~ ~ ~ {Tags:[profile]}
execute as @s run loot replace entity @e[type=item_display,tag=profile] contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
data modify storage race:data record.name set from entity @n[type=item_display,tag=profile] item.components."minecraft:profile".name
execute in race:race run kill @e[type=item_display]