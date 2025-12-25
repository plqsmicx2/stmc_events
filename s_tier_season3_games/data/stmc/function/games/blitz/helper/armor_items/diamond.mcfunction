# helper function that clears all armor off the player & replaces it with diamond

item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with diamond_boots

clear @s diamond_leggings[minecraft:custom_data={replace:1b}]