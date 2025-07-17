# this function delivers the explanation of how DELVE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score delve.handler delve.timer.explanation matches 1 run title @a title {text:"DELVE",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:"Delve is a dungeon exploration game.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:"Your objective is to obtain as many ores as possible.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #2
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:"Down each pathway, you will find various pots and ores that will give diamonds, copper, coal, arrows, or other useful items.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:"Some pots will spawn mobs that then drop items when killed.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #3
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"However, you will be on a time limit.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"You must keep the furnace in the middle burning.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"Each raw copper takes exactly 10 seconds to smelt.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"When the game begins, 30 copper will automatically start the furnace.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"To explore through the dungeon, you will need to open different gates.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"Gates may be opened by right clicking the associated bulb with an axe.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"For instance, right clicking an oxidized bulb will open oxidized gates.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"Deepslate gates can only be opened by shooting vexes that spawn.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #5
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:"Points are tallied automatically as the game progresses.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:"Items may be kept either in the furnace or in players' inventories, except coal, which will only count in the furnace.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:"Each item is worth the following:",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a [{text:"Diamond: +",color:"light_purple"},{text:"30",color:"dark_red"},{text:" points",color:"light_purple"}]
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a [{text:"Copper Ingot: +",color:"light_purple"},{text:"5",color:"dark_red"},{text:" points",color:"light_purple"}]
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a [{text:"Coal: +",color:"light_purple"},{text:"1",color:"dark_red"},{text:" point",color:"light_purple"}]
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #6
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:"The game begins in about 40 seconds.",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:"All of your items are located in the central barrel!",color:"light_purple"}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score delve.handler delve.timer.explanation matches 799 run tellraw @a {text:"---------------------------------------------------",color:"gray"}