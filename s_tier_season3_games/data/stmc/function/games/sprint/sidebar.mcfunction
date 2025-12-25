# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <dark_green>Sprint<dark_green>
# <red>Time Remaining: #:##<red>
# 
# <gold>Players Completed: ##<gold>

scoreboard objectives add sprint.sidebar dummy
$scoreboard objectives modify sprint.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar sprint.sidebar

# calculate time remaining using some dummy variables

scoreboard objectives add sprint.timer.game.temp dummy
execute store result score sprint.handler sprint.timer.game.temp run data get storage sprint:data max_time
scoreboard players operation sprint.handler sprint.timer.game.temp -= sprint.handler sprint.timer.game

# determine minutes elapsed
scoreboard objectives add sprint.gametime.mins dummy
scoreboard objectives add sprint.gametime.mins_temp dummy
scoreboard players operation sprint.handler sprint.gametime.mins = sprint.handler sprint.timer.game.temp
scoreboard players set #math sprint.gametime.mins 1200
scoreboard players operation sprint.handler sprint.gametime.mins /= #math sprint.gametime.mins
scoreboard players operation sprint.handler sprint.gametime.mins_temp = sprint.handler sprint.gametime.mins
scoreboard players operation sprint.handler sprint.gametime.mins_temp *= #math sprint.gametime.mins
scoreboard players operation sprint.handler sprint.timer.game.temp -= sprint.handler sprint.gametime.mins_temp
scoreboard objectives remove sprint.gametime.mins_temp

# determine seconds elapsed
scoreboard objectives add sprint.gametime.secs dummy
scoreboard objectives add sprint.gametime.secs_temp dummy
scoreboard players operation sprint.handler sprint.gametime.secs = sprint.handler sprint.timer.game.temp
scoreboard players set #math sprint.gametime.secs 20
scoreboard players operation sprint.handler sprint.gametime.secs /= #math sprint.gametime.secs
scoreboard players operation sprint.handler sprint.gametime.secs_temp = sprint.handler sprint.gametime.secs
scoreboard players operation sprint.handler sprint.gametime.secs_temp *= #math sprint.gametime.secs
scoreboard players operation sprint.handler sprint.timer.game.temp -= sprint.handler sprint.gametime.secs_temp
scoreboard objectives remove sprint.gametime.secs_temp
scoreboard objectives remove sprint.timer.game.temp

# convert elapsed into remaining [not in-tune with game settings, so must be manually changed]
scoreboard objectives add .negate dummy
scoreboard players set #math .negate -1
scoreboard players operation sprint.handler sprint.gametime.mins *= #math .negate
scoreboard players add sprint.handler sprint.gametime.mins 12
scoreboard players operation sprint.handler sprint.gametime.secs *= #math .negate
execute unless score sprint.handler sprint.gametime.secs matches 0 run \
        scoreboard players add sprint.handler sprint.gametime.secs 60
scoreboard objectives remove .negate

# <===== RANK TEAMS =====>

function stmc:games/sprint/helper/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# players completed
scoreboard players set sprint.playersCompleted sprint.sidebar 1
$execute if score sprint.handler sprint.stats.playersCompleted matches 0 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 0/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 1 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 1/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 2 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 2/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 3 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 3/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 4 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 4/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 5 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 5/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 6 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 6/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 7 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 7/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 8 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 8/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 9 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 9/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 10 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 10/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 11 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 11/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 12 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 12/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 13 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 13/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 14 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 14/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 15 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 15/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 16 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 16/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 17 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 17/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 18 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 18/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 19 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 19/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 20 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 20/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 21 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 21/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 22 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 22/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 23 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 23/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 24 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 24/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 25 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 25/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 26 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 26/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 27 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 27/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 28 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 28/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 29 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 29/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 30 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 30/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 31 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 31/$(players)", "color": "gold", "bold": true}
$execute if score sprint.handler sprint.stats.playersCompleted matches 32 run scoreboard players display name sprint.playersCompleted sprint.sidebar {"text": "Players Completed: 32/$(players)", "color": "gold", "bold": true}

# blank line
scoreboard players set §a sprint.sidebar 2

# time remaining
scoreboard players set sprint.timer sprint.sidebar 3
execute as @a if score sprint.handler sprint.gametime.secs matches 10.. run scoreboard players display name sprint.timer sprint.sidebar ["",{"text": "Time Remaining: ", "color": "red", "bold": true},{"score": {"name": "sprint.handler", "objective": "sprint.gametime.mins"},"color":"red"}, {"text": ":","color":"red"}, {"score": {"name": "sprint.handler", "objective": "sprint.gametime.secs"},"color":"red"}]
execute as @a if score sprint.handler sprint.gametime.secs matches 0..9 run scoreboard players display name sprint.timer sprint.sidebar ["",{"text": "Time Remaining: ", "color": "red", "bold": true},{"score": {"name": "sprint.handler", "objective": "sprint.gametime.mins"},"color":"red"}, {"text": ":0","color":"red"}, {"score": {"name": "sprint.handler", "objective": "sprint.gametime.secs"},"color":"red"}]

# current game
scoreboard players set sprint.name sprint.sidebar 4
scoreboard players display name sprint.name sprint.sidebar {"text": "Sprint", "color": "dark_green", "bold": true}

# blank line #2
scoreboard players set § sprint.sidebar 5