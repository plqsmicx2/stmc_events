# helper function that announces when a team gets an item

# this function runs before awards, so it can reuse that code

# red
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item1 matches 1.. unless score collect.RedRaccoons collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item2 matches 1.. unless score collect.RedRaccoons collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item3 matches 1.. unless score collect.RedRaccoons collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item4 matches 1.. unless score collect.RedRaccoons collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=RED_RACCOONS] if score @s collect.stats.item5 matches 1.. unless score collect.RedRaccoons collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# orange
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item1 matches 1.. unless score collect.OrangeOtters collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item2 matches 1.. unless score collect.OrangeOtters collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item3 matches 1.. unless score collect.OrangeOtters collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item4 matches 1.. unless score collect.OrangeOtters collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=ORANGE_OTTERS] if score @s collect.stats.item5 matches 1.. unless score collect.OrangeOtters collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# pink
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item1 matches 1.. unless score collect.PinkPikas collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item2 matches 1.. unless score collect.PinkPikas collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item3 matches 1.. unless score collect.PinkPikas collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item4 matches 1.. unless score collect.PinkPikas collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=PINK_PIKAS] if score @s collect.stats.item5 matches 1.. unless score collect.PinkPikas collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# yellow
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item1 matches 1.. unless score collect.YellowYaks collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item2 matches 1.. unless score collect.YellowYaks collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item3 matches 1.. unless score collect.YellowYaks collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item4 matches 1.. unless score collect.YellowYaks collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=YELLOW_YAKS] if score @s collect.stats.item5 matches 1.. unless score collect.YellowYaks collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# green
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item1 matches 1.. unless score collect.GreenGoats collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item2 matches 1.. unless score collect.GreenGoats collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item3 matches 1.. unless score collect.GreenGoats collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item4 matches 1.. unless score collect.GreenGoats collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=GREEN_GOATS] if score @s collect.stats.item5 matches 1.. unless score collect.GreenGoats collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# cyan
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item1 matches 1.. unless score collect.CyanCougars collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item2 matches 1.. unless score collect.CyanCougars collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item3 matches 1.. unless score collect.CyanCougars collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item4 matches 1.. unless score collect.CyanCougars collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=CYAN_COUGARS] if score @s collect.stats.item5 matches 1.. unless score collect.CyanCougars collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# purple
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item1 matches 1.. unless score collect.PurplePenguins collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item2 matches 1.. unless score collect.PurplePenguins collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item3 matches 1.. unless score collect.PurplePenguins collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item4 matches 1.. unless score collect.PurplePenguins collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=PURPLE_PENGUINS] if score @s collect.stats.item5 matches 1.. unless score collect.PurplePenguins collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]

# blue
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item1 matches 1.. unless score collect.BlueBears collect.stats.item1 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item1"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a conduit!",color:aqua}]
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item2 matches 1.. unless score collect.BlueBears collect.stats.item2 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item2"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got an ender chest!",color:aqua}]
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item3 matches 1.. unless score collect.BlueBears collect.stats.item3 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item3"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a waxed weathered cut copper stair!",color:aqua}]
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item4 matches 1.. unless score collect.BlueBears collect.stats.item4 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item4"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got a shulker box!",color:aqua}]
execute as @a[team=BLUE_BEARS] if score @s collect.stats.item5 matches 1.. unless score collect.BlueBears collect.stats.item5 matches 1.. \
        run tellraw @a ["",{text:"[#",color:aqua},{score:{name:"collect.handler",objective:"collect.stats.item5"}},{text:"]: the ",color:aqua},{text:"Red Raccoons",color:red},{text:" got mud bricks!",color:aqua}]
