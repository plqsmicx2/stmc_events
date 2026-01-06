# update trials sidebar
function trials:sidebar

# interaction check
execute in trials:lobby as @e[tag=replicate] on target run function trials:replicate/teleport
execute in trials:lobby as @e[tag=scramble] on target run function trials:scramble/teleport
execute in trials:lobby as @e[tag=spleef] on target run function trials:spleef/teleport
execute in trials:lobby as @e[tag=towers] on target run function trials:towers/teleport
execute in trials:lobby as @e[type=interaction] run data remove entity @s interaction

execute in trials:lobby run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in trials:lobby run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}}]

# give players item to return to hub
execute as @a[team=dim.trials] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s .return matches 1.. run function lobby:teleport
scoreboard players set @a .return 0

# update each game
function trials:replicate/tick
function trials:scramble/tick
function trials:spleef/tick
function trials:towers/tick