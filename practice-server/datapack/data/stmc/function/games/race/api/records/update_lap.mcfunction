# this function will be run as @s
# if @s set a new record

# inputs:
# map = "divide", "descent"

# new record announcement!
$tellraw @a [{selector:"@s"},{text:" set a new Race lap time record! Map: Davey's $(map)",color:gold,bold:true}]

# store @s's time in ticks
$execute store result storage race:data record.$(map).lap.time int 1 run scoreboard players get @s race.fastest_lap

# store @s's nickname
execute at @s run summon item_display ~ ~ ~ {Tags:[profile]}
execute as @s run loot replace entity @e[type=item_display,tag=profile] contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
$data modify storage race:data record.$(map).lap.name set from entity @n[type=item_display,tag=profile] item.components."minecraft:profile".name
execute at @s run kill @e[type=item_display,distance=..100]