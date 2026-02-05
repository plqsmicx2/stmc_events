# creates the sidebar for the game

# sidebar looks like this:
# <gold>Brawl<gold>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add brawl.sidebar dummy {"text": "  Brawl  ", "color": "gold", "bold": true}
scoreboard objectives setdisplay sidebar.team.gold brawl.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set brawl.name brawl.sidebar 2
scoreboard players display name brawl.name brawl.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat brawl.name brawl.sidebar blank

# blank line
scoreboard players set .blankLine2 brawl.sidebar 3
scoreboard players display name .blankLine2 brawl.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 brawl.sidebar blank