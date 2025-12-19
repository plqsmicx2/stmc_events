# helper function that teleports players to the lobby arena
# starts the game thread for that lobby
# if the lobby was empty, it'll start a 30 second timer for others to join

execute if score scramble.lobby4 scramble.timer.game matches 600.. run \
        tellraw @s {text:"Game already started!",color:red}
execute if score scramble.lobby4 scramble.timer.game matches 600.. run \
        return 0

# teleport players
teleport @s 0 101 -200

# set lobby to active
execute unless score scramble.handler scramble.lobby4 matches 1 run scoreboard players set scramble.handler scramble.lobby4 1

# reset scoreboards
scoreboard players set @s scramble.alive 1

execute unless score scramble.handler scramble.lobby4 matches 1 run scoreboard players set scramble.lobby4 scramble.timer.game 0
execute unless score scramble.handler scramble.lobby4 matches 1 run scoreboard players set scramble.lobby4 scramble.timer.round 0
execute unless score scramble.handler scramble.lobby4 matches 1 run scoreboard players set scramble.lobby4 scramble.roundsCompleted 0