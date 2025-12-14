# run sidebar
function race:sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.race] run item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s .return matches 1.. run function lobby:teleport
scoreboard players set @a .return 0

execute in race:race run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in race:race run kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

# update players currently playing
execute as @a if score @s race.gameActive matches 1.. run function race:game_tick