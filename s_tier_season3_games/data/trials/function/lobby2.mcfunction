# second lobby instance of trials game

# timer update
execute if score tr.handler tr.timer.lobby2 matches 1 run scoreboard players set tr.handler tr.timer.tickCount 0
execute if score tr.handler tr.timer.lobby2 matches 1 run scoreboard players set tr.handler tr.timer.secs 40
execute if score tr.handler tr.timer.lobby2 matches 1 run scoreboard players set tr.handler tr.timer.mins 0

scoreboard players add tr.handler tr.timer.tickCount 1

execute if score tr.handler tr.timer.tickCount matches 20 run scoreboard players remove tr.handler tr.timer.secs 1
execute if score tr.handler tr.timer.tickCount matches 20 run scoreboard players set tr.handler tr.timer.tickCount 0

execute if score tr.handler tr.timer.secs matches 60 run scoreboard players remove tr.handler tr.timer.mins 1
execute if score tr.handler tr.timer.secs matches 60 run scoreboard players set tr.handler tr.timer.secs 59

# randomly chooses game 2

# reset
execute if score tr.handler tr.timer.lobby2 matches 2 run clear @a
execute if score tr.handler tr.timer.lobby2 matches 2 run effect clear @a
execute if score tr.handler tr.timer.lobby2 matches 2 run effect give @a instant_health 1 100 true
execute if score tr.handler tr.timer.lobby2 matches 2 run effect give @a resistance infinite 10 true
execute if score tr.handler tr.timer.lobby2 matches 2 run gamemode adventure @a

execute in trials:lobby if score tr.handler tr.timer.lobby2 matches 2 run tp @a 0 100 0

execute in trials:lobby if score tr.handler tr.timer.lobby2 matches 100 run tellraw @a {"text":"Choosing game 2 in 20 seconds.", "color":"aqua"}

# <===== RANDOMLY CHOOSE GAME 2 =====>

# random between 1 & 3
execute if score tr.handler tr.timer.lobby2 matches 700 store result score tr.handler tr.stage.game2 run random value 1..3

# and fix the random value if it needs it (depending on game 1)
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game1 matches 1 run scoreboard players add tr.handler tr.stage.game2 1
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game1 matches 2 if score tr.handler tr.stage.game2 matches 2.. run scoreboard players add tr.handler tr.stage.game2 1
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game1 matches 3 if score tr.handler tr.stage.game2 matches 3.. run scoreboard players add tr.handler tr.stage.game2 1

# announce game chosen
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game2 matches 1 run title @a title {"text":"DISCO",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game2 matches 2 run title @a title {"text":"REPLICATE",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game2 matches 3 run title @a title {"text":"SPLEEF",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby2 matches 700 if score tr.handler tr.stage.game2 matches 4 run title @a title {"text":"TOWERS",color:"dark_aqua"}
execute if score tr.handler tr.timer.lobby2 matches 701 run title @a subtitle {"text":"Teleporting in 5 seconds.","color":"dark_aqua"}

# teleport to game 2
execute if score tr.handler tr.timer.lobby2 matches 800 run scoreboard players set tr.handler tr.stage 3