
#runs if wet sponge detected in pre_game and lobby

#scoreboard objectives add temp dummy
#scoreboard objectives add lobby.wetsponge minecraft.mined:minecraft.wet_sponge

#reset temp
scoreboard players reset temp temp

#get random
execute store result score temp temp run random value 0..55
#testing
#scoreboard players set temp temp 55

#random function
execute if score temp temp matches 0..2 run function stmc:lobby/lucky/anvil
execute if score temp temp matches 3..4 run function stmc:lobby/lucky/diamonds
execute if score temp temp matches 5..7 run function stmc:lobby/lucky/emeralds
execute if score temp temp matches 8..10 run function stmc:lobby/lucky/ender_pearl
execute if score temp temp matches 11..12 run function stmc:lobby/lucky/diamond_zombie
execute if score temp temp matches 13..15 run function stmc:lobby/lucky/creeper
execute if score temp temp matches 16..18 run function stmc:lobby/lucky/creeper_noise
execute if score temp temp matches 19..20 run function stmc:lobby/lucky/cobwebs
execute if score temp temp matches 21..22 run function stmc:lobby/lucky/pig
execute if score temp temp matches 23..24 run function stmc:lobby/lucky/chest
execute if score temp temp matches 25..26 run function stmc:lobby/lucky/skeleton
execute if score temp temp matches 27..28 run function stmc:lobby/lucky/sky_block
execute if score temp temp matches 29..30 run function stmc:lobby/lucky/dogs
execute if score temp temp matches 31 run function stmc:lobby/lucky/beacon
execute if score temp temp matches 32..34 run function stmc:lobby/lucky/pig2
execute if score temp temp matches 35 run function stmc:lobby/lucky/glowstone
execute if score temp temp matches 36 run function stmc:lobby/lucky/glowstone2
execute if score temp temp matches 37..38 run function stmc:lobby/lucky/zombies
execute if score temp temp matches 39..41 run function stmc:lobby/lucky/player
execute if score temp temp matches 42..43 run function stmc:lobby/lucky/obsidian
execute if score temp temp matches 44..45 run function stmc:lobby/lucky/tnt
execute if score temp temp matches 46..47 run function stmc:lobby/lucky/gapple
execute if score temp temp matches 48 run function stmc:lobby/lucky/egapple
execute if score temp temp matches 49..50 run function stmc:lobby/lucky/cake
execute if score temp temp matches 51 run function stmc:lobby/lucky/diamond_chestplate
execute if score temp temp matches 52 run function stmc:lobby/lucky/regen
execute if score temp temp matches 53 run function stmc:lobby/lucky/poison
execute if score temp temp matches 54..55 run function stmc:lobby/lucky/arrows


#reset scores
scoreboard players reset @s lobby.wetsponge
#kill item
kill @n[type=item,nbt={Item:{id:"minecraft:wet_sponge"}}]
#reset temp
scoreboard players reset temp temp