# run sidebar
function stmc:games/arena/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.arena] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s arena.return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a arena.return 0

# set arrow damage
execute in stmc:arena/main as @e[type=arrow,tag=!damage.set] run \
        data merge entity @s {Tags:["damage.set"],damage:10d}

execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}]
execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_spear"}}]
execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:wind_charge"}}]
execute in stmc:arena/main run kill @e[type=item,nbt={Item:{id:"minecraft:stick"}}]