# second lobby instance of trials game

# randomly chooses game 4

gamemode survival @a

execute in trials:lobby if score tr.handler tr.timer.lobby4 matches 2 run tp @a 0 100 0

execute in trials:lobby if score tr.handler tr.timer.lobby4 matches 100 run tellraw @a {"text":"Choosing game 4 in 10 seconds.", "color":"aqua"}

# <===== RANDOMLY CHOOSE GAME 2 =====>

# set the value to whatever hasn't been played
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 4
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 4
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 4
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 4
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 4
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 4

execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 3
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 3
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 3
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 3
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 3
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 3

execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 2
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 1 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 2
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 2
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 2
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 1 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 2
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 1 run scoreboard players set tr.handler tr.stage.game4 2

execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 1
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 1
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 4 run scoreboard players set tr.handler tr.stage.game4 1
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 4 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 1
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 2 if score tr.handler tr.stage.game3 matches 3 run scoreboard players set tr.handler tr.stage.game4 1
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game1 matches 4 if score tr.handler tr.stage.game2 matches 3 if score tr.handler tr.stage.game3 matches 2 run scoreboard players set tr.handler tr.stage.game4 1

# announce game chosen
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game4 matches 1 run title @a title {"text":"DISCO",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game4 matches 2 run title @a title {"text":"REPLICATE",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game4 matches 3 run title @a title {"text":"SPLEEF",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby4 matches 700 if score tr.handler tr.stage.game4 matches 4 run title @a title {"text":"TOWERS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby4 matches 701 run title @a subtitle {"text":"Teleporting in 5 seconds.","color":"dark_aqua"}

# teleport to game 2
execute if score tr.handler tr.timer.lobby4 matches 800 run scoreboard players set tr.handler tr.stage 7