# function handling everything that needs to happen between games

# increment timer
scoreboard players add stmc.handler event.timer.bgActive 1

# resets
execute if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgTickCount 0
execute if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgSecs 18
execute if score stmc.handler event.stage matches 2 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 3
execute if score stmc.handler event.stage matches 4 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 2
execute if score stmc.handler event.stage matches 6 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 8
execute if score stmc.handler event.stage matches 8 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 2
execute if score stmc.handler event.stage matches 10 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 2
execute if score stmc.handler event.stage matches 12 if score stmc.handler event.timer.bgActive matches 1 run scoreboard players set stmc.handler event.timer.bgMins 1

# seconds timer
scoreboard players add stmc.handler event.timer.bgTickCount 1

execute if score stmc.handler event.timer.bgTickCount matches 20.. run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score stmc.handler event.timer.bgTickCount matches 20.. run scoreboard players set stmc.handler event.timer.bgTickCount 0

execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players set stmc.handler event.timer.bgSecs 59

# calculate seconds

# bring players back to the lobby
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run spawnpoint @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run gamemode adventure @a
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run clear @a
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.bgActive matches 1 run effect give @a instant_health 1 110 true

# run functions
function lobby:points_update
function lobby:sidebar

# run ranking calculations
execute if score stmc.handler event.timer.bgActive matches 1 run function lobby:calculate_rankings

# announce rankings

# team rankings
execute if score stmc.handler event.timer.bgActive matches 100 run function lobby:team_announcements

# player rankings
execute if score stmc.handler event.timer.bgActive matches 200 run function lobby:player_announcements

# announce next game

execute if score stmc.handler event.stage matches 2 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Teleporting to game in two minutes!","color":"white","bold":true}]
execute if score stmc.handler event.stage matches 4 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Teleporting to game in two minutes!","color":"white","bold":true}]
execute if score stmc.handler event.stage matches 6 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Break! Teleporting to game in eight minutes!","color":"white","bold":true}]
execute if score stmc.handler event.stage matches 8 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Teleporting to game in two minute!","color":"white","bold":true}]
execute if score stmc.handler event.stage matches 10 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Teleporting to game in two minutes!","color":"white","bold":true}]
execute if score stmc.handler event.stage matches 12 if score stmc.handler event.timer.bgActive matches 300 run tellraw @a [{"text":"Teleporting to finale in one minute!","color":"white","bold":true}]

execute if score stmc.handler event.stage matches 2 if score stmc.handler event.timer.bgActive matches 3900 run title @a title {text:"Brawl",color:gold,bold:true}
execute if score stmc.handler event.stage matches 4 if score stmc.handler event.timer.bgActive matches 2700 run title @a title {text:"Delve",color:light_purple,bold:true}
execute if score stmc.handler event.stage matches 6 if score stmc.handler event.timer.bgActive matches 9900 run title @a title {text:"Race",color:green,bold:true}
execute if score stmc.handler event.stage matches 8 if score stmc.handler event.timer.bgActive matches 2700 run title @a title {text:"Extract",color:red,bold:true}
execute if score stmc.handler event.stage matches 10 if score stmc.handler event.timer.bgActive matches 2700 run title @a title {text:"Trials",color:dark_aqua,bold:true}
execute if score stmc.handler event.stage matches 12 if score stmc.handler event.timer.bgActive matches 1500 run title @a title {text:"Finale",color:white,bold:true}

# move to next game
execute if score stmc.handler event.stage matches 2 if score stmc.handler event.timer.bgActive matches 3960.. run scoreboard players set stmc.handler event.stage 3
execute if score stmc.handler event.stage matches 4 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.stage 5
execute if score stmc.handler event.stage matches 6 if score stmc.handler event.timer.bgActive matches 9960.. run function race:start
execute if score stmc.handler event.stage matches 8 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.stage 9
execute if score stmc.handler event.stage matches 10 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.stage 11
execute if score stmc.handler event.stage matches 12 if score stmc.handler event.timer.bgActive matches 1560.. run scoreboard players set stmc.handler event.stage 13

# and reset timers
execute if score stmc.handler event.stage matches 3 if score stmc.handler event.timer.bgActive matches 3960.. run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.stage matches 5 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.stage matches 7 if score stmc.handler event.timer.bgActive matches 9960.. run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.stage matches 9 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.stage matches 11 if score stmc.handler event.timer.bgActive matches 2760.. run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.stage matches 13 if score stmc.handler event.timer.bgActive matches 1560.. run scoreboard players set stmc.handler event.timer.bgActive 0