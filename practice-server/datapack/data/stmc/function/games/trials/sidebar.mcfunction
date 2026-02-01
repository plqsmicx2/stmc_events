# creates the sidebar for the game

# sidebar looks like this:
# <dark_aqua>Trials<dark_aqua>
# 
# <gray>mc.stmc.net<gray>

scoreboard objectives add trials.sidebar dummy {"text": "  Trials  ", "color": "dark_aqua", "bold": true}
scoreboard objectives setdisplay sidebar.team.aqua trials.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# <==== HEADER INFO =====>

# ip
scoreboard players set trials.name trials.sidebar 2
scoreboard players display name trials.name trials.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat trials.name trials.sidebar blank

# blank line
scoreboard players set .blankLine2 trials.sidebar 3
scoreboard players display name .blankLine2 trials.sidebar {"text": " "}
scoreboard players display numberformat .blankLine2 trials.sidebar blank