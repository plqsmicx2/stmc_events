# run sidebar
function stmc:games/joust/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.joust] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s joust.return matches 1.. run function stmc:lobby/teleport
scoreboard players set @a joust.return 0

# check for potion kill streaks
execute as @a[team=dim.joust] run function stmc:games/joust/utils/potion_grant

# kill items
execute in stmc:joust/main run function stmc:games/joust/utils/kill_items

# update player
execute as @a[team=dim.joust] run function stmc:games/joust/utils/update_player

execute in stmc:joust/main run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]