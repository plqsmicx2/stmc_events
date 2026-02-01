# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <dark_aqua>Trials<dark_aqua>
# 

scoreboard objectives add trials.sidebar dummy {"text": "  STMC Practice  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.aqua trials.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# blank line #1
scoreboard players set .blankLine1 trials.sidebar 1
scoreboard players display name .blankLine1 trials.sidebar {"text": " "}

# current game
scoreboard players set trials.name trials.sidebar 2
scoreboard players display name trials.name trials.sidebar {"text": "Trials", "color": "dark_aqua", "bold": true}

# blank line #2
scoreboard players set .blankLine2 trials.sidebar 3
scoreboard players display name .blankLine2 trials.sidebar {"text": " "}