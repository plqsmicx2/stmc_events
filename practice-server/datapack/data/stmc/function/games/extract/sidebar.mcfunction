# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <red>Extract<red>
# 
# <gold>Active Game: ##<gold>
# <red>#<red><white> vs. <white><blue>#<blue> OR <white>None<white>

scoreboard objectives add extract.sidebar dummy {"text": "  Extract  ", "color": "red", "bold": true}
scoreboard objectives setdisplay sidebar.team.red extract.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# ip
scoreboard players set .ip extract.sidebar 1
scoreboard players display name .ip extract.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat .ip extract.sidebar blank

# blank line #1
scoreboard players set .empty1 extract.sidebar 2
scoreboard players display name .empty1 extract.sidebar {"text": " "}
scoreboard players display numberformat .empty1 extract.sidebar blank

# active game stats
scoreboard players set extract.activeGame extract.sidebar 3
execute if score extract.handler extract.gamesActive matches 0 run \
        scoreboard players display name extract.activeGame extract.sidebar {"text": "None", "color": "white"}
execute if score extract.handler extract.gamesActive matches 1 run \
        scoreboard players display name extract.activeGame extract.sidebar \
        [{score:{name:"extract.red",objective:"extract.stats.playersAlive"},color:red},{text:" vs. ",color:white},{score:{name:"extract.blue",objective:"extract.stats.playersAlive"},color:blue}]
scoreboard players display numberformat extract.activeGame extract.sidebar blank

# active game header
scoreboard players set extract.activeGameHead extract.sidebar 4
scoreboard players display name extract.activeGameHead extract.sidebar {"text": "Active Game", "color": "gold"}
scoreboard players display numberformat extract.activeGameHead extract.sidebar blank

# <==== HEADER INFO =====>

# blank line #1
scoreboard players set .blankLine1 extract.sidebar 5
scoreboard players display name .blankLine1 extract.sidebar {"text": " "}
scoreboard players display numberformat .blankLine1 extract.sidebar blank
