# update trials sidebar
function stmc:games/trials/sidebar

# interaction check
execute in stmc:trials/lobby as @e[tag=replicate] on target run function stmc:games/trials/replicate/teleport
execute in stmc:trials/lobby as @e[tag=scramble] on target run function stmc:games/trials/scramble/teleport
execute in stmc:trials/lobby as @e[tag=spleef] on target run function stmc:games/trials/spleef/teleport
execute in stmc:trials/lobby as @e[tag=towers] on target run function stmc:games/trials/towers/teleport
execute in stmc:trials/lobby as @e[type=interaction] run data remove entity @s interaction

execute in stmc:trials/lobby run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:trials/lobby run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}}]

# give players item to return to hub
execute as @a[team=dim.trials] run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_red","text":"HUB","underlined":true}]
execute as @a if score @s .return matches 1.. run function lobby:teleport
scoreboard players set @a .return 0

# update each game
function stmc:games/trials/replicate/tick
function stmc:games/trials/scramble/tick
function stmc:games/trials/spleef/tick
function stmc:games/trials/towers/tick