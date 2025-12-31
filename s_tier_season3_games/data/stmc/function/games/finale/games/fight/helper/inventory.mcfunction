# helper function that gives all competitors their inventory

clear @s

# armor
item replace entity @s armor.head with leather_helmet[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.legs with leather_leggings[enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.feet with leather_boots[enchantments={binding_curse:1},unbreakable={}]

# weapons
item replace entity @s hotbar.0 with iron_sword[unbreakable={}]

# healing
item replace entity @s hotbar.1 with golden_apple