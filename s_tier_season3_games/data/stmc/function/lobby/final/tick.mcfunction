# tick function for the final lobby

# run every tick
function stmc:lobby/final/sidebar with storage stmc:global

# set the players' actionbar to their individual rank & points
execute as @a run title @s actionbar [{text:"[#",color:gold},{score:{name:"@s",objective:"stats.points.indiv.rank"}},{text:"]: ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"}},{text:" points",color:gold}]

# update timer
scoreboard players add lobby.handler lobby.timer 1

# update elapsed secs & mins for sidebar
scoreboard players add lobby.handler lobby.timer.temp 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players set lobby.handler lobby.timer.temp 0
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players set stmc.handler event.timer.bgSecs 60

# prevent weird red wool bug
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# announce player rankings
execute if score lobby.handler lobby.timer matches 200 run function stmc:lobby/final/player_announcements

# dramatic team announcements
execute if score lobby.handler lobby.timer matches 400..701 run function stmc:lobby/final/team_announcements with storage stmc:global

# start finale
execute if score lobby.handler lobby.timer matches 1200.. run function finale:start