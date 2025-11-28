# tick function for the final lobby

# run every tick
function lobby:final/sidebar

# update timer
scoreboard players add lobby.handler lobby.timer 1

# update elapsed secs & mins for sidebar
scoreboard players add lobby.handler lobby.timer.temp 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players set lobby.handler lobby.timer.temp 0
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players set stmc.handler event.timer.bgSecs 60

# prevent weird red wool bug
execute in lobby:lobby if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# announce player rankings
execute if score lobby.handler lobby.timer matches 200 run function lobby:final/player_announcements

# dramatic team announcements
execute if score lobby.handler lobby.timer matches 400..600 run function lobby:final/team_announcements

# start finale
execute if score lobby.handler lobby.timer matches 1200.. run function finale:start