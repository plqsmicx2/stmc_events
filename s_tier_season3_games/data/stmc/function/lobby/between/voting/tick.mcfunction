# tick function for lobby while in voting stage

# <===== EVERY TICK =====>

scoreboard players add lobby.handler lobby.timer.voteStage 1

# <===== TIME DEPENDENT =====>

# Announce vote start
execute if score lobby.handler lobby.timer.voteStage matches 10 run \
        tellraw @a {text:"Vote for which game to play next!",color:green,bold:true}

# Announce multiplier
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 0 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g1"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 2 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g2"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 4 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g3"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 6 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g4"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 8 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g5"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 10 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g6"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 15 if score stmc.handler event.stage matches 12 run \
        tellraw @a [{text:"This game will have a ",color:green},\
        {score:{name:"stmc.handler",objective:"event.multipliers.g7"},color:yellow,bold:true},\
        {text:"x multiplier.",color:green}]

# Commence vote

# create objectives
execute if score lobby.handler lobby.timer.voteStage matches 20 run \
        scoreboard objectives add lobby.vote dummy
execute as @a unless entity @s[team=SPECTATORS] if score lobby.handler lobby.timer.voteStage matches 20 run \
        scoreboard players enable @s lobby.vote

# prompt vote
execute if score lobby.handler lobby.timer.voteStage matches 20 run \
        scoreboard players set @a lobby.vote -1

execute if score lobby.handler lobby.timer.voteStage matches 20 run tellraw @a {"color":"yellow","text":"\nVote!\n",bold:true}

execute if score lobby.handler lobby.timer.voteStage matches 20 unless score race.handler race.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 0"},color:green,text:"Race"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score sprint.handler sprint.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 1"},color:dark_green,text:"Sprint"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score tr.handler tr.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 2"},color:aqua,text:"Trials"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score dungeons.handler dungeons.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 3"},color:dark_red,text:"Dungeons"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score mine.handler mine.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 4"},color:dark_gray,text:"Mine"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score extract.handler extract.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 5"},color:red,text:"Extract"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score blitz.handler blitz.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 6"},color:light_purple,text:"Blitz"}]
execute if score lobby.handler lobby.timer.voteStage matches 20 unless score brawl.handler brawl.stage matches 1.. run \
        tellraw @a [{click_event:{action:run_command,command:"/trigger lobby.vote set 7"},color:gold,text:"Brawl"}]

execute if score lobby.handler lobby.timer.voteStage matches 20 run tellraw @a {text:" "}

# Announce vote
execute if score lobby.handler lobby.timer.voteStage matches 525 run function stmc:lobby/between/determine_vote
