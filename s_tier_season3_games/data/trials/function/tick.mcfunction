# main thread handler for trials [TRIALS]

# first, we call our load function if this is the first time we're here
execute unless score tr.handler tr.stage matches 0.. run function trials:load

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

# lobby 1
execute if score tr.handler tr.stage matches 0 run function trials:lobby1

# game 1
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 1 run function trials:disco/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 2 run function trials:replicate/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 3 run function trials:spleef/tick
execute if score tr.handler tr.stage matches 1 if score tr.handler tr.stage.game1 matches 4 run function trials:towers/tick

# lobby 2
execute if score tr.handler tr.stage matches 2 run function trials:lobby1

# game 2
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game1 matches 1 run function trials:disco/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game1 matches 2 run function trials:replicate/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game1 matches 3 run function trials:spleef/tick
execute if score tr.handler tr.stage matches 3 if score tr.handler tr.stage.game1 matches 4 run function trials:towers/tick

# lobby 3
execute if score tr.handler tr.stage matches 4 run function trials:lobby1

# game 3
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game1 matches 1 run function trials:disco/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game1 matches 2 run function trials:replicate/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game1 matches 3 run function trials:spleef/tick
execute if score tr.handler tr.stage matches 5 if score tr.handler tr.stage.game1 matches 4 run function trials:towers/tick

# lobby 4
execute if score tr.handler tr.stage matches 6 run function trials:lobby1

# game 4
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game1 matches 1 run function trials:disco/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game1 matches 2 run function trials:replicate/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game1 matches 3 run function trials:spleef/tick
execute if score tr.handler tr.stage matches 7 if score tr.handler tr.stage.game1 matches 4 run function trials:towers/tick