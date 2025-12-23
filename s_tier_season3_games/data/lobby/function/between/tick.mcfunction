# tick function for lobbies between games (and the first one)

# run every tick
function lobby:between/sidebar with storage stmc:global

# update timer
scoreboard players add lobby.handler lobby.timer 1

# prevent weird red wool bug
execute in lobby:lobby if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# reset voting chests
execute in lobby:lobby if score lobby.handler lobby.timer matches 1 run forceload add -100 -100 100 100
execute in lobby:lobby if score lobby.handler lobby.timer matches 2 run kill @e[type=item]
execute in lobby:lobby if score lobby.handler lobby.timer matches 2 run fill 10 45 90 30 40 -90 air replace chest[facing=east] destroy
execute in lobby:lobby if score lobby.handler lobby.timer matches 3 as @e[type=item] at @s positioned as @s run \
        setblock ~ ~ ~ chest[facing=east]
execute in lobby:lobby if score lobby.handler lobby.timer matches 4 run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]
execute in lobby:lobby if score lobby.handler lobby.timer matches 5 run forceload remove -100 -100 100 100

#reset loot chests
execute in lobby:lobby if score lobby.handler lobby.timer matches 4 run function lobby:chests

#give random villager items
execute as @a run function lobby:villager_items

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function lobby:between/collect_stage with storage stmc:global

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function lobby:between/vote_stage