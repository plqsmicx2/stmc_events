
#force 1 key
execute as @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}}] at @s in stmc:dungeons run fill ~ ~-1 ~ ~ ~-1 ~ air replace trial_spawner

#use key to break glass
execute as @a if items entity @s hotbar.* tripwire_hook at @s store success score @s dungeons.glass run fill ~-20 ~-3 ~3 ~20 ~4 ~3 air replace tinted_glass
execute as @a[scores={dungeons.glass=1..}] if items entity @s hotbar.* tripwire_hook at @s run playsound block.glass.break block @a ~ ~ ~3 .5 .9 0

execute as @a if items entity @s inventory.* tripwire_hook at @s store success score @s dungeons.glass run fill ~-20 ~-3 ~3 ~20 ~4 ~3 air replace tinted_glass
execute as @a[scores={dungeons.glass=1..}] if items entity @s inventory.* tripwire_hook at @s run playsound block.glass.break block @a ~ ~ ~3 .5 .9 0

execute as @a[scores={dungeons.glass=1..}] run clear @s tripwire_hook 1

#progress room
function stmc:games/dungeons/game/increment_room

#display progress
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_1 with storage stmc:global
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_2 with storage stmc:global
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_3 with storage stmc:global
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_4 with storage stmc:global
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_5 with storage stmc:global
#room 6 in end

scoreboard players reset @a dungeons.glass