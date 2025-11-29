# this function builds the world at the start of the game

# clone builds (give a little bit of time for each one)

# red team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 5 if score ascend.RedRaccoons ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 -149 90 -149
execute in trials:ascend run summon armor_stand -100 102 -100

# orange team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 10 if score ascend.OrangeOtters ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 -49 90 -149

# pink team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 15 if score ascend.PinkPikas ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 51 90 -149

# yellow team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 20 if score ascend.YellowYaks ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 51 90 -49

# green team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 25 if score ascend.GreenGoats ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 51 90 51

# cyan team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 30 if score ascend.CyanCougars ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 -49 90 51

# purple team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 35 if score ascend.PurplePenguins ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 -149 90 51

# blue team
execute in trials:ascend if score ascend.handler ascend.timer.delay1 matches 40 if score ascend.BlueBears ascend.players matches 1.. \
        run clone -49 90 -49 49 220 49 -149 90 -49
