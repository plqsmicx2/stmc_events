# creates the sidebar for race dimension

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <lime>Race<lime>
# 
# <yellow>Current Record:<yellow>
# <white>.race<white>
# <white>#:##.##<white>

scoreboard objectives add race.sidebar dummy {"text": "  Race  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.green race.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# server ip
scoreboard players set race.ip race.sidebar 1
scoreboard players display name race.ip race.sidebar {text:"[mc.stmc.net]", color:"#BABABA"}
scoreboard players display numberformat race.ip race.sidebar blank

# blank line
scoreboard players set race.empty1 race.sidebar 2
scoreboard players display name race.empty1 race.sidebar {text:""}
scoreboard players display numberformat race.empty1 race.sidebar blank

# announce record for Descent
function stmc:games/race/utils/sidebar/map_record {map:"Descent",timeN:3,playerN:4}

# announce record for Divide
function stmc:games/race/utils/sidebar/map_record {map:"Divide",timeN:5,playerN:6}

# announce record for Dream
function stmc:games/race/utils/sidebar/map_record {map:"Dream",timeN:7,playerN:8}

# <==== HEADER INFO =====>

# blank line #3
scoreboard players set §b race.sidebar 10
scoreboard players display numberformat §b race.sidebar blank

# record header
scoreboard players set race.recordHead race.sidebar 11
scoreboard players display name race.recordHead race.sidebar {"text": "Current Map Records:", "color": "yellow"}
scoreboard players display numberformat race.recordHead race.sidebar blank

# blank line #2
scoreboard players set §a race.sidebar 12
scoreboard players display numberformat §a race.sidebar blank