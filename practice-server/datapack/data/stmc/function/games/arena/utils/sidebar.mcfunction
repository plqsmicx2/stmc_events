# creates the sidebar for the game

# sidebar looks like this:
# <light_purple>Arena<light_purple>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add arena.sidebar dummy {"text": "  Arena  ", "color": "light_purple", "bold": true}
scoreboard objectives setdisplay sidebar.team.light_purple arena.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set arena.name arena.sidebar 2
scoreboard players display name arena.name arena.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat arena.name arena.sidebar blank

# blank line
scoreboard players set .blankLine2 arena.sidebar 3
scoreboard players display name .blankLine2 arena.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 arena.sidebar blank