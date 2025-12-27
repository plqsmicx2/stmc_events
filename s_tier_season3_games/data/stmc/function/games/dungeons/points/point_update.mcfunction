# points update function for Extract [EXTRACT]

# this function calculates team points & updates individual points

# <===== TEAM POINTS =====>

# reset team points
scoreboard players set RED_RACCOONS dungeons.points.team 0
scoreboard players set ORANGE_OTTERS dungeons.points.team 0
scoreboard players set PINK_PIKAS dungeons.points.team 0
scoreboard players set GREEN_GOATS dungeons.points.team 0
scoreboard players set CYAN_COUGARS dungeons.points.team 0
scoreboard players set PURPLE_PENGUINS dungeons.points.team 0
scoreboard players set YELLOW_YAKS dungeons.points.team 0
scoreboard players set BLUE_BEARS dungeons.points.team 0

# room completion points

# Room #1
$execute if score RED_RACCOONS dungeons.roomdisplay matches 1.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomOne)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 1.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomOne)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 1.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomOne)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 1.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomOne)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 1.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomOne)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 1.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomOne)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 1.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomOne)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 1.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomOne)

# Room #2
$execute if score RED_RACCOONS dungeons.roomdisplay matches 2.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomTwo)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 2.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomTwo)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 2.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomTwo)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 2.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomTwo)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 2.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomTwo)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 2.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomTwo)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 2.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomTwo)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 2.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomTwo)

# Room #3
$execute if score RED_RACCOONS dungeons.roomdisplay matches 3.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThree)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 3.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThree)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 3.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThree)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 3.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThree)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 3.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThree)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 3.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThree)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 3.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThree)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 3.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThree)

# Room #4
$execute if score RED_RACCOONS dungeons.roomdisplay matches 4.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFour)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 4.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFour)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 4.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFour)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 4.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFour)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 4.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFour)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 4.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFour)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 4.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFour)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 4.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFour)

# Room #5
$execute if score RED_RACCOONS dungeons.roomdisplay matches 5.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFive)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 5.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFive)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 5.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFive)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 5.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFive)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 5.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFive)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 5.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFive)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 5.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFive)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 5.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFive)

# Room #6
$execute if score RED_RACCOONS dungeons.roomdisplay matches 6.. run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSix)
$execute if score ORANGE_OTTERS dungeons.roomdisplay matches 6.. run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSix)
$execute if score PINK_PIKAS dungeons.roomdisplay matches 6.. run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSix)
$execute if score YELLOW_YAKS dungeons.roomdisplay matches 6.. run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSix)
$execute if score GREEN_GOATS dungeons.roomdisplay matches 6.. run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSix)
$execute if score CYAN_COUGARS dungeons.roomdisplay matches 6.. run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSix)
$execute if score PURPLE_PENGUINS dungeons.roomdisplay matches 6.. run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSix)
$execute if score BLUE_BEARS dungeons.roomdisplay matches 6.. run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSix)

# overall ranking points
$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallFirst)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallFirst)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallFirst)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallFirst)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallFirst)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallFirst)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallFirst)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallSecond)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallSecond)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallSecond)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallSecond)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallSecond)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallSecond)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallSecond)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallThird)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallThird)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallThird)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallThird)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallThird)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallThird)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallThird)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallThird)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallFourth)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallFourth)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallFourth)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallFourth)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallFourth)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallFourth)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallFourth)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 5 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallFifth)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 5 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallFifth)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 5 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallFifth)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 5 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallFifth)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 5 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallFifth)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 5 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallFifth)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 5 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallFifth)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 5 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallFifth)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 6 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallSixth)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 6 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallSixth)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 6 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallSixth)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 6 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallSixth)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 6 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallSixth)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 6 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallSixth)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 6 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallSixth)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 6 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallSixth)

$execute if score RED_RACCOONS dungeons.timer.overall.rank matches 7 run scoreboard players add RED_RACCOONS dungeons.points.team $(overallSeventh)
$execute if score ORANGE_OTTERS dungeons.timer.overall.rank matches 7 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(overallSeventh)
$execute if score PINK_PIKAS dungeons.timer.overall.rank matches 7 run scoreboard players add PINK_PIKAS dungeons.points.team $(overallSeventh)
$execute if score GREEN_GOATS dungeons.timer.overall.rank matches 7 run scoreboard players add GREEN_GOATS dungeons.points.team $(overallSeventh)
$execute if score CYAN_COUGARS dungeons.timer.overall.rank matches 7 run scoreboard players add CYAN_COUGARS dungeons.points.team $(overallSeventh)
$execute if score PURPLE_PENGUINS dungeons.timer.overall.rank matches 7 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(overallSeventh)
$execute if score YELLOW_YAKS dungeons.timer.overall.rank matches 7 run scoreboard players add YELLOW_YAKS dungeons.points.team $(overallSeventh)
$execute if score BLUE_BEARS dungeons.timer.overall.rank matches 7 run scoreboard players add BLUE_BEARS dungeons.points.team $(overallSeventh)

# and by room

# Room #1
$execute if score RED_RACCOONS dungeons.timer.0.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.0.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.0.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.0.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.0.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.0.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.0.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.0.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.0.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.0.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.0.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.0.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.0.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.0.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.0.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.0.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.0.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.0.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.0.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.0.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.0.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.0.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.0.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.0.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.0.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.0.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.0.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.0.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.0.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.0.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.0.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.0.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# Room #2
$execute if score RED_RACCOONS dungeons.timer.1.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.1.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.1.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.1.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.1.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.1.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.1.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.1.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.1.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.1.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.1.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.1.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.1.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.1.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.1.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.1.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.1.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.1.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.1.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.1.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.1.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.1.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.1.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.1.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.1.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.1.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.1.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.1.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.1.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.1.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.1.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.1.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# Room #3
$execute if score RED_RACCOONS dungeons.timer.3.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.3.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.3.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.3.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.3.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.3.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.3.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.3.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.3.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.3.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.3.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.3.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.3.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.3.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.3.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.3.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.3.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.3.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.3.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.3.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.3.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.3.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.3.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.3.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.3.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.3.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.3.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.3.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.3.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.3.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.3.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.3.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# Room #4
$execute if score RED_RACCOONS dungeons.timer.4.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.4.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.4.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.4.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.4.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.4.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.4.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.4.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.4.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.4.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.4.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.4.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.4.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.4.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.4.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.4.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.4.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.4.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.4.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.4.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.4.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.4.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.4.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.4.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.4.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.4.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.4.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.4.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.4.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.4.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.4.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.4.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# Room #5
$execute if score RED_RACCOONS dungeons.timer.5.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.5.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.5.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.5.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.5.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.5.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.5.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.5.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.5.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.5.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.5.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.5.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.5.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.5.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.5.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.5.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.5.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.5.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.5.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.5.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.5.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.5.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.5.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.5.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.5.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.5.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.5.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.5.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.5.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.5.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.5.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.5.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# Room #6
$execute if score RED_RACCOONS dungeons.timer.8.rank matches 1 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFirst)
$execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 1 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFirst)
$execute if score PINK_PIKAS dungeons.timer.8.rank matches 1 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFirst)
$execute if score GREEN_GOATS dungeons.timer.8.rank matches 1 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFirst)
$execute if score CYAN_COUGARS dungeons.timer.8.rank matches 1 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFirst)
$execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 1 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFirst)
$execute if score YELLOW_YAKS dungeons.timer.8.rank matches 1 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFirst)
$execute if score BLUE_BEARS dungeons.timer.8.rank matches 1 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFirst)
$execute if score RED_RACCOONS dungeons.timer.8.rank matches 2 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomSecond)
$execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 2 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomSecond)
$execute if score PINK_PIKAS dungeons.timer.8.rank matches 2 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomSecond)
$execute if score GREEN_GOATS dungeons.timer.8.rank matches 2 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomSecond)
$execute if score CYAN_COUGARS dungeons.timer.8.rank matches 2 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomSecond)
$execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 2 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomSecond)
$execute if score YELLOW_YAKS dungeons.timer.8.rank matches 2 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomSecond)
$execute if score BLUE_BEARS dungeons.timer.8.rank matches 2 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomSecond)
$execute if score RED_RACCOONS dungeons.timer.8.rank matches 3 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomThird)
$execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 3 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomThird)
$execute if score PINK_PIKAS dungeons.timer.8.rank matches 3 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomThird)
$execute if score GREEN_GOATS dungeons.timer.8.rank matches 3 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomThird)
$execute if score CYAN_COUGARS dungeons.timer.8.rank matches 3 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomThird)
$execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 3 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomThird)
$execute if score YELLOW_YAKS dungeons.timer.8.rank matches 3 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomThird)
$execute if score BLUE_BEARS dungeons.timer.8.rank matches 3 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomThird)
$execute if score RED_RACCOONS dungeons.timer.8.rank matches 4 run scoreboard players add RED_RACCOONS dungeons.points.team $(roomFourth)
$execute if score ORANGE_OTTERS dungeons.timer.8.rank matches 4 run scoreboard players add ORANGE_OTTERS dungeons.points.team $(roomFourth)
$execute if score PINK_PIKAS dungeons.timer.8.rank matches 4 run scoreboard players add PINK_PIKAS dungeons.points.team $(roomFourth)
$execute if score GREEN_GOATS dungeons.timer.8.rank matches 4 run scoreboard players add GREEN_GOATS dungeons.points.team $(roomFourth)
$execute if score CYAN_COUGARS dungeons.timer.8.rank matches 4 run scoreboard players add CYAN_COUGARS dungeons.points.team $(roomFourth)
$execute if score PURPLE_PENGUINS dungeons.timer.8.rank matches 4 run scoreboard players add PURPLE_PENGUINS dungeons.points.team $(roomFourth)
$execute if score YELLOW_YAKS dungeons.timer.8.rank matches 4 run scoreboard players add YELLOW_YAKS dungeons.points.team $(roomFourth)
$execute if score BLUE_BEARS dungeons.timer.8.rank matches 4 run scoreboard players add BLUE_BEARS dungeons.points.team $(roomFourth)

# <===== INDIVIDUAL POINTS =====>

# determine players on team
scoreboard players set RED_RACCOONS dungeons.stats.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add RED_RACCOONS dungeons.stats.players 1
scoreboard players set ORANGE_OTTERS dungeons.stats.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add ORANGE_OTTERS dungeons.stats.players 1
scoreboard players set PINK_PIKAS dungeons.stats.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add PINK_PIKAS dungeons.stats.players 1
scoreboard players set GREEN_GOATS dungeons.stats.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add GREEN_GOATS dungeons.stats.players 1
scoreboard players set CYAN_COUGARS dungeons.stats.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add CYAN_COUGARS dungeons.stats.players 1
scoreboard players set PURPLE_PENGUINS dungeons.stats.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add PURPLE_PENGUINS dungeons.stats.players 1
scoreboard players set YELLOW_YAKS dungeons.stats.players 0
execute as @a[team=YELLOW_YAKS] run scoreboard players add YELLOW_YAKS dungeons.stats.players 1
scoreboard players set BLUE_BEARS dungeons.stats.players 0
execute as @a[team=BLUE_BEARS] run scoreboard players add BLUE_BEARS dungeons.stats.players 1

# reset individual points
execute as @a run scoreboard players set @s dungeons.points.indiv 0

# update individual points by team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s dungeons.points.indiv = RED_RACCOONS dungeons.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s dungeons.points.indiv /= RED_RACCOONS dungeons.stats.players
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s dungeons.points.indiv = ORANGE_OTTERS dungeons.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s dungeons.points.indiv /= ORANGE_OTTERS dungeons.stats.players
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s dungeons.points.indiv = PINK_PIKAS dungeons.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s dungeons.points.indiv /= PINK_PIKAS dungeons.stats.players
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s dungeons.points.indiv = GREEN_GOATS dungeons.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s dungeons.points.indiv /= GREEN_GOATS dungeons.stats.players
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s dungeons.points.indiv = CYAN_COUGARS dungeons.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s dungeons.points.indiv /= CYAN_COUGARS dungeons.stats.players
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s dungeons.points.indiv = PURPLE_PENGUINS dungeons.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s dungeons.points.indiv /= PURPLE_PENGUINS dungeons.stats.players
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s dungeons.points.indiv = YELLOW_YAKS dungeons.points.team
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s dungeons.points.indiv /= YELLOW_YAKS dungeons.stats.players
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s dungeons.points.indiv = BLUE_BEARS dungeons.points.team
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s dungeons.points.indiv /= BLUE_BEARS dungeons.stats.players