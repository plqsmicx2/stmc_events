# this function delivers the explanation of how BRAWL will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run title @a title {text:"BRAWL",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run gamemode spectator @a
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 in survival_games:sg1 run teleport @a 95 140 -95 -60 20
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:"Brawl is played just like hunger games, but faster.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:"There will be three rounds.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:"Each round will be the same.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 in survival_games:sg1 run teleport @a -40 125 115 155 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Kills are worth ",color:"gold"},{text:"+30",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:"There is a 10 second grace period.",color:"red",bold:true}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:"Placement is worth:",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 20: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 16: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 12: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 8: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 4: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 3: ",color:"gold"},{text:"+10",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 2: ",color:"gold"},{text:"+15",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{text:"Top 1: ",color:"gold"},{text:"+25",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 in survival_games:sg1 run teleport @a 55 125 50 -100 15
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {text:"Placing higher as a team also earns points.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {text:"These are split evenly among the team & awarded at the round end.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"1st: ",color:"gold"},{text:"400",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"2nd: ",color:"gold"},{text:"260",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"3rd: ",color:"gold"},{text:"160",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"4th: ",color:"gold"},{text:"100",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"5th: ",color:"gold"},{text:"40",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{text:"6th: ",color:"gold"},{text:"0",color:"dark_red"},{text:" points",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 in survival_games:sg1 run teleport @a 6 115 6 135 40
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:"There are two types of chests:",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{text:"Normal",color:"yellow"},{text:" chests have mediocre loot.",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:"There are many of these around the map.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{text:"Strong",color:"dark_purple"},{text:" chests have improved loot.",color:"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:"These have crying obsidian beneath them.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:"There are only a few outside of the cornucopias.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5 (also announces end)
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 1 in survival_games:sg1 run setblock -50 108 -50 minecraft:beacon
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 1 in survival_games:sg1 run teleport @a 0 150 0 135 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 2 in survival_games:sg1 run setblock 50 111 -50 minecraft:beacon
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 2 in survival_games:sg1 run teleport @a 0 150 0 -135 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 3 in survival_games:sg1 run setblock -50 110 50 minecraft:beacon
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 3 in survival_games:sg1 run teleport @a 0 150 0 45 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 4 in survival_games:sg1 run setblock 50 107 50 minecraft:beacon
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 if score sg.r1.handler sg.borderEnd matches 4 in survival_games:sg1 run teleport @a 0 150 0 -45 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:"Each round, the border will end in a different place.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:"The beacon shows where the border will end.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:"The border moves fast, so don't lose track of it!",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:"But you also don't want to get stuck in a trap!",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 in survival_games:sg1 run teleport @a 0 177 0
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run gamemode survival @a
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:"The round starts in about 20 seconds.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}