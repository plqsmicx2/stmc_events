# helper function that runs when the game ends

# award winning team a round win
execute as @a[team=RED_RACCOONS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.RedRaccoons finale.round.completed 1
execute as @a[team=ORANGE_OTTERS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.OrangeOtters finale.round.completed 1
execute as @a[team=PINK_PIKAS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.PinkPikas finale.round.completed 1
execute as @a[team=YELLOW_YAKS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.YellowYaks finale.round.completed 1
execute as @a[team=GREEN_GOATS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.GreenGoats finale.round.completed 1
execute as @a[team=CYAN_COUGARS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.CyanCougars finale.round.completed 1
execute as @a[team=PURPLE_PENGUINS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.PurplePenguins finale.round.completed 1
execute as @a[team=BLUE_BEARS,scores={shoot.stats.alive=1..}] run \
        scoreboard players add finale.BlueBears finale.round.completed 1

# play effects
execute as @a[scores={shoot.stats.alive=1..}] at @s run particle firework ~ ~ ~ 2 1 2 1 20 force @a
execute as @a[scores={shoot.stats.alive=1..}] at @s run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1

# resets
execute as @a run attribute @s attack_damage base reset

# increment stage
scoreboard players set shoot.handler shoot.stage 4