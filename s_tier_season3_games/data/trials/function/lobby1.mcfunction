# first lobby instance of trials game

# explains how the trials game works

# then randomly chooses game 1

# <===== EXPLANATION =====>

# blurb #1
execute if score tr.handler tr.timer.lobby1 matches 1200 run title @a title {text:"TRIALS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:"Trials is a series of four short minigames.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:"Each game will test your skills in different ways.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1200 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #2

execute if score tr.handler tr.timer.lobby1 matches 1360 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score tr.handler tr.timer.lobby1 matches 1360 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1360 run tellraw @a {text:"Games will be selected in a random order.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1360 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1360 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #3

execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:"The first game will be selected in 10 seconds.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 1520 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# <===== RANDOMLY CHOOSE GAME 1 =====>

execute if score tr.handler tr.timer.lobby1 matches 2120 store result score tr.handler tr.stage.game1 run random value 1..4

# announce game chosen
execute if score tr.handler tr.timer.lobby1 matches 2120 if score tr.handler tr.stage.game1 matches 1 run title @a title {"text":"DISCO",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 2120 if score tr.handler tr.stage.game1 matches 2 run title @a title {"text":"REPLICATE",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 2120 if score tr.handler tr.stage.game1 matches 3 run title @a title {"text":"SPLEEF",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 2120 if score tr.handler tr.stage.game1 matches 4 run title @a title {"text":"TOWERS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 2121 run title @a subtitle {"text":"Teleporting in 5 seconds.","color":"dark_aqua"}

# teleport to game 1
execute if score tr.handler tr.timer.lobby1 matches 2220 run scoreboard players set tr.handler tr.stage 1