# function running the thread for the finale games

# stages:
# 0- winning team voting phase
# 1- game #1
# 2- game #2
# 3- game #3 (if necessary)

# Prompt winning team for which games to play
execute if score finale.handler finale.round.stage matches 0 run function stmc:games/finale/helper/prompt

# play game #1
execute if score finale.handler finale.round.stage matches 1 \
        if score finale.handler finale.game1 matches 1 run function stmc:games/finale/games/fight/tick
execute if score finale.handler finale.round.stage matches 1 \
        if score finale.handler finale.game1 matches 2 run function stmc:games/finale/games/sumo/tick
execute if score finale.handler finale.round.stage matches 1 \
        if score finale.handler finale.game1 matches 3 run function stmc:games/finale/games/shoot/tick

# play game #2
execute if score finale.handler finale.round.stage matches 2 \
        if score finale.handler finale.game2 matches 1 run function stmc:games/finale/games/fight/tick
execute if score finale.handler finale.round.stage matches 2 \
        if score finale.handler finale.game2 matches 2 run function stmc:games/finale/games/sumo/tick
execute if score finale.handler finale.round.stage matches 2 \
        if score finale.handler finale.game2 matches 3 run function stmc:games/finale/games/shoot/tick

# play game #3
execute if score finale.handler finale.round.stage matches 3 \
        if score finale.handler finale.game3 matches 1 run function stmc:games/finale/games/fight/tick
execute if score finale.handler finale.round.stage matches 3 \
        if score finale.handler finale.game3 matches 2 run function stmc:games/finale/games/sumo/tick
execute if score finale.handler finale.round.stage matches 3 \
        if score finale.handler finale.game3 matches 3 run function stmc:games/finale/games/shoot/tick

# check for completion
execute if score finale.RedRaccoons finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.OrangeOtters finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.PinkPikas finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.YellowYaks finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.GreenGoats finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.CyanCougars finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.PurplePenguins finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3
execute if score finale.BlueBears finale.round.completed matches 2.. run \
        scoreboard players set finale.handler finale.stage 3