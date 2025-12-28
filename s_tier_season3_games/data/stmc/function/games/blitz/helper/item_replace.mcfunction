# helper function that replaces players' tools/armor whenever they purchase a new one

# manually checks each item that can be replaced for if it needs to be

# swords
execute as @a if items entity @s hotbar.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* stone_sword[minecraft:custom_data={replace:1b}] run clear @s stone_sword
execute as @a if items entity @s hotbar.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* iron_sword[minecraft:custom_data={replace:1b}] run clear @s iron_sword
execute as @a if items entity @s hotbar.* iron_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* stone_sword[minecraft:custom_data={replace:1b}] run clear @s stone_sword
execute as @a if items entity @s hotbar.* stone_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword
execute as @a if items entity @s hotbar.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword
execute as @a if items entity @s hotbar.* iron_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s hotbar.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword

execute as @a if items entity @s inventory.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* stone_sword[minecraft:custom_data={replace:1b}] run clear @s stone_sword
execute as @a if items entity @s inventory.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* iron_sword[minecraft:custom_data={replace:1b}] run clear @s iron_sword
execute as @a if items entity @s inventory.* iron_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* stone_sword[minecraft:custom_data={replace:1b}] run clear @s stone_sword
execute as @a if items entity @s inventory.* stone_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword
execute as @a if items entity @s inventory.* diamond_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword
execute as @a if items entity @s inventory.* iron_sword[minecraft:custom_data={replace:1b}] \
        if items entity @s inventory.* wooden_sword[minecraft:custom_data={replace:1b}] run clear @s wooden_sword

# armor
execute as @a if items entity @s hotbar.* chainmail_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/chainmail
execute as @a if items entity @s hotbar.* iron_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/iron
execute as @a if items entity @s hotbar.* diamond_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/diamond

execute as @a if items entity @s inventory.* chainmail_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/chainmail
execute as @a if items entity @s inventory.* iron_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/iron
execute as @a if items entity @s inventory.* diamond_leggings[minecraft:custom_data={replace:1b}] as @s run function stmc:games/blitz/helper/replace_item/diamond

# concrete items
execute in stmc:blitz run function stmc:games/blitz/helper/replace_item/concrete