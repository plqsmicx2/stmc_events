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

# announce record lap
execute store result score .raceLap race.laptime.total run data get storage race:data record.lap.time

# determine minutes
scoreboard objectives add race.laptime.mins_temp dummy
scoreboard players operation .raceLap race.laptime.mins = .raceLap race.laptime.total
scoreboard players set race.handler race.laptime.mins 1200
scoreboard players operation .raceLap race.laptime.mins /= race.handler race.laptime.mins
scoreboard players operation .raceLap race.laptime.mins_temp = .raceLap race.laptime.mins
scoreboard players operation .raceLap race.laptime.mins_temp *= race.handler race.laptime.mins
scoreboard players operation .raceLap race.laptime.total -= .raceLap race.laptime.mins_temp
scoreboard objectives remove race.laptime.mins_temp

# determine seconds
scoreboard objectives add race.laptime.seconds_temp dummy
scoreboard players operation .raceLap race.laptime.seconds = .raceLap race.laptime.total
scoreboard players set race.handler race.laptime.seconds 20
scoreboard players operation .raceLap race.laptime.seconds /= race.handler race.laptime.seconds
scoreboard players operation .raceLap race.laptime.seconds_temp = .raceLap race.laptime.seconds
scoreboard players operation .raceLap race.laptime.seconds_temp *= race.handler race.laptime.seconds
scoreboard players operation .raceLap race.laptime.total -= .raceLap race.laptime.seconds_temp
scoreboard objectives remove race.laptime.seconds_temp

# fix up remaining ticks
scoreboard players set race.handler race.laptime.total 5
scoreboard players operation .raceLap race.laptime.total *= race.handler race.laptime.total

# record lap time
scoreboard players set race.recordTimeLap race.sidebar 1
execute if score .raceLap race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTimeLap race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:white},{text:":0",color:white},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".raceLap",objective:"race.laptime.total"},color:white}]
execute if score .raceLap race.laptime.seconds matches 10.. run scoreboard players display name race.recordTimeLap race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:white},{text:":",color:white},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".raceLap",objective:"race.laptime.total"},color:white}]

# record lap player
scoreboard players set race.recordPlayerLap race.sidebar 2
scoreboard players display name race.recordPlayerLap race.sidebar [{text:"Lap: ",color:yellow},{"storage":"race:data","nbt":"record.lap.name","color": "yellow"}]

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
scoreboard players set race.recordTime race.sidebar 3
execute if score .race race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:white},{text:":0",color:white},{score:{name:".race",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".race",objective:"race.laptime.total"},color:white}]
execute if score .race race.laptime.seconds matches 10.. run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:white},{text:":",color:white},{score:{name:".race",objective:"race.laptime.seconds"},color:white},{text:".",color:white},{score:{name:".race",objective:"race.laptime.total"},color:white}]

# record player
scoreboard players set race.recordPlayer race.sidebar 4
scoreboard players display name race.recordPlayer race.sidebar [{text:"Total: ",color:yellow},{"storage":"race:data","nbt":"record.name","color": "yellow"}]

# <==== HEADER INFO =====>

# blank line #3
scoreboard players set §b race.sidebar 5

# record header
scoreboard players set race.recordHead race.sidebar 6
scoreboard players display name race.recordHead race.sidebar {"text": "Current Records:", "color": "yellow"}

# blank line #2
scoreboard players set §a race.sidebar 7

# current game
scoreboard players set race.name race.sidebar 8
scoreboard players display name race.name race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #1
scoreboard players set § race.sidebar 9