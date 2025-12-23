
#give new sword after room progress
#enchantments are kept

#zombies give stone sword
execute if score BLUE_BEARS dungeon.room matches 1..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score RED_RACCOONS dungeon.room matches 1..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score CYAN_COUGARS dungeon.room matches 1..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score GREEN_GOATS dungeon.room matches 1..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score PURPLE_PENGUINS dungeon.room matches 1..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score ORANGE_OTTERS dungeon.room matches 1..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score YELLOW_YAKS dungeon.room matches 1..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone
execute if score PINK_PIKAS dungeon.room matches 1..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand wooden_sword run item modify entity @s weapon.mainhand dungeon:stone

#skeletons give copper sword
execute if score BLUE_BEARS dungeon.room matches 3..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score RED_RACCOONS dungeon.room matches 3..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score CYAN_COUGARS dungeon.room matches 3..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score GREEN_GOATS dungeon.room matches 3..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score PURPLE_PENGUINS dungeon.room matches 3..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score ORANGE_OTTERS dungeon.room matches 3..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score YELLOW_YAKS dungeon.room matches 3..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper
execute if score PINK_PIKAS dungeon.room matches 3..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand stone_sword run item modify entity @s weapon.mainhand dungeon:copper

#cave spiders give iron sword
execute if score BLUE_BEARS dungeon.room matches 4..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score RED_RACCOONS dungeon.room matches 4..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score CYAN_COUGARS dungeon.room matches 4..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score GREEN_GOATS dungeon.room matches 4..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score PURPLE_PENGUINS dungeon.room matches 4..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score ORANGE_OTTERS dungeon.room matches 4..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score YELLOW_YAKS dungeon.room matches 4..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron
execute if score PINK_PIKAS dungeon.room matches 4..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand copper_sword run item modify entity @s weapon.mainhand dungeon:iron

#blazes give diamond sword
execute if score BLUE_BEARS dungeon.room matches 5..8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score RED_RACCOONS dungeon.room matches 5..8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score CYAN_COUGARS dungeon.room matches 5..8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score GREEN_GOATS dungeon.room matches 5..8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score PURPLE_PENGUINS dungeon.room matches 5..8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score ORANGE_OTTERS dungeon.room matches 5..8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score YELLOW_YAKS dungeon.room matches 5..8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond
execute if score PINK_PIKAS dungeon.room matches 5..8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand dungeon:diamond

#wither skeletons give netherite sword
execute if score BLUE_BEARS dungeon.room matches 8 as @a[team=BLUE_BEARS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score RED_RACCOONS dungeon.room matches 8 as @a[team=RED_RACCOONS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score CYAN_COUGARS dungeon.room matches 8 as @a[team=CYAN_COUGARS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score GREEN_GOATS dungeon.room matches 8 as @a[team=GREEN_GOATS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score PURPLE_PENGUINS dungeon.room matches 8 as @a[team=PURPLE_PENGUINS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score ORANGE_OTTERS dungeon.room matches 8 as @a[team=ORANGE_OTTERS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score YELLOW_YAKS dungeon.room matches 8 as @a[team=YELLOW_YAKS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite
execute if score PINK_PIKAS dungeon.room matches 8 as @a[team=PINK_PIKAS] if items entity @s weapon.mainhand diamond_sword run item modify entity @s weapon.mainhand dungeon:netherite



