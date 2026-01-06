# helper function that runs every time someone dies

# runs as @s (player that died)

# case: player that died has a core

# red team
execute if entity @s[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# orange team
execute if entity @s[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# pink team
execute if entity @s[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# yellow team
execute if entity @s[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# green team
execute if entity @s[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# cyan team
execute if entity @s[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# purple team
execute if entity @s[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn
# blue team
execute if entity @s[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.coreIntact matches 1 as @s run function stmc:games/blitz/helper/death_handler/respawn

# case: player that died has no core

# red team
execute if entity @s[team=RED_RACCOONS] if score blitz.RedRaccoons blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# orange team
execute if entity @s[team=ORANGE_OTTERS] if score blitz.OrangeOtters blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# pink team
execute if entity @s[team=PINK_PIKAS] if score blitz.PinkPikas blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# yellow team
execute if entity @s[team=YELLOW_YAKS] if score blitz.YellowYaks blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# green team
execute if entity @s[team=GREEN_GOATS] if score blitz.GreenGoats blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# cyan team
execute if entity @s[team=CYAN_COUGARS] if score blitz.CyanCougars blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# purple team
execute if entity @s[team=PURPLE_PENGUINS] if score blitz.PurplePenguins blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
# blue team
execute if entity @s[team=BLUE_BEARS] if score blitz.BlueBears blitz.stats.coreIntact matches 0 as @s run function stmc:games/blitz/helper/death_handler/final
