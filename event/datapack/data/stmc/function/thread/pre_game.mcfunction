# function that runs before the lobby stage begins

# bring people to lobby
execute as @a unless score @s pre-game.load matches 1 run tp @s 0 64 0
execute as @a unless score @s pre-game.load matches 1 run clear @s
execute as @a unless score @s pre-game.load matches 1 run effect clear @s
execute as @a unless score @s pre-game.load matches 1 run effect give @s saturation 1 255
execute as @a unless score @s pre-game.load matches 1 run effect give @s instant_health 1 10
#survival lobby
execute as @a unless score @s pre-game.load matches 1 run gamemode survival @s
execute as @a unless score @s pre-game.load matches 1 run spawnpoint @s 0 64 0
execute as @a unless score @s pre-game.load matches 1 run scoreboard players set @s pre-game.load 1

#lucky blocks
execute as @a[scores={lobby.wetsponge=1..}] at @s at @n[type=item,nbt={Item:{id:"minecraft:wet_sponge"}}] run function stmc:lobby/lucky_block