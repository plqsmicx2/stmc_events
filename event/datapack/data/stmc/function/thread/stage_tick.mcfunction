# function to determine which subthread to run
# all even stages run a lobby thread
# all odd stages run a game thread

# SET ACTIVE GAME
# -1: Lobby
# 0: Race
# 1: Solve
# 2: Trials
# 3: Delve
# 4: Mine
# 5: Extract
# 6: Blitz
# 7: Brawl
# 8: Collect
# 9: Sprint
# 10: Dungeons
# 11: Arena
# 12: Mystery
# 13: Zombies

# Default to lobby
scoreboard players set stmc.handler stats.activeGame -1

# Games:
execute if score stmc.handler event.stage matches 1 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game1
execute if score stmc.handler event.stage matches 3 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game2
execute if score stmc.handler event.stage matches 5 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game3
execute if score stmc.handler event.stage matches 7 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game4
execute if score stmc.handler event.stage matches 9 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game5
execute if score stmc.handler event.stage matches 11 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game6
execute if score stmc.handler event.stage matches 13 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game7
execute if score stmc.handler event.stage matches 15 run \
        scoreboard players operation stmc.handler stats.activeGame = stmc.handler stats.game8

# Final Lobby:
execute if score stmc.handler event.stage matches 16 run \
        scoreboard players set stmc.handler stats.activeGame -2

# Finale:
execute if score stmc.handler event.stage matches 17 run \
        scoreboard players set stmc.handler stats.activeGame -3

# Post Lobby:
execute if score stmc.handler event.stage matches 18 run \
        scoreboard players set stmc.handler stats.activeGame -4

# <===== LOBBY =====>

execute if score stmc.handler stats.activeGame matches -1 run function stmc:lobby/between/tick

# <===== GAME =====>

execute if score stmc.handler stats.activeGame matches 0 run function stmc:games/race/tick
execute if score stmc.handler stats.activeGame matches 1 run function stmc:games/solve/tick
execute if score stmc.handler stats.activeGame matches 2 run function stmc:games/trials/tick
execute if score stmc.handler stats.activeGame matches 3 run function stmc:games/delve/tick
execute if score stmc.handler stats.activeGame matches 4 run function stmc:games/mine/tick
execute if score stmc.handler stats.activeGame matches 5 run function stmc:games/extract/tick
execute if score stmc.handler stats.activeGame matches 6 run function stmc:games/blitz/tick
execute if score stmc.handler stats.activeGame matches 7 run function stmc:games/brawl/tick
execute if score stmc.handler stats.activeGame matches 8 run function stmc:games/collect/tick
execute if score stmc.handler stats.activeGame matches 9 run function stmc:games/sprint/tick
execute if score stmc.handler stats.activeGame matches 10 run function stmc:games/dungeons/tick
execute if score stmc.handler stats.activeGame matches 11 run function stmc:games/arena/tick
execute if score stmc.handler stats.activeGame matches 12 run function stmc:games/mystery/tick
execute if score stmc.handler stats.activeGame matches 13 run function stmc:games/zombies/tick

# <===== FINAL LOBBY =====>

execute if score stmc.handler stats.activeGame matches -2 run function stmc:lobby/final/tick

# <===== FINALE =====>

execute if score stmc.handler stats.activeGame matches -3 run function stmc:games/finale/tick

# <===== POST LOBBY =====>

execute if score stmc.handler stats.activeGame matches -4 run function stmc:lobby/post/tick
