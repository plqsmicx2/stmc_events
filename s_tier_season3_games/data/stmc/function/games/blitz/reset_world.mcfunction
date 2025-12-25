# world reset for blitz

# does NOT handle anything team-specific (e.g. villagers, cores)

# set loot crates
fill -2 103 -2 2 105 2 tinted_glass
fill -1 103 -1 1 104 1 deepslate_redstone_ore

fill 32 116 32 35 118 35 tinted_glass
fill 33 116 33 34 117 34 deepslate_redstone_ore

fill 32 116 -32 35 118 -35 tinted_glass
fill 33 116 -33 34 117 -34 deepslate_redstone_ore

fill -32 116 32 -35 118 35 tinted_glass
fill -33 116 33 -34 117 34 deepslate_redstone_ore

fill -32 116 -32 -35 118 -35 tinted_glass
fill -33 116 -33 -34 117 -34 deepslate_redstone_ore

# remove placed concrete
fill 0 85 0 150 135 150 air replace #stmc:concrete
fill 0 85 0 -150 135 150 air replace #stmc:concrete
fill 0 85 0 150 135 -150 air replace #stmc:concrete
fill 0 85 0 -150 135 -150 air replace #stmc:concrete

fill 0 85 0 150 135 150 air replace oak_planks
fill 0 85 0 -150 135 150 air replace oak_planks
fill 0 85 0 150 135 -150 air replace oak_planks
fill 0 85 0 -150 135 -150 air replace oak_planks

# set cores
function stmc:games/blitz/helper/count_players

execute if score blitz.RedRaccoons blitz.stats.players matches 1 run setblock -36 106 97 red_wool
execute if score blitz.OrangeOtters blitz.stats.players matches 1 run setblock -36 106 -97 orange_wool
execute if score blitz.PinkPikas blitz.stats.players matches 1 run setblock 97 106 -36 pink_wool
execute if score blitz.YellowYaks blitz.stats.players matches 1 run setblock 97 106 36 yellow_wool
execute if score blitz.GreenGoats blitz.stats.players matches 1 run setblock 36 106 -97 green_wool
execute if score blitz.CyanCougars blitz.stats.players matches 1 run setblock -97 106 -36 cyan_wool
execute if score blitz.PurplePenguins blitz.stats.players matches 1 run setblock -97 106 36 purple_wool
execute if score blitz.BlueBears blitz.stats.players matches 1 run setblock 36 106 97 blue_wool