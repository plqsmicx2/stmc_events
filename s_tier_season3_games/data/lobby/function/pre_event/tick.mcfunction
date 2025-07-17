# tick function for lobby before event

# increment timer
execute if score stmc.handler pre.stage matches 1 run scoreboard players add pre.handler pre.timer 1

# run load if it doesn't exist
execute unless score stmc.handler pre.stage matches 0.. run function lobby:pre_event/load

# teleport players to lobby
execute as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] in lobby:lobby run teleport @s 0 101 0

# force gamemode
gamemode survival @a

# announce event start
execute if score pre.handler pre.timer matches 5 run title @a title {"text":"STMC Invitational", "color":"green", "bold":true}