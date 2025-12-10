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
execute as @a if items entity @s hotbar.* chainmail_leggings[minecraft:custom_data={replace:1b}] as @s run function blitz:helper/armor_items/chainmail
execute as @a if items entity @s hotbar.* iron_leggings[minecraft:custom_data={replace:1b}] as @s run function blitz:helper/armor_items/iron
execute as @a if items entity @s hotbar.* diamond_leggings[minecraft:custom_data={replace:1b}] as @s run function blitz:helper/armor_items/diamond