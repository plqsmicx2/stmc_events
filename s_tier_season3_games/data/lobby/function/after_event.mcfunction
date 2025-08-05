# function handling everything that needs to happen after the event

# increment timer
scoreboard players add stmc.handler event.timer.post_game 1

# bring players back to the lobby
execute in lobby:lobby if score stmc.handler event.timer.post_game matches 1 run teleport @a 0 101 0
execute in lobby:lobby if score stmc.handler event.timer.post_game matches 1 run gamemode survival @a
execute in lobby:lobby if score stmc.handler event.timer.post_game matches 1 run effect clear @a
execute in lobby:lobby if score stmc.handler event.timer.post_game matches 1 run clear @a

# run functions
function lobby:points_update
function lobby:sidebar

# run ranking calculations
execute if score stmc.handler event.timer.post_game matches 1 run function lobby:calculate_rankings

# announce winner
# TODO
execute if score stmc.handler event.timer.post_game matches 1 if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {"text":"Red Raccoons win!","color":"red"}
execute if score stmc.handler event.timer.post_game matches 1 if score team.OrangeOtters stats.winningTeam matches 1 run title @a title {"text":"Orange Otters win!","color":"gold"}
execute if score stmc.handler event.timer.post_game matches 1 if score team.PinkPikas stats.winningTeam matches 1 run title @a title {"text":"Red Raccoons win!","color":"red"}
execute if score stmc.handler event.timer.post_game matches 1 if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {"text":"Red Raccoons win!","color":"red"}
execute if score stmc.handler event.timer.post_game matches 1 if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {"text":"Red Raccoons win!","color":"red"}
execute if score stmc.handler event.timer.post_game matches 1 if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {"text":"Red Raccoons win!","color":"red"}