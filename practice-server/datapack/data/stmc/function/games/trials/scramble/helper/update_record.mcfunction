# this function will be run as @s
# if @s set a new record

# new record announcement!
tellraw @a ["",{selector:"@s",bold:true},{text:" set a new Scramble rounds survived record! ",color:aqua},\
        {storage:"scramble:data",nbt:"record.rounds",color:gold},{text:" --> ",color:aqua},\
        {score:{name:"@s",objective:"scramble.roundsCompleted"},color:gold}]

# store @s's rounds survived
execute store result storage scramble:data record.rounds int 1 run scoreboard players get @s scramble.roundsCompleted

# store @s's nickname
execute at @s in stmc:trials/scramble run summon item_display ~ ~ ~ {Tags:[profile]}
execute as @s run loot replace entity @e[type=item_display,tag=profile] contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
data modify storage scramble:data record.name set from entity @n[type=item_display,tag=profile] item.components."minecraft:profile".name
execute in stmc:trials/scramble run kill @e[type=item_display]