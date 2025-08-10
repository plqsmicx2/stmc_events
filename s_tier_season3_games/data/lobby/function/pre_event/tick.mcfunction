# tick function for lobby before event

# increment timer
scoreboard players add stmc.handler event.timer.pre_game 1

# seconds reset
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgTickCount 0
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgSecs 18
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgMins 2

# seconds timer
scoreboard players add stmc.handler event.timer.bgTickCount 1

execute if score stmc.handler event.timer.bgTickCount matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score stmc.handler event.timer.bgTickCount matches 20 run scoreboard players set stmc.handler event.timer.bgTickCount 0

execute if score stmc.handler event.timer.bgSecs matches 0 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches 0 run scoreboard players set stmc.handler event.timer.bgSecs 60

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
execute if score stmc.handler event.timer.pre_game matches 1500 run title @a title {"text":"Solve", "color":"yellow"}

# move to first game
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players add stmc.handler event.stage 1

# reset timer
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.pre_game 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgSecs 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgMins 2