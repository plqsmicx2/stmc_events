# Helper function for tick
# this function runs as @s for all players currently racing

# <===== INCREMENT TIMERS =====>

# increment players' timers
execute if score @s race.laps_completed matches 0 run scoreboard players add @s race.laptime.1 1
execute if score @s race.laps_completed matches 1 run scoreboard players add @s race.laptime.2 1
execute if score @s race.laps_completed matches 2 run scoreboard players add @s race.laptime.3 1
#execute if score @s race.laps_completed matches 3 run scoreboard players add @s race.laptime.4 1

# sum timers
scoreboard players set @s race.laptime.total 0
scoreboard players operation @s race.laptime.total += @s race.laptime.1
scoreboard players operation @s race.laptime.total += @s race.laptime.2
scoreboard players operation @s race.laptime.total += @s race.laptime.3
#scoreboard players operation @s race.laptime.total += @s race.laptime.4

# increment each players' lap times for display
execute if score @s race.laps_completed matches 0..2 run scoreboard players add @s race.laptime.tick 1

execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.tick matches 20 run scoreboard players add @s race.laptime.seconds 1
execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.tick matches 20 run scoreboard players set @s race.laptime.tick 0

execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.seconds matches 60 run scoreboard players add @s race.laptime.mins 1
execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.seconds matches 60 run scoreboard players set @s race.laptime.seconds 0

# announce player current time
execute if score @s race.laptime.seconds matches 0..9 run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":0",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]
execute if score @s race.laptime.seconds matches 10.. run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]

# <===== LAP COMPLETIONS =====>

# checkpoint update (also checks for lap completions)
execute unless score @s race.laps_completed matches 3.. as @s run function stmc:games/race/api/checkpoint/tick

execute if score @s race.effectDelay matches 0.. run scoreboard players remove @s race.effectDelay 1

# give return to last checkpoint item
item replace entity @s hotbar.7 with warped_fungus_on_a_stick[item_model="red_dye",custom_name={text:"Return",color:red,bold:true}] 1

# check for checkpoint returns
execute if score @s race.return matches 1.. as @s in stmc:race/daveys_descent if score @s race.gameActive matches 1 run \
        function stmc:games/race/api/checkpoint/daveys_divide/return
execute if score @s race.return matches 1.. as @s in stmc:race/daveys_descent if score @s race.gameActive matches 2 run \
        function stmc:games/race/api/checkpoint/daveys_descent/return
scoreboard players set @s race.return 0

# give reset course item
item replace entity @s hotbar.6 with apple[\
        item_model="orange_dye",\
        custom_name={text:"Reset Course",color:red,bold:true},\
        food={can_always_eat:true,nutrition:0,saturation:0},\
        consumable={consume_seconds:0}\
] 1

# check for course resets
execute if score @s race.reset matches 1.. if score @s race.gameActive matches 1.. as @s run \
        function stmc:games/race/teleport
scoreboard players set @s race.reset 0

# tick individual maps
execute as @s if score @s race.gameActive matches 1 run function stmc:games/race/api/game/daveys_divide/tick
execute as @s if score @s race.gameActive matches 2 run function stmc:games/race/api/game/daveys_descent/tick
execute as @s if score @s race.gameActive matches 3 run function stmc:games/race/api/game/daveys_dream/tick

# run reset on players once they complete
execute if score @s race.laps_completed matches 3.. as @s run function stmc:games/race/api/game/reset

# store player/team completion ranks & announce completion
execute if score @s race.laps_completed matches 3.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 0..9 run tellraw @s ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":0",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute if score @s race.laps_completed matches 3.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 10.. run tellraw @s ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]