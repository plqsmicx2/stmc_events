# this function delivers the explanation of how BRAWL will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score race.handler race.timer.explanation matches 1 run gamemode spectator @a
execute in race:race if score race.handler race.timer.explanation matches 1 run tp @a -13 111 25 -180 0
execute if score race.handler race.timer.explanation matches 1 run title @a title {text:"RACE",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:"Race is a simple game.",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:"Your objective is to complete four laps in the least time possible.",color:"green"}
execute if score race.handler race.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in race:race if score race.handler race.timer.explanation matches 160 run tp @a 18 110 -36 120 12
execute if score race.handler race.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 160 run tellraw @a {text:"To help you move faster, there are skips indicated by red wool.",color:"green"}
execute if score race.handler race.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 160 run tellraw @a {text:"These skips, while saving time, are risky due to their difficulty.",color:"green"}
execute if score race.handler race.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in race:race if score race.handler race.timer.explanation matches 320 run tp @a 58 112 65 -135 25
execute if score race.handler race.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"You will earn +",color:"green"},{text:"15",color:"dark_red"},{text:" points for each player outplaced.",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 320 run tellraw @a {text:"You will also earn the following bonuses:",color:"green"}
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 1: +",color:"green"},{text:"50",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 2: +",color:"green"},{text:"30",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 3: +",color:"green"},{text:"30",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 5: +",color:"green"},{text:"40",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 10: +",color:"green"},{text:"40",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a [{text:"Top 15: +",color:"green"},{text:"30",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in race:race if score race.handler race.timer.explanation matches 480 run tp @a -15 129 -9 -45 25
execute if score race.handler race.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 480 run tellraw @a {text:"Teams will also earn additional bonuses, split evenly among their players:",color:"green"}
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"1st team: +",color:"green"},{text:"400",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"2nd team: +",color:"green"},{text:"320",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"3rd team: +",color:"green"},{text:"240",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"4th team: +",color:"green"},{text:"160",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"5th team: +",color:"green"},{text:"80",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a [{text:"6th team: +",color:"green"},{text:"0",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in race:race if score race.handler race.timer.explanation matches 640 run tp @a -32 109 -17 -85 -5
execute if score race.handler race.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 640 run tellraw @a {text:"The players with the fastest laps will also earn the following bonuses:",color:"green"}
execute if score race.handler race.timer.explanation matches 640 run tellraw @a [{text:"1st: +",color:"green"},{text:"50",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 640 run tellraw @a [{text:"2nd: +",color:"green"},{text:"40",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 640 run tellraw @a [{text:"3rd: +",color:"green"},{text:"30",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 640 run tellraw @a [{text:"4th: +",color:"green"},{text:"20",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 640 run tellraw @a [{text:"5th: +",color:"green"},{text:"10",color:"dark_red"},{text:" points",color:"green"}]
execute if score race.handler race.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute if score race.handler race.timer.explanation matches 799 run gamemode survival @a
execute if score race.handler race.timer.explanation matches 799 run gamemode spectator @a[team=SPECTATORS]
execute in race:race if score race.handler race.timer.explanation matches 799 run tp @a -13 106 14 -180 0
execute if score race.handler race.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 799 run tellraw @a {text:"The race begins in about 20 seconds.",color:"green"}
execute if score race.handler race.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score race.handler race.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"green"}
execute if score race.handler race.timer.explanation matches 799 run tellraw @a {text:" "}