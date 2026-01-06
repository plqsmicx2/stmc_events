# Helper function for point_update
# This function inputs a team & outputs a value to award
# INPUTS:
# >>>> @team
# >>>> >>>> <>.build#.rank [int]
# OUTPUTS:
# >>>> "value" [int]

# set up temporary scores
scoreboard objectives add .return dummy
scoreboard players set #math .return 0

# save ranking values for team to player
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.overall = replicate.RedRaccoons replicate.points.rank.overall
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.RedRaccoons replicate.points.rank.build1
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.RedRaccoons replicate.points.rank.build2
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.RedRaccoons replicate.points.rank.build3
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.RedRaccoons replicate.points.rank.build4
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.RedRaccoons replicate.points.rank.build5
execute if entity @s[team=RED_RACCOONS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.RedRaccoons replicate.points.rank.build6

execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.overall = replicate.OrangeOtters replicate.points.rank.overall
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.OrangeOtters replicate.points.rank.build1
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.OrangeOtters replicate.points.rank.build2
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.OrangeOtters replicate.points.rank.build3
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.OrangeOtters replicate.points.rank.build4
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.OrangeOtters replicate.points.rank.build5
execute if entity @s[team=ORANGE_OTTERS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.OrangeOtters replicate.points.rank.build6

execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.overall = replicate.PinkPikas replicate.points.rank.overall
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.PinkPikas replicate.points.rank.build1
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.PinkPikas replicate.points.rank.build2
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.PinkPikas replicate.points.rank.build3
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.PinkPikas replicate.points.rank.build4
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.PinkPikas replicate.points.rank.build5
execute if entity @s[team=PINK_PIKAS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.PinkPikas replicate.points.rank.build6

execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.overall = replicate.YellowYaks replicate.points.rank.overall
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.YellowYaks replicate.points.rank.build1
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.YellowYaks replicate.points.rank.build2
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.YellowYaks replicate.points.rank.build3
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.YellowYaks replicate.points.rank.build4
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.YellowYaks replicate.points.rank.build5
execute if entity @s[team=YELLOW_YAKS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.YellowYaks replicate.points.rank.build6

execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.overall = replicate.GreenGoats replicate.points.rank.overall
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.GreenGoats replicate.points.rank.build1
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.GreenGoats replicate.points.rank.build2
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.GreenGoats replicate.points.rank.build3
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.GreenGoats replicate.points.rank.build4
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.GreenGoats replicate.points.rank.build5
execute if entity @s[team=GREEN_GOATS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.GreenGoats replicate.points.rank.build6

execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.overall = replicate.CyanCougars replicate.points.rank.overall
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.CyanCougars replicate.points.rank.build1
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.CyanCougars replicate.points.rank.build2
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.CyanCougars replicate.points.rank.build3
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.CyanCougars replicate.points.rank.build4
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.CyanCougars replicate.points.rank.build5
execute if entity @s[team=CYAN_COUGARS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.CyanCougars replicate.points.rank.build6

execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.overall = replicate.PurplePenguins replicate.points.rank.overall
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.PurplePenguins replicate.points.rank.build1
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.PurplePenguins replicate.points.rank.build2
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.PurplePenguins replicate.points.rank.build3
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.PurplePenguins replicate.points.rank.build4
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.PurplePenguins replicate.points.rank.build5
execute if entity @s[team=PURPLE_PENGUINS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.PurplePenguins replicate.points.rank.build6

execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.overall = replicate.BlueBears replicate.points.rank.overall
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build1 = replicate.BlueBears replicate.points.rank.build1
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build2 = replicate.BlueBears replicate.points.rank.build2
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build3 = replicate.BlueBears replicate.points.rank.build3
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build4 = replicate.BlueBears replicate.points.rank.build4
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build5 = replicate.BlueBears replicate.points.rank.build5
execute if entity @s[team=BLUE_BEARS] run scoreboard players operation @s replicate.points.rank.build6 = replicate.BlueBears replicate.points.rank.build6

# Overall ranking
execute if score @s replicate.points.rank.overall matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank1
execute if score @s replicate.points.rank.overall matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank2
execute if score @s replicate.points.rank.overall matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank3
execute if score @s replicate.points.rank.overall matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank4
execute if score @s replicate.points.rank.overall matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank5
execute if score @s replicate.points.rank.overall matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank6
execute if score @s replicate.points.rank.overall matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank7
execute if score @s replicate.points.rank.overall matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.overall.rank8

# now, go through each build, adding to the return value

# Build #1
execute if score @s replicate.points.rank.build1 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build1 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build1 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build1 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build1 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build1 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build1 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build1 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# Build #2
execute if score @s replicate.points.rank.build2 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build2 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build2 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build2 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build2 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build2 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build2 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build2 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# Build #3
execute if score @s replicate.points.rank.build3 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build3 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build3 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build3 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build3 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build3 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build3 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build3 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# Build #4
execute if score @s replicate.points.rank.build4 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build4 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build4 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build4 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build4 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build4 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build4 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build4 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# Build #5
execute if score @s replicate.points.rank.build5 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build5 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build5 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build5 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build5 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build5 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build5 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build5 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# Build #6
execute if score @s replicate.points.rank.build6 matches 1 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank1
execute if score @s replicate.points.rank.build6 matches 2 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank2
execute if score @s replicate.points.rank.build6 matches 3 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank3
execute if score @s replicate.points.rank.build6 matches 4 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank4
execute if score @s replicate.points.rank.build6 matches 5 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank5
execute if score @s replicate.points.rank.build6 matches 6 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank6
execute if score @s replicate.points.rank.build6 matches 7 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank7
execute if score @s replicate.points.rank.build6 matches 8 run \
        scoreboard players operation #math .return += replicate.handler replicate.points.build.rank8

# manually return score
execute if score #math .return matches 0 run return 0
execute if score #math .return matches 1 run return 1
execute if score #math .return matches 2 run return 2
execute if score #math .return matches 3 run return 3
execute if score #math .return matches 4 run return 4
execute if score #math .return matches 5 run return 5
execute if score #math .return matches 6 run return 6
execute if score #math .return matches 7 run return 7
execute if score #math .return matches 8 run return 8
execute if score #math .return matches 9 run return 9
execute if score #math .return matches 10 run return 10
execute if score #math .return matches 11 run return 11
execute if score #math .return matches 12 run return 12
execute if score #math .return matches 13 run return 13
execute if score #math .return matches 14 run return 14
execute if score #math .return matches 15 run return 15
execute if score #math .return matches 16 run return 16
execute if score #math .return matches 17 run return 17
execute if score #math .return matches 18 run return 18
execute if score #math .return matches 19 run return 19
execute if score #math .return matches 20 run return 20
execute if score #math .return matches 21 run return 21
execute if score #math .return matches 22 run return 22
execute if score #math .return matches 23 run return 23
execute if score #math .return matches 24 run return 24
execute if score #math .return matches 25 run return 25
execute if score #math .return matches 26 run return 26
execute if score #math .return matches 27 run return 27
execute if score #math .return matches 28 run return 28
execute if score #math .return matches 29 run return 29
execute if score #math .return matches 30 run return 30
execute if score #math .return matches 31 run return 31
execute if score #math .return matches 32 run return 32
execute if score #math .return matches 33 run return 33
execute if score #math .return matches 34 run return 34
execute if score #math .return matches 35 run return 35
execute if score #math .return matches 36 run return 36
execute if score #math .return matches 37 run return 37
execute if score #math .return matches 38 run return 38
execute if score #math .return matches 39 run return 39
execute if score #math .return matches 40 run return 40
execute if score #math .return matches 41 run return 41
execute if score #math .return matches 42 run return 42
execute if score #math .return matches 43 run return 43
execute if score #math .return matches 44 run return 44
execute if score #math .return matches 45 run return 45
execute if score #math .return matches 46 run return 46
execute if score #math .return matches 47 run return 47
execute if score #math .return matches 48 run return 48
execute if score #math .return matches 49 run return 49
execute if score #math .return matches 50 run return 50
execute if score #math .return matches 51 run return 51
execute if score #math .return matches 52 run return 52
execute if score #math .return matches 53 run return 53
execute if score #math .return matches 54 run return 54
execute if score #math .return matches 55 run return 55
execute if score #math .return matches 56 run return 56
execute if score #math .return matches 57 run return 57
execute if score #math .return matches 58 run return 58
execute if score #math .return matches 59 run return 59
execute if score #math .return matches 60 run return 60
execute if score #math .return matches 61 run return 61
execute if score #math .return matches 62 run return 62
execute if score #math .return matches 63 run return 63
execute if score #math .return matches 64 run return 64
execute if score #math .return matches 65 run return 65
execute if score #math .return matches 66 run return 66
execute if score #math .return matches 67 run return 67
execute if score #math .return matches 68 run return 68
execute if score #math .return matches 69 run return 69
execute if score #math .return matches 70 run return 70
execute if score #math .return matches 71 run return 71
execute if score #math .return matches 72 run return 72
execute if score #math .return matches 73 run return 73
execute if score #math .return matches 74 run return 74
execute if score #math .return matches 75 run return 75
execute if score #math .return matches 76 run return 76
execute if score #math .return matches 77 run return 77
execute if score #math .return matches 78 run return 78
execute if score #math .return matches 79 run return 79
execute if score #math .return matches 80 run return 80
execute if score #math .return matches 81 run return 81
execute if score #math .return matches 82 run return 82
execute if score #math .return matches 83 run return 83
execute if score #math .return matches 84 run return 84
execute if score #math .return matches 85 run return 85
execute if score #math .return matches 86 run return 86
execute if score #math .return matches 87 run return 87
execute if score #math .return matches 88 run return 88
execute if score #math .return matches 89 run return 89
execute if score #math .return matches 90 run return 90
execute if score #math .return matches 91 run return 91
execute if score #math .return matches 92 run return 92