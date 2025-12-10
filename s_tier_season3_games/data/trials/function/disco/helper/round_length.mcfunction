# helper function that sets the current round length

# set current round length

# keep at 60 for five rounds
execute if score disco.handler disco.rounds_played matches 0..4 run scoreboard players set disco.handler disco.current_round_length 60

# decrease by one until we reach 10 ticks
execute if score disco.handler disco.rounds_played matches 5..54 run scoreboard players remove disco.handler disco.current_round_length 1

# set at 10 for final rounds
execute if score disco.handler disco.rounds_played matches 55..60 run scoreboard players set disco.handler disco.current_round_length 10

# add end of round delay
scoreboard players set disco.handler disco.current_round_length_delay 40
scoreboard players operation disco.handler disco.current_round_length_delay += disco.handler disco.current_round_length

# set the bossbar to publish the round length
bossbar set disco.timer name [{text:"Round Length: ",color:dark_aqua},{score:{name:"disco.handler",objective:"disco.current_round_length"},color:dark_aqua},{text:" ticks",color:"dark_aqua"}]
execute store result bossbar disco.timer max run scoreboard players get disco.handler disco.current_round_length
bossbar set disco.timer color blue
bossbar set disco.timer players @a
bossbar set disco.timer visible true