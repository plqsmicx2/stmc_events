# helper function that sets the current round length

# set current round length

# keep at 60 for five rounds
execute if score disco.handler disco.rounds_played matches 0..5 run scoreboard players set disco.handler disco.current_round_length 60

# decrease by two until we reach 30 ticks
execute if score disco.handler disco.rounds_played matches 6..20 run scoreboard players remove disco.handler disco.current_round_length 2

# decrease by one until we reach 20 ticks
execute if score disco.handler disco.rounds_played matches 21..30 run scoreboard players remove disco.handler disco.current_round_length 1

# decrease every other until we reach 15 ticks
execute if score disco.handler disco.rounds_played matches 32 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 34 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 36 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 38 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 40 run scoreboard players remove disco.handler disco.current_round_length 1

# decrease every three until we reach 10 ticks
execute if score disco.handler disco.rounds_played matches 43 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 46 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 49 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 52 run scoreboard players remove disco.handler disco.current_round_length 1
execute if score disco.handler disco.rounds_played matches 55 run scoreboard players remove disco.handler disco.current_round_length 1

# set at 10 for next 5 rounds
execute if score disco.handler disco.rounds_played matches 56..60 run scoreboard players set disco.handler disco.current_round_length 10

# set at 9 for next 10 rounds
execute if score disco.handler disco.rounds_played matches 61..70 run scoreboard players set disco.handler disco.current_round_length 9

# set at 8 for remaining rounds
execute if score disco.handler disco.rounds_played matches 70.. run scoreboard players set disco.handler disco.current_round_length 8

# add end of round delay
scoreboard players set disco.handler disco.current_round_length_delay 40
scoreboard players operation disco.handler disco.current_round_length_delay += disco.handler disco.current_round_length