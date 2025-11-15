# tick function for lobbies between games (and the first one)

# run every tick
function lobby:between/sidebar

# run start function if needed
execute unless score lobby.handler lobby.stage matches 0.. run function lobby:between/start

# update timer
scoreboard players add lobby.handler lobby.timer 1

# prevent weird red wool bug
execute in lobby:lobby if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function lobby:between/collect_stage

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function lobby:between/vote_stage