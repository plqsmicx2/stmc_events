# creates the sidebar for the game

# sidebar looks like this:
# <yellow>Joust<yellow>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add joust.sidebar dummy {"text": "  Joust  ", "color": "#e6d96a", "bold": true}
scoreboard objectives setdisplay sidebar.team.gold joust.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set joust.name joust.sidebar 2
scoreboard players display name joust.name joust.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat joust.name joust.sidebar blank

# blank line
scoreboard players set .blankLine2 joust.sidebar 3
scoreboard players display name .blankLine2 joust.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 joust.sidebar blank