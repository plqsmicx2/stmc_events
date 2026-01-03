# helper function that runs when the game ends

# award winning team a round win
execute as @a[team=RED_RACCOONS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.RedRaccoons finale.round.completed 1
execute as @a[team=ORANGE_OTTERS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.OrangeOtters finale.round.completed 1
execute as @a[team=PINK_PIKAS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.PinkPikas finale.round.completed 1
execute as @a[team=YELLOW_YAKS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.YellowYaks finale.round.completed 1
execute as @a[team=GREEN_GOATS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.GreenGoats finale.round.completed 1
execute as @a[team=CYAN_COUGARS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.CyanCougars finale.round.completed 1
execute as @a[team=PURPLE_PENGUINS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.PurplePenguins finale.round.completed 1
execute as @a[team=BLUE_BEARS,scores={fight.stats.alive=1..}] run \
        scoreboard players add finale.BlueBears finale.round.completed 1

# play effects
execute as @a[scores={fight.stats.alive=1..}] at @s run particle firework ~ ~ ~ 2 1 2 1 20 force @a
execute as @a[scores={fight.stats.alive=1..}] at @s run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1

# reset
effect clear @a

# increment stage
scoreboard players add fight.handler fight.stage 1