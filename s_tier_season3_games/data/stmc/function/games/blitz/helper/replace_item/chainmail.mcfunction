# helper function that clears all armor off the player & replaces it with chainmail

clear @a #head_armor
clear @a #chest_armor
clear @a #leg_armor
clear @a #foot_armor

item replace entity @s armor.head with leather_helmet[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.feet with chainmail_boots[enchantments={binding_curse:1},unbreakable={}]

clear @s chainmail_leggings[minecraft:custom_data={replace:1b}]