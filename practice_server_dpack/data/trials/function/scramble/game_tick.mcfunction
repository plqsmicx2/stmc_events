# game thread function

# handle games happening in lobby #1
execute if score scramble.handler scramble.lobby1 matches 1 run \
        scoreboard players add scramble.lobby1 scramble.timer.game 1

# announce game start
execute if score scramble.lobby1 scramble.timer.game matches 1 run \
        tellraw @a[team=dim.trials] {text:"Scramble Lobby #1 starting in 30 seconds!"}
execute if score scramble.lobby1 scramble.timer.game matches 1 run \
        tellraw @a[team=dim.tr.scramble] {text:"Scramble Lobby #1 starting in 30 seconds!"}

execute if score scramble.lobby1 scramble.timer.game matches 500 run \
        tellraw @a[team=dim.trials] {text:"Scramble Lobby #1 starting in 5 seconds!"}
execute if score scramble.lobby1 scramble.timer.game matches 500 run \
        tellraw @a[team=dim.tr.scramble] {text:"Scramble Lobby #1 starting in 5 seconds!"}

# handle each round
$execute if score scramble.lobby1 scramble.timer.game matches 600.. run function trials:scramble/round_tick {x=193,y=$(y),z=-7}

# check # of alive players
scoreboard objectives add .players dummy
scoreboard players set scramble.lobby1 .players 0
$execute as @a[team=dim.tr.scramble,x=$(x),y=$(y),z=$(z),dx=20,dy=10,dz=20] run scoreboard players add scramble.lobby1 .players 1

# and reset the whole game if no players are alive
execute if score scramble.lobby1 .players matches 0 if score scramble.lobby1 scramble.roundsCompleted matches 1.. \
        run scoreboard players set scramble.handler scramble.lobby1 0