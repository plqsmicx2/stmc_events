
#use key to break glass
execute as @a if items entity @s hotbar.* trial_key at @s store success score @s dungeons.glass run fill ~-20 ~-3 ~3 ~20 ~4 ~3 air replace tinted_glass
execute as @a[scores={dungeons.glass=1..}] if items entity @s hotbar.* trial_key at @s run playsound block.glass.break block @a ~ ~ ~3 .5 .9 0

execute as @a[scores={dungeons.glass=1..}] run clear @s trial_key 1

#progress room
function stmc:games/dungeons/game/increment_room

#display progress
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_1
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_2
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_3
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_4
execute if entity @a[scores={dungeons.glass=1..}] run function stmc:games/dungeons/game/display/room_5
#room 6 in end

scoreboard players reset @a dungeons.glass