# function to reset a player once they complete all 4 laps

# calculate fastest lap time
execute as @s run function stmc:games/race/api/flap_calculation

# determine if player set a new overall record
scoreboard objectives add .record dummy
execute if score @s race.gameActive matches 1 store result score race.handler .record run \
        data get storage race:data record.Divide.time
execute if score @s race.gameActive matches 2 store result score race.handler .record run \
        data get storage race:data record.Descent.time

execute if score @s race.laptime.total < race.handler .record as @s \
        if score @s race.gameActive matches 1 run function stmc:games/race/api/records/update_time {map:"Divide"}

execute if score @s race.laptime.total < race.handler .record as @s \
        if score @s race.gameActive matches 2 run function stmc:games/race/api/records/update_time {map:"Descent"}

scoreboard objectives remove .record

# determine if player set a new overall lap record
scoreboard objectives add .recordLap dummy
execute if score @s race.gameActive matches 1 store result score race.handler .recordLap run \
        data get storage race:data record.Divide.lap.time
execute if score @s race.gameActive matches 2 store result score race.handler .recordLap run \
        data get storage race:data record.Descent.lap.time

execute if score @s race.fastest_lap < race.handler .recordLap as @s \
        if score @s race.gameActive matches 1 run function stmc:games/race/api/records/update_lap {map:"Divide"}

execute if score @s race.fastest_lap < race.handler .recordLap as @s \
        if score @s race.gameActive matches 2 run function stmc:games/race/api/records/update_lap {map:"Descent"}

scoreboard objectives remove .recordLap

# determine if player set a new personal record
execute if score @s race.gameActive matches 1 if score @s race.laptime.total < @s race.daveysDivide.time as @s \
        run function stmc:games/race/api/records/update_personal_time {map:"Divide"}
execute if score @s race.gameActive matches 2 if score @s race.laptime.total < @s race.daveysDescent.time as @s \
        run function stmc:games/race/api/records/update_personal_time {map:"Descent"}

# determine if player set a new personal lap record
execute if score @s race.gameActive matches 1 if score @s race.fastest_lap < @s race.daveysDivide.lap as @s \
        run function stmc:games/race/api/records/update_personal_lap {map:"Divide"}
execute if score @s race.gameActive matches 2 if score @s race.fastest_lap < @s race.daveysDescent.lap as @s \
        run function stmc:games/race/api/records/update_personal_lap {map:"Descent"}

# determine minutes
scoreboard objectives add race.fastest_lap.mins dummy
scoreboard objectives add race.fastest_lap.mins_temp dummy
execute as @s run scoreboard players operation @s race.fastest_lap.mins = @s race.fastest_lap
scoreboard players set race.handler race.fastest_lap.mins 1200
execute as @s run scoreboard players operation @s race.fastest_lap.mins /= race.handler race.fastest_lap.mins
execute as @s run scoreboard players operation @s race.fastest_lap.mins_temp = @s race.fastest_lap.mins
execute as @s run scoreboard players operation @s race.fastest_lap.mins_temp *= race.handler race.fastest_lap.mins
execute as @s run scoreboard players operation @s race.fastest_lap -= @s race.fastest_lap.mins_temp
scoreboard objectives remove race.fastest_lap.mins_temp

# determine seconds
scoreboard objectives add race.fastest_lap.secs dummy
scoreboard objectives add race.fastest_lap.secs_temp dummy
execute as @s run scoreboard players operation @s race.fastest_lap.secs = @s race.fastest_lap
scoreboard players set race.handler race.fastest_lap.secs 20
execute as @s run scoreboard players operation @s race.fastest_lap.secs /= race.handler race.fastest_lap.secs
execute as @s run scoreboard players operation @s race.fastest_lap.secs_temp = @s race.fastest_lap.secs
execute as @s run scoreboard players operation @s race.fastest_lap.secs_temp *= race.handler race.fastest_lap.secs
execute as @s run scoreboard players operation @s race.fastest_lap -= @s race.fastest_lap.secs_temp
scoreboard objectives remove race.fastest_lap.secs_temp

# fix up remaining ticks
scoreboard players set race.handler race.fastest_lap 5
execute as @s run scoreboard players operation @s race.fastest_lap *= race.handler race.fastest_lap

# announce lap time & fastest lap
execute if score @s race.fastest_lap.secs matches 0..9 if score @s race.laptime.seconds matches 0..9 run tellraw @a[team=dim.race] \
        [{selector:"@s"},{text:" completed the race in ",color:green},{score:{name:"@s",objective:race.laptime.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.laptime.seconds},color:green},{text:".",color:green},{score:{name:"@s",objective:race.laptime.tick},color:green},{text:" (",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green},{text:")",color:green}]
execute if score @s race.fastest_lap.secs matches 10.. if score @s race.laptime.seconds matches 0..9 run tellraw @a[team=dim.race] \
        [{selector:"@s"},{text:" completed the race in ",color:green},{score:{name:"@s",objective:race.laptime.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.laptime.seconds},color:green},{text:".",color:green},{score:{name:"@s",objective:race.laptime.tick},color:green},{text:" (",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green},{text:")",color:green}]

execute if score @s race.fastest_lap.secs matches 0..9 if score @s race.laptime.seconds matches 10.. run tellraw @a[team=dim.race] \
        [{selector:"@s"},{text:" completed the race in ",color:green},{score:{name:"@s",objective:race.laptime.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.laptime.seconds},color:green},{text:".",color:green},{score:{name:"@s",objective:race.laptime.tick},color:green},{text:" (",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green},{text:")",color:green}]
execute if score @s race.fastest_lap.secs matches 10.. if score @s race.laptime.seconds matches 10.. run tellraw @a[team=dim.race] \
        [{selector:"@s"},{text:" completed the race in ",color:green},{score:{name:"@s",objective:race.laptime.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.laptime.seconds},color:green},{text:".",color:green},{score:{name:"@s",objective:race.laptime.tick},color:green},{text:" (",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green},{text:")",color:green}]

# teleport player back to race lobby
execute in stmc:race/daveys_descent run tp @s 0 100 197

# reset gameActive
scoreboard players set @s race.gameActive 0

# reset temporary scoreboards
scoreboard objectives remove race.fastest_lap.mins
scoreboard objectives remove race.fastest_lap.secs

# reset player scoreboards

# and set those scoreboards
scoreboard players set @s race.laps_completed 0
scoreboard players set @s race.laptime.1 0
scoreboard players set @s race.laptime.2 0
scoreboard players set @s race.laptime.3 0
scoreboard players set @s race.laptime.4 0
scoreboard players set @s race.laptime.total 0
scoreboard players set @s race.laptime.tick 0
scoreboard players set @s race.laptime.seconds 0
scoreboard players set @s race.laptime.mins 0
scoreboard players set @s race.fastest_lap 0
scoreboard players set @s race.checkpoints_completed 0
scoreboard players set @s race.soundThisTick 0