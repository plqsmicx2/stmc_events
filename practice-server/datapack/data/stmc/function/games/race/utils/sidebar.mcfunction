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

# announce record lap
execute store result score .raceLap race.laptime.total run data get storage race:data record.Descent.time

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
scoreboard players set race.recordTimeLap race.sidebar 3
execute if score .raceLap race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTimeLap race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:gold},{text:":0",color:gold},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".raceLap",objective:"race.laptime.total"},color:gold}]
execute if score .raceLap race.laptime.seconds matches 10.. run scoreboard players display name race.recordTimeLap race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:gold},{text:":",color:gold},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".raceLap",objective:"race.laptime.total"},color:gold}]
scoreboard players display numberformat race.recordTimeLap race.sidebar blank

# record lap player
scoreboard players set race.recordPlayerLap race.sidebar 4
scoreboard players display name race.recordPlayerLap race.sidebar [{text:"Davey's Descent: ",color:white},{"storage":"race:data","nbt":"record.Descent.name","color": "gold"}]
scoreboard players display numberformat race.recordPlayerLap race.sidebar blank

# announce record
execute store result score .race race.laptime.total run data get storage race:data record.Divide.time

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
scoreboard players set race.recordTime race.sidebar 5
execute if score .race race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:gold},{text:":0",color:gold},{score:{name:".race",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".race",objective:"race.laptime.total"},color:gold}]
execute if score .race race.laptime.seconds matches 10.. run scoreboard players display name race.recordTime race.sidebar \
        [{score:{name:".race",objective:"race.laptime.mins"},color:gold},{text:":",color:gold},{score:{name:".race",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".race",objective:"race.laptime.total"},color:gold}]
scoreboard players display numberformat race.recordTime race.sidebar blank

# record player
scoreboard players set race.recordPlayer race.sidebar 6
scoreboard players display name race.recordPlayer race.sidebar [{text:"Davey's Divide: ",color:white},{"storage":"race:data","nbt":"record.Divide.name","color": "gold"}]
scoreboard players display numberformat race.recordPlayer race.sidebar blank

# <==== HEADER INFO =====>

# blank line #3
scoreboard players set §b race.sidebar 7
scoreboard players display numberformat §b race.sidebar blank

# record header
scoreboard players set race.recordHead race.sidebar 8
scoreboard players display name race.recordHead race.sidebar {"text": "Current Map Records:", "color": "yellow"}
scoreboard players display numberformat race.recordHead race.sidebar blank

# blank line #2
scoreboard players set §a race.sidebar 9
scoreboard players display numberformat §a race.sidebar blank