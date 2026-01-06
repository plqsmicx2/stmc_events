# tick function for the final lobby

# run every tick
execute if score lobby.handler lobby.timer matches ..1300 run \
        function stmc:lobby/final/sidebar with storage stmc:global
execute if score lobby.handler lobby.timer matches 1301.. run \
        function stmc:lobby/final/sidebar2 with storage stmc:global

# set the players' actionbar to their individual rank & points
execute if score lobby.handler lobby.timer matches ..500 as @a run \
                title @s actionbar {text:"[#??]: ???? Points",color:gold}
execute if score lobby.handler lobby.timer matches 501.. as @a run \
                title @s actionbar [{text:"[#",color:gold},{score:{name:"@s",objective:"stats.points.indiv.rank"}},{text:"]: ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"}},{text:" points",color:gold}]

# update timer
scoreboard players add lobby.handler lobby.timer 1

# update elapsed secs & mins for sidebar
scoreboard players add lobby.handler lobby.timer.temp 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players set lobby.handler lobby.timer.temp 0
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players set stmc.handler event.timer.bgSecs 59

# prevent weird red wool bug
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 2..20 run setblock 0 100 0 air

# announce player rankings
execute if score lobby.handler lobby.timer matches 200..501 run function stmc:lobby/final/announcements/player

# dramatic team announcements
execute if score lobby.handler lobby.timer matches 700..1301 run function stmc:lobby/final/announcements/team with storage stmc:global

# start finale
execute if score lobby.handler lobby.timer matches 1700.. run function stmc:games/finale/start