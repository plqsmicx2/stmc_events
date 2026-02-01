# run sidebar
function stmc:games/sprint/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.sprint] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s sprint.return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a sprint.return 0

execute in stmc:sprint/reloaded2 run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:sprint/reloaded2 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]
execute in stmc:sprint/reloaded2 run kill @e[type=item,nbt={Item:{id:"minecraft:apple"}}]

# update players currently playing
execute as @a if score @s sprint.gameActive matches 1.. run function stmc:games/sprint/api/game_tick