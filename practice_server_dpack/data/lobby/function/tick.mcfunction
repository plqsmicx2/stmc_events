# update lobby sidebar
function lobby:sidebar

# interaction check
execute in lobby:lobby as @e[tag=race] on attacker run function race:teleport
execute in lobby:lobby as @e[tag=extract] on attacker run function extract:teleport
execute in lobby:lobby as @e[tag=trials] on attacker run function trials:teleport
execute in lobby:lobby as @e[type=interaction] run data remove entity @s attack