# tick function for lobbies between games (and the first one)

# run every tick
function stmc:lobby/between/sidebar with storage stmc:global

# update timer
scoreboard players add lobby.handler lobby.timer 1

# prevent weird red wool bug
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# reset voting chests
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 1 run forceload add -100 -100 100 100
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 2 run kill @e[type=item]
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 2 run fill 10 45 90 30 40 -90 air replace chest[facing=east] destroy
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 3 as @e[type=item] at @s positioned as @s run \
        setblock ~ ~ ~ chest[facing=east]
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 4 run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 5 run forceload remove -100 -100 100 100

#reset loot chests
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 4 run function stmc:lobby/chests

#give random villager items
execute as @a run function stmc:lobby/villager_items

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function stmc:lobby/between/collect_stage with storage stmc:global

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function stmc:lobby/between/voting/tick