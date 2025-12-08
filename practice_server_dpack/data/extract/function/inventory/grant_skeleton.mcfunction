# executes as @s (whoever had the skeleton_head item)
# overwrites the inventory of @s with the skeleton class inventory

# check that no one on the team has this kit
execute if entity @s[team=RED_RACCOONS] as @a[team=RED_RACCOONS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=ORANGE_OTTERS] as @a[team=ORANGE_OTTERS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=PINK_PIKAS] as @a[team=PINK_PIKAS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=YELLOW_YAKS] as @a[team=YELLOW_YAKS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=GREEN_GOATS] as @a[team=GREEN_GOATS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=CYAN_COUGARS] as @a[team=CYAN_COUGARS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=PURPLE_PENGUINS] as @a[team=PURPLE_PENGUINS] if score @s extract.stats.kit matches 3 run return 0
execute if entity @s[team=BLUE_BEARS] as @a[team=BLUE_BEARS] if score @s extract.stats.kit matches 3 run return 0

# set player's kit to medic
scoreboard players set @s extract.stats.kit 3

# base items
function extract:inventory/grant_base

# skeleton specific items
item replace entity @s armor.legs with leather_leggings[enchantments={"minecraft:binding_curse":1}]
item replace entity @s armor.legs with leather_boots[enchantments={"minecraft:binding_curse":1}]
item replace entity @s hotbar.0 with wooden_sword
item replace entity @s hotbar.2 with crossbow[enchantments={"minecraft:quick_charge":1}]
item replace entity @s hotbar.3 with arrow 6
item replace entity @s hotbar.4 with gray_concrete[can_place_on={blocks:"#extract:all"}] 3