# helper function that gives all competitors their inventory

clear @s

# weapons
item replace entity @s hotbar.0 with crossbow[enchantments={quick_charge:1},unbreakable={},damage=0]
item replace entity @s hotbar.8 with arrow[damage=0]