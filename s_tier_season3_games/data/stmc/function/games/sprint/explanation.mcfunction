# this function delivers the explanation of how sprint will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score sprint.handler sprint.timer.explanation matches 1 run gamemode spectator @a
execute if score sprint.handler sprint.timer.explanation matches 1 run tp @a -20 110 200 90 60
execute if score sprint.handler sprint.timer.explanation matches 1 run title @a title {text:"SPRINT",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 1 run tellraw @a {text:"Sprint is a parkour-focused game.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 1 run tellraw @a {text:"Your objective is to progress through four sections as quickly as possible.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score sprint.handler sprint.timer.explanation matches 100 run tp @a -20 110 400 90 60
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:"You will be tasked with completing 9 parkour levels, 6 dropper levels,",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:"4 elytra courses, and 4 spear courses.,",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:"The majority of your points will come from what you complete.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:"But you will earn additional points for completing with time left.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score sprint.handler sprint.timer.explanation matches 200 run tp @a -20 110 600 90 60
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:"All players will be allowed to Skip any level they need.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:"But use it sparingly.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:"You will not get any points for levels you skip, and you may not return to passed levels.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #4
execute if score sprint.handler sprint.timer.explanation matches 300 run scoreboard players set sprint.handler sprint.stage 2
execute if score sprint.handler sprint.timer.explanation matches 300 run gamemode adventure @a
execute if score sprint.handler sprint.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score sprint.handler sprint.timer.explanation matches 300 run tp @a -1 102 0 90 0
execute if score sprint.handler sprint.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 300 run tellraw @a {text:"The game begins in about 10 seconds.",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score sprint.handler sprint.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:"dark_green"}
execute if score sprint.handler sprint.timer.explanation matches 300 run tellraw @a {text:" "}