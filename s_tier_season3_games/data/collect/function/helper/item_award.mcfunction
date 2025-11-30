# helper function that awards a team a ranking on an item
# if applicable

# check current status of each item

# item #1
scoreboard players set collect.handler collect.stats.item1 1
execute if score collect.RedRaccoons collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.OrangeOtters collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.PinkPikas collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.YellowYaks collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.GreenGoats collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.CyanCougars collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.PurplePenguins collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1
execute if score collect.BlueBears collect.stats.item1 matches 1.. run scoreboard players add collect.handler collect.stats.item1 1

# item #2
scoreboard players set collect.handler collect.stats.item2 1
execute if score collect.RedRaccoons collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.OrangeOtters collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.PinkPikas collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.YellowYaks collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.GreenGoats collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.CyanCougars collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.PurplePenguins collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1
execute if score collect.BlueBears collect.stats.item2 matches 1.. run scoreboard players add collect.handler collect.stats.item2 1

# item #3
scoreboard players set collect.handler collect.stats.item3 1
execute if score collect.RedRaccoons collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.OrangeOtters collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.PinkPikas collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.YellowYaks collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.GreenGoats collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.CyanCougars collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.PurplePenguins collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1
execute if score collect.BlueBears collect.stats.item3 matches 1.. run scoreboard players add collect.handler collect.stats.item3 1

# item #4
scoreboard players set collect.handler collect.stats.item4 1
execute if score collect.RedRaccoons collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.OrangeOtters collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.PinkPikas collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.YellowYaks collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.GreenGoats collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.CyanCougars collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.PurplePenguins collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1
execute if score collect.BlueBears collect.stats.item4 matches 1.. run scoreboard players add collect.handler collect.stats.item4 1

# item #5
scoreboard players set collect.handler collect.stats.item5 1
execute if score collect.RedRaccoons collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.OrangeOtters collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.PinkPikas collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.YellowYaks collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.GreenGoats collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.CyanCougars collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.PurplePenguins collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1
execute if score collect.BlueBears collect.stats.item5 matches 1.. run scoreboard players add collect.handler collect.stats.item5 1

# announce if a team will get an award
function collect:helper/item_announcement

# for each team, if any of their players have an item and their team doesn't have a score yet
# give them one

# red
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item1 matches 1.. unless score collect.RedRaccoons collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.RedRaccoons collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item2 matches 1.. unless score collect.RedRaccoons collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.RedRaccoons collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item3 matches 1.. unless score collect.RedRaccoons collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.RedRaccoons collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item4 matches 1.. unless score collect.RedRaccoons collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.RedRaccoons collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item5 matches 1.. unless score collect.RedRaccoons collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.RedRaccoons collect.stats.item5 = collect.handler collect.stats.item5

# orange
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item1 matches 1.. unless score collect.OrangeOtters collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.OrangeOtters collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item2 matches 1.. unless score collect.OrangeOtters collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.OrangeOtters collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item3 matches 1.. unless score collect.OrangeOtters collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.OrangeOtters collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item4 matches 1.. unless score collect.OrangeOtters collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.OrangeOtters collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item5 matches 1.. unless score collect.OrangeOtters collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.OrangeOtters collect.stats.item5 = collect.handler collect.stats.item5

# pink
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item1 matches 1.. unless score collect.PinkPikas collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.PinkPikas collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item2 matches 1.. unless score collect.PinkPikas collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.PinkPikas collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item3 matches 1.. unless score collect.PinkPikas collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.PinkPikas collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item4 matches 1.. unless score collect.PinkPikas collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.PinkPikas collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item5 matches 1.. unless score collect.PinkPikas collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.PinkPikas collect.stats.item5 = collect.handler collect.stats.item5

# yellow
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item1 matches 1.. unless score collect.YellowYaks collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.YellowYaks collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item2 matches 1.. unless score collect.YellowYaks collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.YellowYaks collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item3 matches 1.. unless score collect.YellowYaks collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.YellowYaks collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item4 matches 1.. unless score collect.YellowYaks collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.YellowYaks collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item5 matches 1.. unless score collect.YellowYaks collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.YellowYaks collect.stats.item5 = collect.handler collect.stats.item5

# green
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item1 matches 1.. unless score collect.GreenGoats collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.GreenGoats collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item2 matches 1.. unless score collect.GreenGoats collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.GreenGoats collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item3 matches 1.. unless score collect.GreenGoats collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.GreenGoats collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item4 matches 1.. unless score collect.GreenGoats collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.GreenGoats collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item5 matches 1.. unless score collect.GreenGoats collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.GreenGoats collect.stats.item5 = collect.handler collect.stats.item5

# cyan
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item1 matches 1.. unless score collect.CyanCougars collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.CyanCougars collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item2 matches 1.. unless score collect.CyanCougars collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.CyanCougars collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item3 matches 1.. unless score collect.CyanCougars collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.CyanCougars collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item4 matches 1.. unless score collect.CyanCougars collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.CyanCougars collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item5 matches 1.. unless score collect.CyanCougars collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.CyanCougars collect.stats.item5 = collect.handler collect.stats.item5

# purple
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item1 matches 1.. unless score collect.PurplePenguins collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.PurplePenguins collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item2 matches 1.. unless score collect.PurplePenguins collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.PurplePenguins collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item3 matches 1.. unless score collect.PurplePenguins collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.PurplePenguins collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item4 matches 1.. unless score collect.PurplePenguins collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.PurplePenguins collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item5 matches 1.. unless score collect.PurplePenguins collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.PurplePenguins collect.stats.item5 = collect.handler collect.stats.item5

# blue
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item1 matches 1.. unless score collect.BlueBears collect.stats.item1 matches 1.. \
        run scoreboard players operation collect.BlueBears collect.stats.item1 = collect.handler collect.stats.item1
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item2 matches 1.. unless score collect.BlueBears collect.stats.item2 matches 1.. \
        run scoreboard players operation collect.BlueBears collect.stats.item2 = collect.handler collect.stats.item2
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item3 matches 1.. unless score collect.BlueBears collect.stats.item3 matches 1.. \
        run scoreboard players operation collect.BlueBears collect.stats.item3 = collect.handler collect.stats.item3
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item4 matches 1.. unless score collect.BlueBears collect.stats.item4 matches 1.. \
        run scoreboard players operation collect.BlueBears collect.stats.item4 = collect.handler collect.stats.item4
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item5 matches 1.. unless score collect.BlueBears collect.stats.item5 matches 1.. \
        run scoreboard players operation collect.BlueBears collect.stats.item5 = collect.handler collect.stats.item5
