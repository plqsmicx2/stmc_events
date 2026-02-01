# update lobby sidebar
function stmc:lobby/sidebar

# interaction check
execute in stmc:lobby/main as @e[tag=race] on attacker run function stmc:games/race/teleport
execute in stmc:lobby/main as @e[tag=extract] on attacker run function stmc:games/extract/teleport
execute in stmc:lobby/main as @e[tag=trials] on attacker run function stmc:games/trials/teleport
execute in stmc:lobby/main as @e[type=interaction] run data remove entity @s attack

execute in stmc:lobby/main run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:lobby/main run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}}]