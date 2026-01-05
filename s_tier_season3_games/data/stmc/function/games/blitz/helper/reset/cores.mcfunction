# helper function that places teams' cores
# this function is run in stmc:blitz

# check which teams have players
function stmc:games/blitz/helper/count_players

# remove cores
fill -97 106 -97 97 106 97 air replace #wool

# give those teams cores
execute if score blitz.RedRaccoons blitz.stats.players matches 1.. run setblock -36 106 97 red_wool
execute if score blitz.OrangeOtters blitz.stats.players matches 1.. run setblock -36 106 -97 orange_wool
execute if score blitz.PinkPikas blitz.stats.players matches 1.. run setblock 97 106 -36 pink_wool
execute if score blitz.YellowYaks blitz.stats.players matches 1.. run setblock 97 106 36 yellow_wool
execute if score blitz.GreenGoats blitz.stats.players matches 1.. run setblock 36 106 -97 green_wool
execute if score blitz.CyanCougars blitz.stats.players matches 1.. run setblock -97 106 -36 cyan_wool
execute if score blitz.PurplePenguins blitz.stats.players matches 1.. run setblock -97 106 36 purple_wool
execute if score blitz.BlueBears blitz.stats.players matches 1.. run setblock 36 106 97 blue_wool