# <===== FASTEST LAP CALCULATIONS =====>

# quick ranking calculation
function race:calculate_rankings

# but timing calculations
# deriving minutes & seconds from ticks

# determine minutes
scoreboard objectives add race.fastest_lap.mins_temp dummy
execute as @a run scoreboard players operation @s race.fastest_lap.mins = @s race.fastest_lap
scoreboard players set race.handler race.fastest_lap.mins 1200
execute as @a run scoreboard players operation @s race.fastest_lap.mins /= race.handler race.fastest_lap.mins
execute as @a run scoreboard players operation @s race.fastest_lap.mins_temp = @s race.fastest_lap.mins
execute as @a run scoreboard players operation @s race.fastest_lap.mins_temp *= race.handler race.fastest_lap.mins
execute as @a run scoreboard players operation @s race.fastest_lap -= @s race.fastest_lap.mins_temp
scoreboard objectives remove race.fastest_lap.mins_temp

# determine seconds
scoreboard objectives add race.fastest_lap.secs_temp dummy
execute as @a run scoreboard players operation @s race.fastest_lap.secs = @s race.fastest_lap
scoreboard players set race.handler race.fastest_lap.secs 20
execute as @a run scoreboard players operation @s race.fastest_lap.secs /= race.handler race.fastest_lap.secs
execute as @a run scoreboard players operation @s race.fastest_lap.secs_temp = @s race.fastest_lap.secs
execute as @a run scoreboard players operation @s race.fastest_lap.secs_temp *= race.handler race.fastest_lap.secs
execute as @a run scoreboard players operation @s race.fastest_lap -= @s race.fastest_lap.secs_temp
scoreboard objectives remove race.fastest_lap.secs_temp

# fix up remaining ticks
scoreboard players set race.handler race.fastest_lap 5
execute as @a run scoreboard players operation @s race.fastest_lap *= race.handler race.fastest_lap

# <===== FASTEST LAP ANNOUNCEMENT =====>

tellraw @a {"text":"Fastest laps:",color:"white"}
execute as @a if score @s race.fastest_lap.rank matches 1 if score @s race.fastest_lap.secs matches 0..9 run tellraw @a [{text:"[#1]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 1 if score @s race.fastest_lap.secs matches 10.. run tellraw @a [{text:"[#1]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 2 if score @s race.fastest_lap.secs matches 0..9 run tellraw @a [{text:"[#2]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 2 if score @s race.fastest_lap.secs matches 10.. run tellraw @a [{text:"[#2]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 3 if score @s race.fastest_lap.secs matches 0..9 run tellraw @a [{text:"[#3]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 3 if score @s race.fastest_lap.secs matches 10.. run tellraw @a [{text:"[#3]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 4 if score @s race.fastest_lap.secs matches 0..9 run tellraw @a [{text:"[#4]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 4 if score @s race.fastest_lap.secs matches 10.. run tellraw @a [{text:"[#4]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 5 if score @s race.fastest_lap.secs matches 0..9 run tellraw @a [{text:"[#5]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a if score @s race.fastest_lap.rank matches 5 if score @s race.fastest_lap.secs matches 10.. run tellraw @a [{text:"[#5]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a unless score @s race.fastest_lap.rank matches ..5 if score @s race.fastest_lap.secs matches 0..9 run tellraw @s [{text:"[#: ",color:"green"},{score:{name:"@s",objective:race.fastest_lap.rank},color:green},{text:"]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":0",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]
execute as @a unless score @s race.fastest_lap.rank matches ..5 if score @s race.fastest_lap.secs matches 10.. run tellraw @s [{text:"[#: ",color:"green"},{score:{name:"@s",objective:race.fastest_lap.rank},color:green},{text:"]: ",color:"green"},{selector:"@s"},{text:" - ",color:green},{score:{name:"@s",objective:race.fastest_lap.mins},color:green},{text:":",color:green},{score:{name:"@s",objective:race.fastest_lap.secs},color:green},{text:".",color:green},{score:{name:"@s",objective:race.fastest_lap},color:green}]