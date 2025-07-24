# game tick function for finale [FINALE]

# this function will run each round individually

# <==== GAME START ====>

execute if score finale.handler finale.timer.game matches 3 in finale:finale run fill 4 102 20 -4 104 -20 air replace #impermeable

# <==== EVERY TICK ====>

# check for players alive
scoreboard players set finale.RedRaccoons finale.stats.alive 0
scoreboard players set finale.OrangeOtters finale.stats.alive 0
scoreboard players set finale.PinkPikas finale.stats.alive 0
scoreboard players set finale.GreenGoats finale.stats.alive 0
scoreboard players set finale.CyanCougars finale.stats.alive 0
scoreboard players set finale.PurplePenguins finale.stats.alive 0
execute as @a[team=RED_RACCOONS,scores={finale.stats.alive=1}] run scoreboard players add finale.RedRaccoons finale.stats.alive 1
execute as @a[team=ORANGE_OTTERS,scores={finale.stats.alive=1}] run scoreboard players add finale.OrangeOtters finale.stats.alive 1
execute as @a[team=PINK_PIKAS,scores={finale.stats.alive=1}] run scoreboard players add finale.PinkPikas finale.stats.alive 1
execute as @a[team=GREEN_GOATS,scores={finale.stats.alive=1}] run scoreboard players add finale.GreenGoats finale.stats.alive 1
execute as @a[team=CYAN_COUGARS,scores={finale.stats.alive=1}] run scoreboard players add finale.CyanCougars finale.stats.alive 1
execute as @a[team=PURPLE_PENGUINS,scores={finale.stats.alive=1}] run scoreboard players add finale.PurplePenguins finale.stats.alive 1

# <==== END GAME ====>

# end game if only one team is alive
scoreboard players set finale.handler finale.stats.alive 0
execute if score finale.RedRaccoons finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.OrangeOtters finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.PinkPikas finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.GreenGoats finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.CyanCougars finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.PurplePenguins finale.stats.alive matches 1.. run scoreboard players add finale.handler finale.stats.alive 1
execute if score finale.handler finale.stats.alive matches 1 run function finale:reset

# <==== SPEED GAME ====>

# if game is lasting too long, begin withering players
execute if score finale.handler finale.timer.game matches 1200.. run effect give @a[scores={finale.stats.alive=1}] poison 1 0 true