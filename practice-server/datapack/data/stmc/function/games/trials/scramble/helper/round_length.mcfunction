# helper function that sets the current round length

# set current round length

# keep at 2s for five rounds
execute if score scramble.lobby1 scramble.roundsCompleted matches 0..5 run scoreboard players set scramble.lobby1 scramble.current_round_length 40

# decrease by one tick until we reach 1s
execute if score scramble.lobby1 scramble.roundsCompleted matches 6..25 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1

# decrease every other until we reach .4s
execute if score scramble.lobby1 scramble.roundsCompleted matches 26 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 28 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 30 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 32 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 34 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 36 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 38 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 40 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 42 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 44 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 46 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1
execute if score scramble.lobby1 scramble.roundsCompleted matches 48 run scoreboard players remove scramble.lobby1 scramble.current_round_length 1

# set at 8 for remaining rounds
execute if score scramble.lobby1 scramble.roundsCompleted matches 56..60 run scoreboard players set scramble.lobby1 scramble.current_round_length 8

# set at 7 after 60
execute if score scramble.lobby1 scramble.roundsCompleted matches 61..70 run scoreboard players set scramble.lobby1 scramble.current_round_length 7

# set at 6 after 70
execute if score scramble.lobby1 scramble.roundsCompleted matches 70.. run scoreboard players set scramble.lobby1 scramble.current_round_length 6

# add end of round delay
scoreboard players set scramble.lobby1 scramble.current_round_length_delay 40
scoreboard players operation scramble.lobby1 scramble.current_round_length_delay += scramble.lobby1 scramble.current_round_length