function survival_games:round3/points_update
function survival_games:points_update

# <===== KILLS CALCULATIONS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add sg.kills.temp dummy
execute as @a run scoreboard players operation @s sg.kills.temp = @s sg.kills

# and reset our rankings
execute as @a run scoreboard players set @s sg.kills.rank -1

# set our highest value to -1
scoreboard players set $sg.highest sg.kills.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $extract.highest sg.kills.temp > @s sg.kills.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s sg.kills.temp = $extract.highest sg.kills.temp unless score @s sg.kills.rank matches 0.. run scoreboard players set @s sg.kills.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s sg.kills.rank matches 1 run scoreboard players reset @s sg.kills.temp

# and repeat 4 times
scoreboard players set $extract.highest sg.kills.temp -1
execute as @a run scoreboard players operation $extract.highest sg.kills.temp > @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $extract.highest sg.kills.temp unless score @s sg.kills.rank matches 0.. run scoreboard players set @s sg.kills.rank 2
execute as @a if score @s sg.kills.rank matches 2 run scoreboard players reset @s sg.kills.temp
scoreboard players set $extract.highest sg.kills.temp -1
execute as @a run scoreboard players operation $extract.highest sg.kills.temp > @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $extract.highest sg.kills.temp unless score @s sg.kills.rank matches 0.. run scoreboard players set @s sg.kills.rank 3
execute as @a if score @s sg.kills.rank matches 3 run scoreboard players reset @s sg.kills.temp
scoreboard players set $extract.highest sg.kills.temp -1
execute as @a run scoreboard players operation $extract.highest sg.kills.temp > @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $extract.highest sg.kills.temp unless score @s sg.kills.rank matches 0.. run scoreboard players set @s sg.kills.rank 4
execute as @a if score @s sg.kills.rank matches 4 run scoreboard players reset @s sg.kills.temp
scoreboard players set $extract.highest sg.kills.temp -1
execute as @a run scoreboard players operation $extract.highest sg.kills.temp > @s sg.kills.temp
execute as @a if score @s sg.kills.temp = $extract.highest sg.kills.temp unless score @s sg.kills.rank matches 0.. run scoreboard players set @s sg.kills.rank 5
scoreboard players reset @s sg.kills.temp

tellraw @a {text:"Top Killers:",color:red}
execute as @a if score @s sg.kills.rank matches 1 run tellraw @a [{text:"[#1]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"sg.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s sg.kills.rank matches 2 run tellraw @a [{text:"[#2]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"sg.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s sg.kills.rank matches 3 run tellraw @a [{text:"[#3]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"sg.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s sg.kills.rank matches 4 run tellraw @a [{text:"[#4]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"sg.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s sg.kills.rank matches 5 run tellraw @a [{text:"[#5]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"sg.kills"},color:red},{text:" kills",color:red}]
