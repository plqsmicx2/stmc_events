# creates the sidebar for the game

# sidebar looks like this:
# <yellow>Solve<yellow>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add solve.sidebar dummy {"text": "  Solve  ", "color": "yellow", "bold": true}
scoreboard objectives setdisplay sidebar.team.yellow solve.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set solve.name solve.sidebar 2
scoreboard players display name solve.name solve.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat solve.name solve.sidebar blank

# blank line
scoreboard players set .blankLine2 solve.sidebar 3
scoreboard players display name .blankLine2 solve.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 solve.sidebar blank