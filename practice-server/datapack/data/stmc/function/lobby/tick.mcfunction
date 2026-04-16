# update lobby sidebar
function stmc:lobby/sidebar

# old dimension check
execute as @a[nbt={Dimension:"lobby:lobby"}] in stmc:lobby/main run tp @s 0 100 0
execute as @a[nbt={Dimension:"lobby:lobby"}] in stmc:lobby/main run spawnpoint @s 0 100 0
execute as @a[nbt={Dimension:"race:race"}] in stmc:lobby/main run tp @s 0 100 0
execute as @a[nbt={Dimension:"race:race"}] in stmc:lobby/main run spawnpoint @s 0 100 0

# speed pad
execute as @a[nbt={Dimension:"lobby:lobby"}] at @s if block ~ ~-1 ~ \
    pink_glazed_terracotta run function stmc:thread/grant_speed

# interaction check
execute in stmc:lobby/main as @e[type=interaction,distance=..1000] if data entity @s interaction run data modify entity @s attack set from entity @s interaction
execute in stmc:lobby/main as @e[tag=race] on attacker run function stmc:games/race/teleport
execute in stmc:lobby/main as @e[tag=extract] on attacker run function stmc:games/extract/teleport
execute in stmc:lobby/main as @e[tag=trials] on attacker run function stmc:games/trials/teleport
execute in stmc:lobby/main as @e[tag=sprint] on attacker run function stmc:games/sprint/teleport
execute in stmc:lobby/main as @e[tag=arena] on attacker run function stmc:games/arena/teleport
execute in stmc:lobby/main as @e[tag=brawl] on attacker run function stmc:games/brawl/teleport
execute in stmc:lobby/main as @e[tag=mystery] on attacker run function stmc:games/mystery/teleport
execute in stmc:lobby/main as @e[type=interaction,distance=..1000] run data remove entity @s interaction
execute in stmc:lobby/main as @e[type=interaction,distance=..1000] run data remove entity @s attack

execute in stmc:lobby/main run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in stmc:lobby/main run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}}]