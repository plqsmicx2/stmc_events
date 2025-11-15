# resets chests used for voting in the lobby

# replace chests
execute in lobby:lobby run fill 10 45 90 30 40 -90 air replace chest[facing=east] destroy
execute in lobby:lobby as @e[type=item] at @s positioned as @s run \
        setblock ~ ~ ~ chest[facing=east]
execute in lobby:lobby run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]