# creates the sidebar for the game

# sidebar looks like this:
# <blue>Mystery<blue>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add mystery.sidebar dummy {"text": "  Mystery  ", "color": "blue", "bold": true}
scoreboard objectives setdisplay sidebar.team.blue mystery.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set mystery.name mystery.sidebar 2
scoreboard players display name mystery.name mystery.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat mystery.name mystery.sidebar blank

# blank line
scoreboard players set .blankLine2 mystery.sidebar 3
scoreboard players display name .blankLine2 mystery.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 mystery.sidebar blank