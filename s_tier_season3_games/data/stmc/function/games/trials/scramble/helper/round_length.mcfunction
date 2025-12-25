# helper function that sets the current round length

# set current round length

# keep at 60 for five rounds
execute if score scramble.handler scramble.rounds_played matches 0..5 run scoreboard players set scramble.handler scramble.current_round_length 60

# decrease by two until we reach 30 ticks
execute if score scramble.handler scramble.rounds_played matches 6..20 run scoreboard players remove scramble.handler scramble.current_round_length 2

# decrease by one until we reach 20 ticks
execute if score scramble.handler scramble.rounds_played matches 21..30 run scoreboard players remove scramble.handler scramble.current_round_length 1

# decrease every other until we reach 15 ticks
execute if score scramble.handler scramble.rounds_played matches 32 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 34 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 36 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 38 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 40 run scoreboard players remove scramble.handler scramble.current_round_length 1

# decrease every three until we reach 10 ticks
execute if score scramble.handler scramble.rounds_played matches 43 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 46 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 49 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 52 run scoreboard players remove scramble.handler scramble.current_round_length 1
execute if score scramble.handler scramble.rounds_played matches 55 run scoreboard players remove scramble.handler scramble.current_round_length 1

# set at 10 for final rounds
execute if score scramble.handler scramble.rounds_played matches 56..60 run scoreboard players set scramble.handler scramble.current_round_length 10

# add end of round delay
scoreboard players set scramble.handler scramble.current_round_length_delay 40
scoreboard players operation scramble.handler scramble.current_round_length_delay += scramble.handler scramble.current_round_length

# set the bossbar to publish the round length
bossbar set scramble.timer name [{text:"Round Length: ",color:dark_aqua},{score:{name:"scramble.handler",objective:"scramble.current_round_length"},color:dark_aqua},{text:" ticks",color:"dark_aqua"}]
execute store result bossbar scramble.timer max run scoreboard players get scramble.handler scramble.current_round_length
bossbar set scramble.timer color blue
bossbar set scramble.timer players @a
bossbar set scramble.timer visible true