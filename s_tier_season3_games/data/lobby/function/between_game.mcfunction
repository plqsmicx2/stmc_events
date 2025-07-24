# function handling everything that needs to happen between games

# increment timer
execute if score stmc.handler event.stage matches 2 run scoreboard players add stmc.handler event.timer.bg1 1
execute if score stmc.handler event.stage matches 4 run scoreboard players add stmc.handler event.timer.bg2 1
execute if score stmc.handler event.stage matches 6 run scoreboard players add stmc.handler event.timer.bg3 1
execute if score stmc.handler event.stage matches 8 run scoreboard players add stmc.handler event.timer.bg4 1
execute if score stmc.handler event.stage matches 10 run scoreboard players add stmc.handler event.timer.bg5 1
execute if score stmc.handler event.stage matches 12 run scoreboard players add stmc.handler event.timer.bg6 1

# create bossbars
execute if score stmc.handler event.timer.bg1 matches 1 run bossbar add delay.bossbar {text:"Time until next game",color:aqua}
execute if score stmc.handler event.timer.bg1 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg1 matches 1 run bossbar set delay.bossbar max 1500
execute if score stmc.handler event.timer.bg1 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg1 matches 1 run bossbar set delay.bossbar visible true

execute if score stmc.handler event.timer.bg2 matches 1 run bossbar add delay.bossbar {text:"Time until next game",color:aqua}
execute if score stmc.handler event.timer.bg2 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg2 matches 1 run bossbar set delay.bossbar max 1500
execute if score stmc.handler event.timer.bg2 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg2 matches 1 run bossbar set delay.bossbar visible true

execute if score stmc.handler event.timer.bg3 matches 1 run bossbar add delay.bossbar {text:"Time until next game",color:aqua}
execute if score stmc.handler event.timer.bg3 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg3 matches 1 run bossbar set delay.bossbar max 7500
execute if score stmc.handler event.timer.bg3 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg3 matches 1 run bossbar set delay.bossbar visible true

execute if score stmc.handler event.timer.bg4 matches 1 run bossbar add delay.bossbar {text:"Time until next game",color:aqua}
execute if score stmc.handler event.timer.bg4 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg4 matches 1 run bossbar set delay.bossbar max 1500
execute if score stmc.handler event.timer.bg4 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg4 matches 1 run bossbar set delay.bossbar visible true

execute if score stmc.handler event.timer.bg5 matches 1 run bossbar add delay.bossbar {text:"Time until next game",color:aqua}
execute if score stmc.handler event.timer.bg5 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg5 matches 1 run bossbar set delay.bossbar max 1500
execute if score stmc.handler event.timer.bg5 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg5 matches 1 run bossbar set delay.bossbar visible true

execute if score stmc.handler event.timer.bg6 matches 1 run bossbar set delay.bossbar name {text:"Time until finale",color:aqua}
execute if score stmc.handler event.timer.bg6 matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.bg6 matches 1 run bossbar set delay.bossbar max 900
execute if score stmc.handler event.timer.bg6 matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.bg6 matches 1 run bossbar set delay.bossbar visible true

# update bossbars
execute if score stmc.handler event.stage matches 2 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg1
execute if score stmc.handler event.stage matches 4 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg2
execute if score stmc.handler event.stage matches 6 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg3
execute if score stmc.handler event.stage matches 8 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg4
execute if score stmc.handler event.stage matches 10 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg5
execute if score stmc.handler event.stage matches 12 store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.bg6

# bring players back to the lobby
execute in lobby:lobby if score stmc.handler event.timer.bg1 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg1 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg1 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg1 matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg2 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg2 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg2 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg2 matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg3 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg3 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg3 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg3 matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg4 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg4 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg4 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg4 matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg5 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg5 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg5 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg5 matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg6 matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bg6 matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.bg6 matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bg6 matches 1 run clear @a

# run functions
function lobby:points_update
function lobby:sidebar

# run ranking calculations
execute if score stmc.handler event.timer.bg1 matches 1 run function lobby:calculate_rankings
execute if score stmc.handler event.timer.bg2 matches 1 run function lobby:calculate_rankings
execute if score stmc.handler event.timer.bg3 matches 1 run function lobby:calculate_rankings
execute if score stmc.handler event.timer.bg4 matches 1 run function lobby:calculate_rankings
execute if score stmc.handler event.timer.bg5 matches 1 run function lobby:calculate_rankings
execute if score stmc.handler event.timer.bg6 matches 1 run function lobby:calculate_rankings

# announce rankings

# team rankings
execute if score stmc.handler event.timer.bg1 matches 100 run function lobby:team_announcements
execute if score stmc.handler event.timer.bg2 matches 100 run function lobby:team_announcements
execute if score stmc.handler event.timer.bg3 matches 100 run function lobby:team_announcements
execute if score stmc.handler event.timer.bg4 matches 100 run function lobby:team_announcements
execute if score stmc.handler event.timer.bg5 matches 100 run function lobby:team_announcements
execute if score stmc.handler event.timer.bg6 matches 100 run function lobby:team_announcements

# player rankings
execute if score stmc.handler event.timer.bg1 matches 200 run function lobby:player_announcements
execute if score stmc.handler event.timer.bg2 matches 200 run function lobby:player_announcements
execute if score stmc.handler event.timer.bg3 matches 200 run function lobby:player_announcements
execute if score stmc.handler event.timer.bg4 matches 200 run function lobby:player_announcements
execute if score stmc.handler event.timer.bg5 matches 200 run function lobby:player_announcements
execute if score stmc.handler event.timer.bg6 matches 200 run function lobby:player_announcements

# announce next game

execute if score stmc.handler event.timer.bg1 matches 300 run tellraw @a [{"text":"Teleporting to game in one minute!","color":"white","bold":true}]
execute if score stmc.handler event.timer.bg2 matches 300 run tellraw @a [{"text":"Teleporting to game in one minute!","color":"white","bold":true}]
execute if score stmc.handler event.timer.bg3 matches 300 run tellraw @a [{"text":"Break! Teleporting to game in six minutes!","color":"white","bold":true}]
execute if score stmc.handler event.timer.bg4 matches 300 run tellraw @a [{"text":"Teleporting to game in one minute!","color":"white","bold":true}]
execute if score stmc.handler event.timer.bg5 matches 300 run tellraw @a [{"text":"Teleporting to game in one minute!","color":"white","bold":true}]
execute if score stmc.handler event.timer.bg6 matches 300 run tellraw @a [{"text":"Teleporting to finale in thirty seconds!","color":"white","bold":true}]

execute if score stmc.handler event.timer.bg1 matches 1500 run title @a title {text:"Brawl",color:gold,bold:true}
execute if score stmc.handler event.timer.bg2 matches 1500 run title @a title {text:"Delve",color:light_purple,bold:true}
execute if score stmc.handler event.timer.bg3 matches 7500 run title @a title {text:"Race",color:green,bold:true}
execute if score stmc.handler event.timer.bg4 matches 1500 run title @a title {text:"Extract",color:red,bold:true}
execute if score stmc.handler event.timer.bg5 matches 1500 run title @a title {text:"Trials",color:dark_aqua,bold:true}
execute if score stmc.handler event.timer.bg6 matches 900 run title @a title {text:"Finale",color:white,bold:true}

# move to next game
execute if score stmc.handler event.timer.bg1 matches 1560 run scoreboard players add stmc.handler event.stage 1
execute if score stmc.handler event.timer.bg2 matches 1560 run scoreboard players add stmc.handler event.stage 1
execute if score stmc.handler event.timer.bg3 matches 7560 run scoreboard players add stmc.handler event.stage 1
execute if score stmc.handler event.timer.bg4 matches 1560 run scoreboard players add stmc.handler event.stage 1
execute if score stmc.handler event.timer.bg5 matches 1560 run scoreboard players add stmc.handler event.stage 1
execute if score stmc.handler event.timer.bg6 matches 960 run scoreboard players add stmc.handler event.stage 1

# reset bossbars
execute if score stmc.handler event.timer.bg1 matches 1560 run bossbar remove delay.bossbar
execute if score stmc.handler event.timer.bg2 matches 1560 run bossbar remove delay.bossbar
execute if score stmc.handler event.timer.bg3 matches 7560 run bossbar remove delay.bossbar
execute if score stmc.handler event.timer.bg4 matches 1560 run bossbar remove delay.bossbar
execute if score stmc.handler event.timer.bg5 matches 1560 run bossbar remove delay.bossbar
execute if score stmc.handler event.timer.bg6 matches 960 run bossbar remove delay.bossbar

# and reset timers
execute if score stmc.handler event.timer.bg1 matches 1560 run scoreboard players set stmc.handler event.timer.bg1 0
execute if score stmc.handler event.timer.bg2 matches 1560 run scoreboard players set stmc.handler event.timer.bg2 0
execute if score stmc.handler event.timer.bg3 matches 7560 run scoreboard players set stmc.handler event.timer.bg3 0
execute if score stmc.handler event.timer.bg4 matches 1560 run scoreboard players set stmc.handler event.timer.bg4 0
execute if score stmc.handler event.timer.bg5 matches 1560 run scoreboard players set stmc.handler event.timer.bg5 0
execute if score stmc.handler event.timer.bg6 matches 960 run scoreboard players set stmc.handler event.timer.bg6 0