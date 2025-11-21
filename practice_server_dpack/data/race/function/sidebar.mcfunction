# creates the sidebar for race dimension

# sidebar looks like this:
# <lime>STMC Practice<lime>
# 
# <lime>Race<lime>
# 
# <yellow>Current Record:<yellow>
# <white>.race<white>
# <white>#:##.##<white>

scoreboard objectives add race.sidebar dummy {"text": "  STMC Practice  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar.team.green race.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# announce record

execute store result score .race race.laptime.total run data get storage race:data record.time

# determine minutes
scoreboard objectives add race.laptime.mins_temp dummy
scoreboard players operation .race race.laptime.mins = .race race.laptime.total
scoreboard players set race.handler race.laptime.mins 1200
scoreboard players operation .race race.laptime.mins /= race.handler race.laptime.mins
scoreboard players operation .race race.laptime.mins_temp = .race race.laptime.mins
scoreboard players operation .race race.laptime.mins_temp *= race.handler race.laptime.mins
scoreboard players operation .race race.laptime.total -= .race race.laptime.mins_temp
scoreboard objectives remove race.laptime.mins_temp

# determine seconds
scoreboard objectives add race.laptime.seconds_temp dummy
scoreboard players operation .race race.laptime.seconds = .race race.laptime.total
scoreboard players set race.handler race.laptime.seconds 20
scoreboard players operation .race race.laptime.seconds /= race.handler race.laptime.seconds
scoreboard players operation .race race.laptime.seconds_temp = .race race.laptime.seconds
scoreboard players operation .race race.laptime.seconds_temp *= race.handler race.laptime.seconds
scoreboard players operation .race race.laptime.total -= .race race.laptime.seconds_temp
scoreboard objectives remove race.laptime.seconds_temp

# fix up remaining ticks
scoreboard players set race.handler race.laptime.total 5
scoreboard players operation .race race.laptime.total *= race.handler race.laptime.total

# record time
scoreboard players set race.recordTime race.sidebar 1
execute if score .race race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:white},{text:":0",color:white},{score:{name:".race",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".race",objective:"race.laptime.total"},color:white}]
execute if score .race race.laptime.seconds matches 10.. run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:white},{text:":",color:white},{score:{name:".race",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".race",objective:"race.laptime.total"},color:white}]

# record player
scoreboard players set race.recordPlayer race.sidebar 2
scoreboard players display name race.recordPlayer race.sidebar {"storage":"race:data","nbt":"record.name","color": "yellow"}

# <==== HEADER INFO =====>

# record header
scoreboard players set race.recordHead race.sidebar 3
scoreboard players display name race.recordHead race.sidebar {"text": "Current Record:", "color": "yellow"}

# blank line #2
scoreboard players set §a race.sidebar 4

# current game
scoreboard players set race.name race.sidebar 5
scoreboard players display name race.name race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #1
scoreboard players set § race.sidebar 6