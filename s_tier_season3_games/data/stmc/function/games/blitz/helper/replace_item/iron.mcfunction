# helper function that clears all armor off the player & replaces it with iron

clear @a #head_armor
clear @a #chest_armor
clear @a #leg_armor
clear @a #foot_armor

item replace entity @s armor.head with leather_helmet[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.legs with iron_leggings[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.feet with iron_boots[enchantments={binding_curse:1},unbreakable={}]

clear @s iron_leggings[minecraft:custom_data={replace:1b}]