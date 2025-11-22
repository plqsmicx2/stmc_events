# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <red>Extract<red>
# 
# <gold>Active Game: ##<gold>
# <red>#<red><white> vs. <white><blue>#<blue> OR <white>None<white>

scoreboard objectives add extract.sidebar dummy {"text": "  STMC Practice  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.red extract.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# active game stats
scoreboard players set extract.activeGame extract.sidebar 1
execute if score extract.handler extract.gamesActive matches 0 run \
        scoreboard players display name extract.activeGame extract.sidebar {"text": "None", "color": "white"}
execute if score extract.handler extract.gamesActive matches 1 run \
        scoreboard players display name extract.activeGame extract.sidebar \
        [{score:{name:"extract.red",objective:"extract.stats.playersAlive"},color:red},{text:" vs. ",color:white},{score:{name:"extract.blue",objective:"extract.stats.playersAlive"},color:blue}]

# active game header
scoreboard players set extract.activeGameHead extract.sidebar 2
scoreboard players display name extract.activeGameHead extract.sidebar {"text": "Active Game", "color": "gold"}

# <==== HEADER INFO =====>

# blank line #1
scoreboard players set .blankLine1 extract.sidebar 3
scoreboard players display name .blankLine1 extract.sidebar {"text": " "}

# current game
scoreboard players set extract.name extract.sidebar 4
scoreboard players display name extract.name extract.sidebar {"text": "Extract", "color": "red", "bold": true}

# blank line #2
scoreboard players set .blankLine2 extract.sidebar 5
scoreboard players display name .blankLine2 extract.sidebar {"text": " "}