# tick function for lobbies between games (and the first one)

# run every tick
function stmc:lobby/between/sidebar with storage stmc:global

# update timer
scoreboard players add lobby.handler lobby.timer 1

#reset loot chests
execute in stmc:lobby/main if score lobby.handler lobby.timer matches 4 run function stmc:lobby/chests

#give random villager items
execute as @a run function stmc:lobby/villager_items

# check for invested tokens
execute as @a store result score @s event.voting.investedTokensTemp run clear @s paper[custom_data={invest: 1b}] 0
execute as @a run scoreboard players operation @s event.voting.investedTokens += @s event.voting.investedTokensTemp
scoreboard players set @a event.voting.investedTokensTemp 0
clear @a paper[custom_data={invest: 1b}]

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function stmc:lobby/between/collect_stage with storage stmc:global

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function stmc:lobby/between/voting/tick