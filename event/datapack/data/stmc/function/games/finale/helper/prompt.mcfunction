# helper function that prompts the #1 team for which games to play

# timers:
# 0s-20s: prompt #1
# --> prompt, wait 15s, count, determine vote, wait 5s
# 20s-40s: prompt #2
# --> prompt, wait 15s, count, determine vote, announce order, wait 5s

# <==== GAME #1 ====>

# Prompt for game #1
execute if score finale.handler finale.timer.game matches 1 run scoreboard objectives add finale.vote trigger
execute if score finale.handler finale.timer.game matches 1 run scoreboard players set @a finale.vote -1
execute if score finale.handler finale.timer.game matches 1..300 run \
        scoreboard players enable @a[scores={finale.team1=1..}] finale.vote

execute if score finale.handler finale.timer.game matches 1 run \
        tellraw @a[scores={finale.team1=0}] {text:"Determining Game #1"}

execute if score finale.handler finale.timer.game matches 1 run \
        tellraw @a[scores={finale.team1=1}] {text:"Vote for Game #1:",color:green}

execute if score finale.handler finale.timer.game matches 1 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 1"},\
        color:yellow,text:"Fight"}]
execute if score finale.handler finale.timer.game matches 1 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 2"},\
        color:yellow,text:"Sumo"}]
execute if score finale.handler finale.timer.game matches 1 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 3"},\
        color:yellow,text:"Shoot"}]

# Determine game #1
execute if score finale.handler finale.timer.game matches 300 run \
        execute store result score finale.handler finale.game1 run function stmc:games/finale/helper/determine_vote
scoreboard objectives remove .max

# announce determination to voting team
execute if score finale.handler finale.timer.game matches 350 if score finale.handler finale.game1 matches 1 run \
        tellraw @a[scores={finale.team1=1..}] ["",{text:"Game #1: ",color:white},{text:"Fight",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 350 if score finale.handler finale.game1 matches 2 run \
        tellraw @a[scores={finale.team1=1..}] ["",{text:"Game #1: ",color:white},{text:"Sumo",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 350 if score finale.handler finale.game1 matches 3 run \
        tellraw @a[scores={finale.team1=1..}] ["",{text:"Game #1: ",color:white},{text:"Shoot",color:yellow,bold:true}]

# <==== GAME #2 ====>

# Prompt for game #2
execute if score finale.handler finale.timer.game matches 400 run scoreboard objectives add finale.vote trigger
execute if score finale.handler finale.timer.game matches 400 run scoreboard players set @a finale.vote -1
execute if score finale.handler finale.timer.game matches 400..700 run \
        scoreboard players enable @a[scores={finale.team1=1..}] finale.vote

execute if score finale.handler finale.timer.game matches 400 run \
        tellraw @a[scores={finale.team1=0}] {text:"Determining Game #2"}

execute if score finale.handler finale.timer.game matches 400 run \
        tellraw @a[scores={finale.team1=1}] {text:"Vote for Game #2:",color:green}

execute if score finale.handler finale.timer.game matches 400 unless score finale.handler finale.game1 matches 1 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 1"},\
        color:yellow,text:"Fight"}]
execute if score finale.handler finale.timer.game matches 400 unless score finale.handler finale.game1 matches 2 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 2"},\
        color:yellow,text:"Sumo"}]
execute if score finale.handler finale.timer.game matches 400 unless score finale.handler finale.game1 matches 3 run \
        tellraw @a[scores={finale.team1=1}] [{click_event:{action:run_command,command:"/trigger finale.vote set 3"},\
        color:yellow,text:"Shoot"}]

# Determine game #2
execute if score finale.handler finale.timer.game matches 700 run \
        execute store result score finale.handler finale.game2 run function stmc:games/finale/helper/determine_vote
scoreboard objectives remove .max

# and determine game #3
execute if score finale.handler finale.game1 matches 1 if score finale.handler finale.game2 matches 2 run \
        scoreboard players set finale.handler finale.game3 3
execute if score finale.handler finale.game1 matches 2 if score finale.handler finale.game2 matches 1 run \
        scoreboard players set finale.handler finale.game3 3
execute if score finale.handler finale.game1 matches 1 if score finale.handler finale.game2 matches 3 run \
        scoreboard players set finale.handler finale.game3 2
execute if score finale.handler finale.game1 matches 3 if score finale.handler finale.game2 matches 1 run \
        scoreboard players set finale.handler finale.game3 2
execute if score finale.handler finale.game1 matches 3 if score finale.handler finale.game2 matches 2 run \
        scoreboard players set finale.handler finale.game3 1
execute if score finale.handler finale.game1 matches 2 if score finale.handler finale.game2 matches 3 run \
        scoreboard players set finale.handler finale.game3 1

# Present votes
# Game #1
execute if score finale.handler finale.timer.game matches 750 if score finale.handler finale.game1 matches 1 run \
        tellraw @a ["",{text:"Game #1: ",color:white},{text:"Fight!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 750 if score finale.handler finale.game1 matches 2 run \
        tellraw @a ["",{text:"Game #1: ",color:white},{text:"Sumo!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 750 if score finale.handler finale.game1 matches 3 run \
        tellraw @a ["",{text:"Game #1: ",color:white},{text:"Shoot!",color:yellow,bold:true}]

# Game #2
execute if score finale.handler finale.timer.game matches 800 if score finale.handler finale.game2 matches 1 run \
        tellraw @a ["",{text:"Game #2: ",color:white},{text:"Fight!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 800 if score finale.handler finale.game2 matches 2 run \
        tellraw @a ["",{text:"Game #2: ",color:white},{text:"Sumo!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 800 if score finale.handler finale.game2 matches 3 run \
        tellraw @a ["",{text:"Game #2: ",color:white},{text:"Shoot!",color:yellow,bold:true}]

# Game #3
execute if score finale.handler finale.timer.game matches 850 if score finale.handler finale.game3 matches 1 run \
        tellraw @a ["",{text:"Decider Game: ",color:white},{text:"Fight!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 850 if score finale.handler finale.game3 matches 2 run \
        tellraw @a ["",{text:"Decider Game: ",color:white},{text:"Sumo!",color:yellow,bold:true}]
execute if score finale.handler finale.timer.game matches 850 if score finale.handler finale.game3 matches 3 run \
        tellraw @a ["",{text:"Decider Game: ",color:white},{text:"Shoot!",color:yellow,bold:true}]

# move on after five seconds
execute if score finale.handler finale.timer.game matches 950 run scoreboard players set finale.handler finale.round.stage 1