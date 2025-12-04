# executes as @s (whoever had the bullseye item)
# overwrites the inventory of @s with the medic class inventory

# check that no one on the team has this kit
execute if entity @s[team=RED_RACCOONS] as @a[team=RED_RACCOONS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=ORANGE_OTTERS] as @a[team=ORANGE_OTTERS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=PINK_PIKAS] as @a[team=PINK_PIKAS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=YELLOW_YAKS] as @a[team=YELLOW_YAKS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=GREEN_GOATS] as @a[team=GREEN_GOATS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=CYAN_COUGARS] as @a[team=CYAN_COUGARS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=PURPLE_PENGUINS] as @a[team=PURPLE_PENGUINS] if score @s extract.stats.kit matches 5 run return 0
execute if entity @s[team=BLUE_BEARS] as @a[team=BLUE_BEARS] if score @s extract.stats.kit matches 5 run return 0

# set player's kit to medic
scoreboard players set @s extract.stats.kit 5

# base items
function extract:inventory/grant_base

# medic specific items
item replace entity @s armor.chest with chainmail_chestplate[enchantments={"minecraft:binding_curse":1}]
item replace entity @s hotbar.0 with wooden_sword
item replace entity @s hotbar.2 with potion[potion_contents={potion:strong_regeneration},potion_duration_scale=0.2]
item replace entity @s hotbar.3 with splash_potion[potion_contents={potion:strong_healing}]