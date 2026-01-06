# get points & rankings
function stmc:games/dungeons/points/calculate_rankings
function stmc:games/dungeons/points/point_update

# Top per room
tellraw @a {text:"Top teams per room:",color:yellow}

$execute if score RED_RACCOONS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.0.rank matches 1 run tellraw @a [{text:"Room 1: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.1.rank matches 1 run tellraw @a [{text:"Room 2: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.3.rank matches 1 run tellraw @a [{text:"Room 3: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.4.rank matches 1 run tellraw @a [{text:"Room 4: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.5.rank matches 1 run tellraw @a [{text:"Room 5: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.8.rank matches 1 run tellraw @a [{text:"Room 6: ",color:yellow},{text:"$(blueName)",color:blue}]

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(redName)",color:red}]
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(orangeName)",color:gold}]
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(pinkName)",color:light_purple}]
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(greenName)",color:green}]
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(cyanName)",color:dark_aqua}]
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(purpleName)",color:dark_purple}]
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(yellowName)",color:yellow}]
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1 run tellraw @a [{text:"Overall: ",color:yellow},{text:"$(blueName)",color:blue}]