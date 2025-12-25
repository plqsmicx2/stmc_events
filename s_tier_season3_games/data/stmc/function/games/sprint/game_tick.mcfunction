# this function runs the game thread for sprint

# increment game timer
scoreboard players add sprint.handler sprint.timer.game 1

# check # of players completed
scoreboard players set sprint.handler sprint.stats.playersCompleted 0
execute as @a if score @s sprint.stats.completed matches 1 run \
        scoreboard players add sprint.handler sprint.stats.playersCompleted 1

# end game if all players are completed OR if time has run out
$execute if score sprint.handler sprint.stats.playersCompleted matches $(players) run function stmc:games/sprint/helper/end_game

execute store result score $max sprint.timer.game run data get storage sprint:data max_time
execute if score sprint.handler sprint.timer.game = $max sprint.timer.game run function stmc:games/sprint/helper/end_game

# ----------------------------------------------------------
# ------------------ VVVV GAME CODE VVVV -------------------

execute in stmc:sprint run function stmc:games/sprint/helper/game/checkpoint_return