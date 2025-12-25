# this function delivers the explanation of how ascend will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score ascend.handler ascend.timer.explanation matches 1 run gamemode spectator @a
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 1 run tp @a 0 103 -5 0 10
execute if score ascend.handler ascend.timer.explanation matches 1 run title @a title {text:"ASCEND",color:"dark_aqua"}
execute if score ascend.handler ascend.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 1 run tellraw @a {text:"Ascend is a pure parkour game.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 1 run tellraw @a {text:"You will have 4 minutes to complete as many rooms as possible.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 160 run tp @a 6 132 6 135 0
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:"When the game begins, you will be teleported to a room with an armor stand and six paths.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:"To complete a room, you must fill the armor stand on the center platform.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:"Each of the final two rooms will require you to complete two armor stands.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 320 run tp @a -1 152.5 8 23 0
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:"At the end of each path is a chest or other container with an armor piece.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:"The signs at the entrance of each path will inform you of which armor piece that path holds.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:"You may collect extra armor pieces. They will carry over between rooms.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 480 run tp @a 3 171.5 5 -10 0
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a {text:"Each path is color coded by it's difficulty.",color:"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a [{text:"Lime",color:green},{text:": easy",color:"aqua"}]
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a [{text:"Yellow",color:yellow},{text:": medium",color:"aqua"}]
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a [{text:"Orange",color:gold},{text:": hard",color:"aqua"}]
execute if score ascend.handler ascend.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 640 run tp @a -22 197 -10 -125 25
execute if score ascend.handler ascend.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 640 run tellraw @a [{text:"You will earn +","color":"aqua"},{text:"8",color:red},{text:" points per room you complete.","color":"aqua"}]
execute if score ascend.handler ascend.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 640 run tellraw @a [{text:"Although each room is not timed, if you are the first team to complete all six, you will earn a bonus +","color":"aqua"},{text:"10",color:red},{text:" points.","color":"aqua"}]
execute if score ascend.handler ascend.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 800 run tp @a 0 78 0 180 0
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 800 run gamemode adventure @a
execute in stmc:trials/ascend if score ascend.handler ascend.timer.explanation matches 800 run gamemode spectator @a[team=SPECTATORS]
execute if score ascend.handler ascend.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 800 run tellraw @a {text:"Good luck!","color":"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 800 run tellraw @a {text:" "}
execute if score ascend.handler ascend.timer.explanation matches 800 run tellraw @a {text:"The game starts in 20 seconds!","color":"aqua"}
execute if score ascend.handler ascend.timer.explanation matches 800 run tellraw @a {text:" "}