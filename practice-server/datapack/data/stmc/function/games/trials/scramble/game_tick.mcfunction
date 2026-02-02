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

# start game for players in the arena
execute if score scramble.lobby1 scramble.timer.game matches 599 run \
        scoreboard players set @a[team=dim.tr.scramble,x=193,y=97,z=-7,dx=20,dy=10,dz=20] scramble.alive 1

# handle each round
#data modify storage scramble:data x set value 193
#data modify storage scramble:data z set value -7
#execute if score scramble.lobby1 scramble.timer.game matches 600.. run function stmc:games/trials/scramble/round_tick with storage scramble:data
execute in stmc:trials/scramble if score scramble.lobby1 scramble.timer.game matches 600.. run function stmc:games/trials/scramble/round_tick

# check # of alive players
scoreboard objectives add .players dummy
scoreboard players set scramble.lobby1 .players 0
execute as @a at @s[team=dim.tr.scramble,x=193,y=97,z=-7,dx=20,dy=10,dz=20] run \
        scoreboard players add scramble.lobby1 .players 1

# and reset the whole game if no players are alive
execute if score scramble.lobby1 .players matches 0 if score scramble.lobby1 scramble.roundsCompleted matches 1.. \
        run scoreboard players set scramble.lobby1 scramble.timer.game 0
execute if score scramble.lobby1 .players matches 0 if score scramble.lobby1 scramble.roundsCompleted matches 1.. \
        run scoreboard players set scramble.handler scramble.lobby1 0