# executes as @s (whoever had the deepslate item)
# overwrites the inventory of @s with the miner class inventory

# check that no one on the team has this kit
execute if entity @s[team=RED_RACCOONS] as @a[team=RED_RACCOONS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=ORANGE_OTTERS] as @a[team=ORANGE_OTTERS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=PINK_PIKAS] as @a[team=PINK_PIKAS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=YELLOW_YAKS] as @a[team=YELLOW_YAKS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=GREEN_GOATS] as @a[team=GREEN_GOATS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=CYAN_COUGARS] as @a[team=CYAN_COUGARS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=PURPLE_PENGUINS] as @a[team=PURPLE_PENGUINS] if score @s extract.stats.kit matches 6 run return 0
execute if entity @s[team=BLUE_BEARS] as @a[team=BLUE_BEARS] if score @s extract.stats.kit matches 6 run return 0

# set player's kit to medic
scoreboard players set @s extract.stats.kit 6

# base items
function stmc:games/extract/inventory/grant_base

# miner specific items
item replace entity @s hotbar.1 with iron_pickaxe[can_break={blocks:["diamond_block","gold_block","gray_concrete"]}, \ 
                tool={default_mining_speed:0.1,damage_per_block:0, \ 
                rules:[{speed:800,blocks:"gray_concrete"},{speed:800,correct_for_drops:true,blocks:"gold_block"},{speed:760,correct_for_drops:true,blocks:"diamond_block"}]}, \ 
                custom_name={"color":"yellow","text":"Ore Breaker II"}]
item replace entity @s hotbar.2 with potion[potion_contents={potion:swiftness},potion_duration_scale=0.06]