# main thread handler for trials [TRIALS]

# stage key:
# 0- lobby #1: explains how trials works, randomly chooses game 1, then teleports us there
# 1- game 1: exists as its own thread with tick & load; runs the whole game from start to finish
# 2- lobby #2: randomly chooses game 2, then teleports us there
# 3- game 2: copy of game 1
# 4- lobby #3: randomly chooses game 3, then teleports us there
# 5- game 3: copy of game 2
# 6- lobby #4: randomly chooses game 4, then teleports us there
# 7- game 4: copy of game 3 with a score announcement & /reset function

# <===== run the lobbies & games =====>

# run automatic pause
execute if score tr.handler tr.stage matches 0 run function stmc:thread/helper/automatic_pause
execute if score tr.handler tr.stage matches 2 run function stmc:thread/helper/automatic_pause
execute if score tr.handler tr.stage matches 4 run function stmc:thread/helper/automatic_pause
execute if score tr.handler tr.stage matches 6 run function stmc:thread/helper/automatic_pause
execute if score tr.handler tr.stage matches 8 run function stmc:thread/helper/automatic_pause

# lobby 1
execute if score tr.handler tr.stage matches 0 run scoreboard players add tr.handler tr.timer.lobby1 1
execute if score tr.handler tr.stage matches 0 run function stmc:games/trials/lobby1

# game 1
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 1 run function stmc:games/trials/scramble/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 2 run function stmc:games/trials/replicate/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 3 run function stmc:games/trials/spleef/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 4 run function stmc:games/trials/towers/tick

# lobby 2
execute if score tr.handler tr.stage matches 2 run scoreboard players add tr.handler tr.timer.lobby2 1
execute if score tr.handler tr.stage matches 2 run function stmc:games/trials/lobby2

# game 2
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game2 matches 1 run function stmc:games/trials/scramble/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game2 matches 2 run function stmc:games/trials/replicate/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game2 matches 3 run function stmc:games/trials/spleef/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game2 matches 4 run function stmc:games/trials/towers/tick

# lobby 3
execute if score tr.handler tr.stage matches 4 run scoreboard players add tr.handler tr.timer.lobby3 1
execute if score tr.handler tr.stage matches 4 run function stmc:games/trials/lobby3

# game 3
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game3 matches 1 run function stmc:games/trials/scramble/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game3 matches 2 run function stmc:games/trials/replicate/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game3 matches 3 run function stmc:games/trials/spleef/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game3 matches 4 run function stmc:games/trials/towers/tick

# lobby 4
execute if score tr.handler tr.stage matches 6 run scoreboard players add tr.handler tr.timer.lobby4 1
execute if score tr.handler tr.stage matches 6 run function stmc:games/trials/lobby4

# game 4
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game4 matches 1 run function stmc:games/trials/scramble/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game4 matches 2 run function stmc:games/trials/replicate/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game4 matches 3 run function stmc:games/trials/spleef/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game4 matches 4 run function stmc:games/trials/towers/tick

# points announcement
execute if score tr.handler tr.stage matches 8 run scoreboard players add tr.handler tr.timer.pointsAnnouncement 1
execute if score tr.handler tr.timer.pointsAnnouncement matches 100 run function stmc:games/trials/player_announcements
execute if score tr.handler tr.timer.pointsAnnouncement matches 300 run function stmc:games/trials/team_announcements with storage stmc:global
execute if score tr.handler tr.timer.pointsAnnouncement matches 401.. run scoreboard players set tr.handler tr.stage 9

# send us back to main lobby
execute if score tr.handler tr.stage matches 9 run function stmc:games/trials/reset