# helper function that clears all armor off the player & replaces it with iron

item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with iron_boots

clear @s iron_leggings[minecraft:custom_data={replace:1b}]