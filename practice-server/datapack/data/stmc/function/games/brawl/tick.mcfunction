# run sidebar
function stmc:games/brawl/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.brawl] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s brawl.return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a brawl.return 0

execute in stmc:brawl/main run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]