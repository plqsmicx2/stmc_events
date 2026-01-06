# helper function that gives all competitors their inventory

clear @s

# weapons
item replace entity @s hotbar.0 with crossbow[enchantments={quick_charge:1},unbreakable={}\
        ,attribute_modifiers=[{type:attack_damage,id:"attack_damage",amount:-1,operation:"add_value"}]]
item replace entity @s hotbar.8 with arrow[damage=0\
        ,attribute_modifiers=[{type:attack_damage,id:"attack_damage",amount:-1,operation:"add_value"}]]