# executes as @s (whoever had the cauldron item)
# overwrites the inventory of @s with the witch class inventory

# check that no one on the team has this kit
execute if entity @s[team=RED_RACCOONS] as @a[team=RED_RACCOONS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=ORANGE_OTTERS] as @a[team=ORANGE_OTTERS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=PINK_PIKAS] as @a[team=PINK_PIKAS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=YELLOW_YAKS] as @a[team=YELLOW_YAKS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=GREEN_GOATS] as @a[team=GREEN_GOATS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=CYAN_COUGARS] as @a[team=CYAN_COUGARS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=PURPLE_PENGUINS] as @a[team=PURPLE_PENGUINS] if score @s extract.stats.kit matches 7 run return 0
execute if entity @s[team=BLUE_BEARS] as @a[team=BLUE_BEARS] if score @s extract.stats.kit matches 7 run return 0

# set player's kit to medic
scoreboard players set @s extract.stats.kit 7

# base items
function extract:inventory/grant_base

# witch specific items
item replace entity @s armor.legs with leather_leggings[enchantments={"minecraft:binding_curse":1}]
item replace entity @s hotbar.2 with splash_potion[potion_contents={potion:regeneration},potion_duration_scale=.1]
item replace entity @s hotbar.3 with splash_potion[potion_contents={potion:strong_harming}]