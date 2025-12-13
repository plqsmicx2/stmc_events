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

#give items
#arrows
execute as @a if items entity @s hotbar.* tipped_arrow[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/arrows
execute as @a if items entity @s hotbar.* tipped_arrow[tooltip_display={hide_tooltip:true}] run clear @s tipped_arrow[tooltip_display={hide_tooltip:true}] 1

#heads
execute as @a if items entity @s hotbar.* player_head[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/heads
execute as @a if items entity @s hotbar.* player_head[tooltip_display={hide_tooltip:true}] run clear @s player_head 1

#horns
execute as @a if items entity @s hotbar.* goat_horn[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/horns
execute as @a if items entity @s hotbar.* goat_horn[tooltip_display={hide_tooltip:true}] run clear @s goat_horn[tooltip_display={hide_tooltip:true}] 1

#music
execute as @a if items entity @s hotbar.* music_disc_stal[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/music
execute as @a if items entity @s hotbar.* music_disc_stal[tooltip_display={hide_tooltip:true}] run clear @s music_disc_stal[tooltip_display={hide_tooltip:true}] 1

#potions
execute as @a if items entity @s hotbar.* potion[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/potions
execute as @a if items entity @s hotbar.* potion[tooltip_display={hide_tooltip:true}] run clear @s potion[tooltip_display={hide_tooltip:true}] 1

#suspicious
execute as @a if items entity @s hotbar.* suspicious_stew[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/suspicious
execute as @a if items entity @s hotbar.* suspicious_stew[tooltip_display={hide_tooltip:true}] run clear @s suspicious_stew[tooltip_display={hide_tooltip:true}] 1

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function lobby:between/collect_stage

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function lobby:between/vote_stage