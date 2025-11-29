# function running the thread for the finale game

# important things being tracked:
# round.timer --> start_round & end_round set to 0
# round.completed --> # of rounds completed & # of wins per team

# if round timer is zero, but only 1 team is alive start round
execute if score finale.handler finale.stats.alive matches 1 if score finale.handler finale.round.timer matches 0 run \
        function finale:start_round

# increment timer
scoreboard players add finale.handler finale.round.timer 1

# run round tick
function finale:round_tick