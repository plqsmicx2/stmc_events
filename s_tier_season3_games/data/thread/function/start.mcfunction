# starts the game sequence

scoreboard players set stmc.handler event.stage 0
scoreboard players set stmc.handler event.paused 0

# record # of players in the game
scoreboard players set stmc.handler event.players 0
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players add stmc.handler event.players 1

function lobby:between/start