# run sidebar
function extract:sidebar

# run game
execute if score extract.handler extract.gamesActive matches 1.. run function extract:game_tick

# give players carrot on a stick to return to hub
execute as @a[team=dim.extract] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s extract.return matches 1.. run function lobby:teleport
scoreboard players set @a extract.return 0

execute in extract:extract run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]