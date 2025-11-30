# this function delivers the explanation of how mine will work

# every 8 seconds, each blurb will be told to the players
# and players will be teleported somewhere for an appropriate visual

# blurb #1
execute if score mine.handler mine.timer.explanation matches 1 run title @a title {text:"MINE",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 1 run gamemode spectator @a
execute in mine:lobby if score mine.handler mine.timer.explanation matches 1 run teleport @a -4 100 0 -90 0
execute if score mine.handler mine.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 1 run tellraw @a {text:"Mine is a team coordination game.",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 1 run tellraw @a {text:"Your objective is to mine as many diamonds ores as possible while avoiding dangerous mobs.",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in mine:lobby if score mine.handler mine.timer.explanation matches 160 run teleport @a 4 100 14 -135 0
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:"This is the map you will traverse.",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:"It is easy to get lost, so make sure to stay close!",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:"The map is the exact same for each team, though you will each play on your own copies.",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in mine:lobby if score mine.handler mine.timer.explanation matches 320 run teleport @a 21 100 24 45 0
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:"There will be three rounds, each featuring a different featured mob.",color:gray}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:"Before each round you will vote on which mob to play.",color:gray}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:"You will play each mob's round exactly once.",color:gray}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:"When you spawn, before each round, you will punch a kit to receive useful tools. These tools differ between rounds.",color:gray}
execute if score mine.handler mine.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in mine:lobby if score mine.handler mine.timer.explanation matches 480 run teleport @a 43 100 5 -155 0
execute if score mine.handler mine.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 480 run tellraw @a [{text:"You will earn +",color:"gray"},{text:"1",color:"red"},{text:" point per diamond ore you mine.",color:"gray"}]
execute if score mine.handler mine.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 480 run tellraw @a [{text:"All points will be split among the team.",color:"gray"}]
execute if score mine.handler mine.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute if score mine.handler mine.timer.explanation matches 639 run gamemode adventure @a
execute if score mine.handler mine.timer.explanation matches 639 run gamemode spectator @a[team=SPECTATORS]
execute in mine:lobby if score mine.handler mine.timer.explanation matches 639 run teleport @a 0 101 0 0 0
execute if score mine.handler mine.timer.explanation matches 639 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 639 run tellraw @a {text:"The first vote begins soon.",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 639 run tellraw @a {text:" "}
execute if score mine.handler mine.timer.explanation matches 639 run tellraw @a {text:"Good luck!",color:"gray"}
execute if score mine.handler mine.timer.explanation matches 639 run tellraw @a {text:" "}