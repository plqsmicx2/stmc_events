# function that gives players movement items & crossbows

clear @s

item replace entity @s hotbar.0 with crossbow[enchantments={quick_charge:2},unbreakable={}]
item replace entity @s hotbar.1 with wooden_spear[enchantments={lunge:2},unbreakable={},damage=0,\
        minimum_attack_charge=0.75]
item replace entity @s hotbar.2 with wind_charge 64
item replace entity @s hotbar.3 with arrow 64
item replace entity @s hotbar.4 with stick[enchantments={knockback:2},unbreakable={},damage=1]