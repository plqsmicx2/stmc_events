
#give new sword after room progress
#enchantments are kept

#zombies give stone sword
execute if score BLUE_BEARS dungeons.room matches 1..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score RED_RACCOONS dungeons.room matches 1..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score CYAN_COUGARS dungeons.room matches 1..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score GREEN_GOATS dungeons.room matches 1..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score PURPLE_PENGUINS dungeons.room matches 1..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score ORANGE_OTTERS dungeons.room matches 1..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score YELLOW_YAKS dungeons.room matches 1..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone
execute if score PINK_PIKAS dungeons.room matches 1..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeons:stone

#skeletons give copper sword
execute if score BLUE_BEARS dungeons.room matches 3..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score RED_RACCOONS dungeons.room matches 3..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score CYAN_COUGARS dungeons.room matches 3..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score GREEN_GOATS dungeons.room matches 3..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score PURPLE_PENGUINS dungeons.room matches 3..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score ORANGE_OTTERS dungeons.room matches 3..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score YELLOW_YAKS dungeons.room matches 3..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper
execute if score PINK_PIKAS dungeons.room matches 3..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeons:copper

#cave spiders give iron sword
execute if score BLUE_BEARS dungeons.room matches 4..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score RED_RACCOONS dungeons.room matches 4..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score CYAN_COUGARS dungeons.room matches 4..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score GREEN_GOATS dungeons.room matches 4..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score PURPLE_PENGUINS dungeons.room matches 4..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score ORANGE_OTTERS dungeons.room matches 4..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score YELLOW_YAKS dungeons.room matches 4..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron
execute if score PINK_PIKAS dungeons.room matches 4..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeons:iron

#blazes give diamond sword
execute if score BLUE_BEARS dungeons.room matches 5..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score RED_RACCOONS dungeons.room matches 5..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score CYAN_COUGARS dungeons.room matches 5..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score GREEN_GOATS dungeons.room matches 5..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score PURPLE_PENGUINS dungeons.room matches 5..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score ORANGE_OTTERS dungeons.room matches 5..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score YELLOW_YAKS dungeons.room matches 5..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond
execute if score PINK_PIKAS dungeons.room matches 5..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeons:diamond

#wither skeletons give netherite sword
execute if score BLUE_BEARS dungeons.room matches 8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score RED_RACCOONS dungeons.room matches 8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score CYAN_COUGARS dungeons.room matches 8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score GREEN_GOATS dungeons.room matches 8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score PURPLE_PENGUINS dungeons.room matches 8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score ORANGE_OTTERS dungeons.room matches 8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score YELLOW_YAKS dungeons.room matches 8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite
execute if score PINK_PIKAS dungeons.room matches 8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeons:netherite



