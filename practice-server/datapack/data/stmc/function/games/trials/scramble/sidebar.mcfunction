# creates the sidebar for scramble dimension

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <aqua>Scramble<aqua>
# 
# <yellow>Most Rounds Survived:<yellow>
# <white>player<white>
# <white>##<white>

scoreboard objectives add scramble.sidebar dummy {"text": "  Scramble  ", "color": "aqua", "bold": true}
scoreboard objectives setdisplay sidebar.team.dark_aqua scramble.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# ip
scoreboard players set .ip scramble.sidebar 1
scoreboard players display name .ip scramble.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat .ip scramble.sidebar blank

# blank line
scoreboard players set .empty1 scramble.sidebar 2
scoreboard players display name .empty1 scramble.sidebar {"text": " "}
scoreboard players display numberformat .empty1 scramble.sidebar blank

# record rounds survived
scoreboard players set scramble.recordSurvived scramble.sidebar 3
scoreboard players display name scramble.recordSurvived scramble.sidebar \
        ["",{text:"Rounds: ",color:white},{"storage":"scramble:data","nbt":"record.rounds","color": "gold"}]
scoreboard players display numberformat scramble.recordSurvived scramble.sidebar blank

# record lap player
scoreboard players set scramble.recordPlayer scramble.sidebar 4
scoreboard players display name scramble.recordPlayer scramble.sidebar \
        [{"storage":"scramble:data","nbt":"record.name","color": "gold"}]
scoreboard players display numberformat scramble.recordPlayer scramble.sidebar blank

# <==== HEADER INFO =====>

# blank line #1
scoreboard players set § scramble.sidebar 5
scoreboard players display numberformat § scramble.sidebar blank

# record header
scoreboard players set scramble.recordHead scramble.sidebar 6
scoreboard players display name scramble.recordHead scramble.sidebar {"text": "Records:", "color": "yellow"}
scoreboard players display numberformat scramble.recordHead scramble.sidebar blank

# blank line #2
scoreboard players set §a scramble.sidebar 7
scoreboard players display numberformat §a scramble.sidebar blank
