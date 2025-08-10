# first lobby instance of trials game

# explains how the trials game works

# then randomly chooses game 1

# timer update
execute if score tr.handler tr.timer.lobby1 matches 1 run scoreboard players set tr.handler tr.timer.tickCount 0
execute if score tr.handler tr.timer.lobby1 matches 1 run scoreboard players set tr.handler tr.timer.secs 52
execute if score tr.handler tr.timer.lobby1 matches 1 run scoreboard players set tr.handler tr.timer.mins 0

scoreboard players add tr.handler tr.timer.tickCount 1

execute if score tr.handler tr.timer.tickCount matches 20 run scoreboard players remove tr.handler tr.timer.secs 1
execute if score tr.handler tr.timer.tickCount matches 20 run scoreboard players set tr.handler tr.timer.tickCount 0

execute if score tr.handler tr.timer.secs matches 60 run scoreboard players remove tr.handler tr.timer.mins 1
execute if score tr.handler tr.timer.secs matches 60 run scoreboard players set tr.handler tr.timer.secs 59

# <===== EXPLANATION =====>

# reset
execute if score tr.handler tr.timer.lobby1 matches 2 run clear @a
execute if score tr.handler tr.timer.lobby1 matches 2 run effect clear @a
execute if score tr.handler tr.timer.lobby1 matches 2 run effect give @a instant_health 1 100 true
execute if score tr.handler tr.timer.lobby1 matches 2 run effect give @a resistance infinite 10 true
execute if score tr.handler tr.timer.lobby1 matches 2 run gamemode adventure @a

# blurb #1
execute if score tr.handler tr.timer.lobby1 matches 400 run title @a title {text:"TRIALS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 400 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 400 run tellraw @a {text:"Trials is a series of four short minigames.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 400 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 400 run tellraw @a {text:"Each game will test your skills in different ways.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 400 run tellraw @a {text:" "}

# blurb #2
execute if score tr.handler tr.timer.lobby1 matches 560 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 560 run tellraw @a {text:"Games will be selected in a random order.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 560 run tellraw @a {text:" "}

# blurb #3
execute if score tr.handler tr.timer.lobby1 matches 720 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 720 run tellraw @a {text:"The first game will be selected in 10 seconds.",color:"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 720 run tellraw @a {text:" "}
execute if score tr.handler tr.timer.lobby1 matches 720 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score tr.handler tr.timer.lobby1 matches 720 run tellraw @a {text:" "}

# <===== RANDOMLY CHOOSE GAME 1 =====>

execute if score tr.handler tr.timer.lobby1 matches 920 store result score tr.handler tr.stage.game1 run random value 1..4

# announce game chosen
execute if score tr.handler tr.timer.lobby1 matches 920 if score tr.handler tr.stage.game1 matches 1 run title @a title {"text":"DISCO",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 920 if score tr.handler tr.stage.game1 matches 2 run title @a title {"text":"REPLICATE",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 920 if score tr.handler tr.stage.game1 matches 3 run title @a title {"text":"SPLEEF",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 920 if score tr.handler tr.stage.game1 matches 4 run title @a title {"text":"TOWERS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby1 matches 921 run title @a subtitle {"text":"Teleporting in 5 seconds.","color":"dark_aqua"}

# teleport to game 1
execute if score tr.handler tr.timer.lobby1 matches 1020 run scoreboard players set tr.handler tr.stage 1