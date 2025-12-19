# creates the sidebar for scramble dimension

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <aqua>Scramble<aqua>
# 
# <yellow>Most Rounds Survived:<yellow>
# <white>player<white>
# <white>##<white>

scoreboard objectives add scramble.sidebar dummy {"text": "  STMC Practice  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.dark_green scramble.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# record rounds survived
scoreboard players set scramble.recordSurvived scramble.sidebar 1
scoreboard players display name scramble.recordSurvived scramble.sidebar \
        [{"storage":"scramble:data","nbt":"record.rounds","color": "white"}]

# record lap player
scoreboard players set scramble.recordPlayer scramble.sidebar 2
scoreboard players display name scramble.recordPlayer scramble.sidebar \
        [{"storage":"scramble:data","nbt":"record.player","color": "white"}]

# <==== HEADER INFO =====>

# record header
scoreboard players set scramble.recordHead scramble.sidebar 3
scoreboard players display name scramble.recordHead scramble.sidebar {"text": "Current Records:", "color": "yellow"}

# blank line #2
scoreboard players set §a scramble.sidebar 4

# current game
scoreboard players set scramble.name scramble.sidebar 5
scoreboard players display name scramble.name scramble.sidebar {"text": "Scramble", "color": "aqua", "bold": true}

# blank line #1
scoreboard players set § scramble.sidebar 6