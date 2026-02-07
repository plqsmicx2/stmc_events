# run sidebar
function stmc:games/race/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.race] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s .return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a .return 0

execute in stmc:race/daveys_descent run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:race/daveys_descent run kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]
execute in stmc:race/daveys_descent run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]
execute in stmc:race/daveys_descent run kill @e[type=item,nbt={Item:{id:"minecraft:wind_charge"}}]

# update players currently playing
execute as @a if score @s race.gameActive matches 1.. run function stmc:games/race/api/game/tick