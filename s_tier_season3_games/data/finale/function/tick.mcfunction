# tick function for finale

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game

# run load function if this is our first time here
execute unless score finale.handler finale.stage matches 0.. run function finale:load

# run death handler
function finale:death_handler

# if we're in stage 0, increment timer
execute if score finale.handler finale.stage matches 0 run scoreboard players add finale.handler finale.timer.delay1 1

# set world
execute in finale:finale if score finale.handler finale.timer.delay1 matches 2 run clone -31 58 -31 31 75 31 -31 98 -31

execute if score finale.handler finale.timer.delay1 matches 3 if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 red_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 red_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 red_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 red_wool replace #wool

execute if score finale.handler finale.timer.delay1 matches 3 if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 orange_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 orange_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 orange_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 orange_wool replace #wool

execute if score finale.handler finale.timer.delay1 matches 3 if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 pink_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 pink_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 pink_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 pink_wool replace #wool

execute if score finale.handler finale.timer.delay1 matches 3 if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 green_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 green_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 green_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 green_wool replace #wool

execute if score finale.handler finale.timer.delay1 matches 3 if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 cyan_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 cyan_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 cyan_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 cyan_wool replace #wool

execute if score finale.handler finale.timer.delay1 matches 3 if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run fill 21 108 12 -21 100 24 purple_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run fill 3 100 24 -3 100 24 purple_wool replace #wool
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run fill 21 108 -12 -21 100 -24 purple_stained_glass replace #impermeable
execute if score finale.handler finale.timer.delay1 matches 3 if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run fill 3 100 -24 -3 100 -24 purple_wool replace #wool

execute if score finale.handler finale.stage matches 0 if score finale.handler finale.timer.delay1 matches 400.. run scoreboard players set finale.handler finale.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score finale.handler finale.stage matches 1 run scoreboard players add finale.handler finale.timer.explanation 1
execute if score finale.handler finale.stage matches 1 run function finale:explanation
execute if score finale.handler finale.stage matches 1 if score finale.handler finale.timer.explanation matches 800.. run scoreboard players set finale.handler finale.stage 2

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score finale.handler finale.stage matches 2 run scoreboard players add finale.handler finale.timer.delay2 1
# countdown
execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!", "color":white}
execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!", "color":white}
execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!", "color":white}
execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!", "color":white}
execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 380 run title @a actionbar {"text":"1 second!", "color":white}

execute if score finale.handler finale.stage matches 2 if score finale.handler finale.timer.delay2 matches 400.. run scoreboard players set finale.handler finale.stage 3

# if we're in stage 3, increment timer & run game
execute if score finale.handler finale.stage matches 3 run scoreboard players add finale.handler finale.timer.game 1
execute if score finale.handler finale.stage matches 3 run function finale:game_tick