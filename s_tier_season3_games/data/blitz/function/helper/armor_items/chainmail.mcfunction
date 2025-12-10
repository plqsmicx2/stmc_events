# helper function that clears all armor off the player & replaces it with chainmail

item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with chainmail_boots

clear @s chainmail_leggings[minecraft:custom_data={replace:1b}]