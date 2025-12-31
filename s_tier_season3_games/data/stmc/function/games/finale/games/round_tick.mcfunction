# game tick function for finale [FINALE]

# this function will run each round individually

# <==== COUNTDOWN ====>

# countdown
execute if score finale.handler finale.round.timer matches 300 run title @a actionbar {"text":"5 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 320 run title @a actionbar {"text":"4 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 340 run title @a actionbar {"text":"3 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 360 run title @a actionbar {"text":"2 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 380 run title @a actionbar {"text":"1 second!", "color":white}

execute as @a at @s if score finale.handler finale.round.timer matches 300 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1
execute as @a at @s if score finale.handler finale.round.timer matches 320 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.1
execute as @a at @s if score finale.handler finale.round.timer matches 340 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.2
execute as @a at @s if score finale.handler finale.round.timer matches 360 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.3
execute as @a at @s if score finale.handler finale.round.timer matches 380 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.4
execute as @a at @s if score finale.handler finale.round.timer matches 400 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# <==== GAME START ====>

# replace glass
execute if score finale.handler finale.round.timer matches 400 in stmc:finale run fill -3 146 -8 3 149 8 air replace #impermeable

# <==== EVERY TICK ====>

function stmc:games/finale/death_handler

# check for players alive
scoreboard players set finale.RedRaccoons finale.stats.alive 0
scoreboard players set finale.OrangeOtters finale.stats.alive 0
scoreboard players set finale.PinkPikas finale.stats.alive 0
scoreboard players set finale.YellowYaks finale.stats.alive 0
scoreboard players set finale.GreenGoats finale.stats.alive 0
scoreboard players set finale.CyanCougars finale.stats.alive 0
scoreboard players set finale.PurplePenguins finale.stats.alive 0
scoreboard players set finale.BlueBears finale.stats.alive 0
execute as @a[team=RED_RACCOONS,scores={finale.stats.alive=1}] run scoreboard players add finale.RedRaccoons finale.stats.alive 1
execute as @a[team=ORANGE_OTTERS,scores={finale.stats.alive=1}] run scoreboard players add finale.OrangeOtters finale.stats.alive 1
execute as @a[team=PINK_PIKAS,scores={finale.stats.alive=1}] run scoreboard players add finale.PinkPikas finale.stats.alive 1
execute as @a[team=YELLOW_YAKS,scores={finale.stats.alive=1}] run scoreboard players add finale.YellowYaks finale.stats.alive 1
execute as @a[team=GREEN_GOATS,scores={finale.stats.alive=1}] run scoreboard players add finale.GreenGoats finale.stats.alive 1
execute as @a[team=CYAN_COUGARS,scores={finale.stats.alive=1}] run scoreboard players add finale.CyanCougars finale.stats.alive 1
execute as @a[team=PURPLE_PENGUINS,scores={finale.stats.alive=1}] run scoreboard players add finale.PurplePenguins finale.stats.alive 1
execute as @a[team=BLUE_BEARS,scores={finale.stats.alive=1}] run scoreboard players add finale.BlueBears finale.stats.alive 1

# <==== END GAME ====>

# end game if only one team is alive
scoreboard players set finale.handler finale.stats.alive 0
execute if score finale.RedRaccoons finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.OrangeOtters finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.PinkPikas finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.YellowYaks finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.GreenGoats finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.CyanCougars finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.PurplePenguins finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.BlueBears finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1

execute if score finale.handler finale.round.timer matches 400.. if score finale.handler finale.stats.alive matches 1 run function stmc:games/finale/end_round