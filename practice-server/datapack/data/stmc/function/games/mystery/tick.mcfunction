# run sidebar
function stmc:games/mystery/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.mystery] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s mystery.return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a mystery.return 0

execute in stmc:mystery/mansion run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]