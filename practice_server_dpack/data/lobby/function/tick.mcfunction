# update lobby sidebar
function lobby:sidebar

# interaction check
execute in lobby:lobby as @e[tag=race] on attacker run function race:teleport
execute in lobby:lobby as @e[tag=extract] on attacker run function extract:teleport
execute in lobby:lobby as @e[tag=trials] on attacker run function trials:teleport
execute in lobby:lobby as @e[type=interaction] run data remove entity @s attack

execute in lobby:lobby run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in lobby:lobby run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}}]