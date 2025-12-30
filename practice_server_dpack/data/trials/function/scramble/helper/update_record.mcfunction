# this function will be run as @s
# if @s set a new record

# new record announcement!
tellraw @a [{selector:"@s"},{text:" set a new Scramble rounds survived record!",color:aqua}]

# store @s's rounds survived
execute store result storage scramble:data record.rounds int 1 run scoreboard players get @s race.laptime.total

# store @s's nickname
execute at @s in trials:scramble run summon item_display ~ ~ ~ {Tags:[profile]}
execute as @s run loot replace entity @e[type=item_display,tag=profile] contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
data modify storage scramble:data record.name set from entity @n[type=item_display,tag=profile] item.components."minecraft:profile".name
execute in trials:scramble run kill @e[type=item_display]