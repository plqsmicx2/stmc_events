# tick function for lobby before event

# increment timer
scoreboard players add stmc.handler event.timer.pre_game 1

# set & update bossbar
execute if score stmc.handler event.timer.pre_game matches 1 run bossbar add delay.bossbar {text:"Time until first game",color:aqua}
execute if score stmc.handler event.timer.pre_game matches 1 run bossbar set delay.bossbar color blue
execute if score stmc.handler event.timer.pre_game matches 1 run bossbar set delay.bossbar max 1500
execute if score stmc.handler event.timer.pre_game matches 1 run bossbar set delay.bossbar players @a
execute if score stmc.handler event.timer.pre_game matches 1 run bossbar set delay.bossbar visible true
execute store result bossbar delay.bossbar value run scoreboard players get stmc.handler event.timer.pre_game

# run load
execute if score stmc.handler event.timer.pre_game matches 1 run function lobby:pre_event/load

# run functions
function lobby:points_update
function lobby:sidebar

# teleport players to lobby
execute as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] in lobby:lobby run teleport @s 0 101 0

# announce event start
execute if score stmc.handler event.timer.pre_game matches 5 run title @a title {"text":"STMC Invitational", "color":"green", "bold":true}

# announce next game
execute if score stmc.handler event.timer.pre_game matches 1500 run title @a title {"text":"Race", "color":"green"}

# move to first game
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players add stmc.handler event.stage 1

# reset bossbar
execute if score stmc.handler event.timer.pre_game matches 1560 run bossbar remove delay.bossbar

# reset timer
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.pre_game 0