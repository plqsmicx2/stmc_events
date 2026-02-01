# sets the sidebar for the lobby

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <yellow>[CLOSED BETA]<yellow>
# <white>mc-stmc.net<white>
# 

scoreboard objectives add lobby.sidebar dummy {text: "  STMC Practice  ", color: "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.white lobby.sidebar

# <==== HEADER INFO =====>

# blank line #2
scoreboard players set blank.2 lobby.sidebar 1
scoreboard players display name blank.2 lobby.sidebar {text: " "}
scoreboard players display numberformat blank.2 lobby.sidebar blank

# server ip
scoreboard players set lobby.ip lobby.sidebar 2
scoreboard players display name lobby.ip lobby.sidebar {text: "mc-stmc.net", color: "white"}
scoreboard players display numberformat lobby.ip lobby.sidebar blank

# status
scoreboard players set lobby.status lobby.sidebar 3
scoreboard players display name lobby.status lobby.sidebar {text: "[CLOSED BETA]", color: "dark_green"}
scoreboard players display numberformat lobby.status lobby.sidebar blank

# blank line #1
scoreboard players set blank.1 lobby.sidebar 4
scoreboard players display name blank.1 lobby.sidebar {text: " "}
scoreboard players display numberformat blank.1 lobby.sidebar blank