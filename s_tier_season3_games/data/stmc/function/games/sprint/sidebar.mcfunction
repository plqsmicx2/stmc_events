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

# <===== RANK TEAMS =====>

function stmc:games/sprint/helper/calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# players completed
scoreboard players set sprint.playersCompleted sprint.sidebar 1
$scoreboard players display name sprint.playersCompleted sprint.sidebar [{"text": "Players Completed: ", "color": "gold", "bold": true},{score:{name:"sprint.handler",objective:"sprint.stats.playersCompleted"}, "color": "gold", "bold": true},{text:"/$(players)", "color": "gold", "bold": true}]

# blank line
scoreboard players set §a sprint.sidebar 2

# time remaining
scoreboard players operation sprint.handler sprint.gametime.secs = sprint.handler sprint.timer.game.secs
scoreboard players operation sprint.handler sprint.gametime.mins = sprint.handler sprint.timer.game.mins
scoreboard players set sprint.timer sprint.sidebar 3
execute as @a if score sprint.handler sprint.gametime.secs matches 10.. run scoreboard players display name sprint.timer sprint.sidebar ["",{"text": "Time Remaining: ", "color": "red", "bold": true},{"score": {"name": "sprint.handler", "objective": "sprint.gametime.mins"},"color":"red"}, {"text": ":","color":"red"}, {"score": {"name": "sprint.handler", "objective": "sprint.gametime.secs"},"color":"red"}]
execute as @a if score sprint.handler sprint.gametime.secs matches 0..9 run scoreboard players display name sprint.timer sprint.sidebar ["",{"text": "Time Remaining: ", "color": "red", "bold": true},{"score": {"name": "sprint.handler", "objective": "sprint.gametime.mins"},"color":"red"}, {"text": ":0","color":"red"}, {"score": {"name": "sprint.handler", "objective": "sprint.gametime.secs"},"color":"red"}]

# current game
scoreboard players set sprint.name sprint.sidebar 4
scoreboard players display name sprint.name sprint.sidebar {"text": "Sprint", "color": "dark_green", "bold": true}

# blank line #2
scoreboard players set § sprint.sidebar 5

# current game
scoreboard players set .currentGame sprint.sidebar 6
$scoreboard players display name .currentGame sprint.sidebar {text:"[ Game $(currentGame)/8 ]",color:gray}