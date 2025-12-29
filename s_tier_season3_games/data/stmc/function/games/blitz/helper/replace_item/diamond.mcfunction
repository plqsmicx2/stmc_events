# helper function that clears all armor off the player & replaces it with diamond

clear @s #head_armor
clear @s #chest_armor
clear @s #leg_armor
clear @s #foot_armor

item replace entity @s armor.head with leather_helmet[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.legs with diamond_leggings[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.feet with diamond_boots[enchantments={binding_curse:1},unbreakable={}]

clear @s diamond_leggings[minecraft:custom_data={replace:1b}]