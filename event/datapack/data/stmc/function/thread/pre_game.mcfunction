# function that runs before the lobby stage begins

gamemode adventure @a

# bring people to lobby
execute as @a unless entity @s[nbt={Dimension:"stmc:lobby/main"}] in stmc:lobby/main run tp @s 0 101 0

execute in stmc:lobby/main run spawnpoint @a 0 101 0

execute as @a[scores={lobby.wetsponge=1..}] at @s at @n[type=item,nbt={Item:{id:"minecraft:wet_sponge"}}] run function stmc:lobby/lucky_block