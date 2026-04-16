# >> add a single map's record time & player to the sidebar
# imports:
# 1. Map Name (map: e.g. "Descent")
# 2. sidebar values (playerN & timeN)

# announce record lap
$execute store result score .raceLap race.laptime.total run data get storage race:data record.$(map).time

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
$scoreboard players set race.recordTime$(map) race.sidebar $(timeN)
$execute if score .raceLap race.laptime.seconds matches 0..9 run scoreboard players display name race.recordTime$(map) race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:gold},{text:":0",color:gold},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".raceLap",objective:"race.laptime.total"},color:gold}]
$execute if score .raceLap race.laptime.seconds matches 10.. run scoreboard players display name race.recordTime$(map) race.sidebar \
        [{score:{name:".raceLap",objective:"race.laptime.mins"},color:gold},{text:":",color:gold},{score:{name:".raceLap",objective:"race.laptime.seconds"},color:gold},{text:".",color:gold},{score:{name:".raceLap",objective:"race.laptime.total"},color:gold}]
$scoreboard players display numberformat race.recordTime$(map) race.sidebar blank

# record lap player
$scoreboard players set race.recordPlayer$(map) race.sidebar $(playerN)
$scoreboard players display name race.recordPlayer$(map) race.sidebar [{text:"Davey's $(map): ",color:white},{"storage":"race:data","nbt":"record.$(map).name","color": "gold"}]
$scoreboard players display numberformat race.recordPlayer$(map) race.sidebar blank