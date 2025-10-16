# tick function for lobby before event

# increment timer
scoreboard players add stmc.handler event.timer.pre_game 1

# seconds reset
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgTickCount 0
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgSecs 18
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.timer.bgMins 2

# seconds timer
scoreboard players add stmc.handler event.timer.bgTickCount 1

execute if score stmc.handler event.timer.bgTickCount matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score stmc.handler event.timer.bgTickCount matches 20 run scoreboard players set stmc.handler event.timer.bgTickCount 0

execute if score stmc.handler event.timer.bgSecs matches 0 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches 0 run scoreboard players set stmc.handler event.timer.bgSecs 60

# run load
execute if score stmc.handler event.timer.pre_game matches 1 run function lobby:pre_event/load

# run functions
function lobby:points_update
function lobby:sidebar

# teleport players to lobby
execute as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] in lobby:lobby run teleport @s 0 101 0

# announce event start
execute if score stmc.handler event.timer.pre_game matches 5 run title @a title {"text":"STMC Invitational", "color":"green", "bold":true}

# announce next game
execute if score stmc.handler event.timer.pre_game matches 1500 run title @a title {"text":"Trials", "color":"dark_aqua"}

# move to first game
execute if score stmc.handler event.timer.pre_game matches 1560 run function trials:start

# reset timer
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.pre_game 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgActive 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgSecs 0
execute if score stmc.handler event.timer.pre_game matches 1560 run scoreboard players set stmc.handler event.timer.bgMins 2

# <===== BANK =====>

# give players bank item
execute as @a run item replace entity @s hotbar.8 with carrot_on_a_stick[item_model="stmc:bank_model",item_name={text:"Bank",color:green,bold:true,italic:true}]

# kill all bank items dropped
execute in lobby:lobby run kill @e[type=item,nbt={Item:{components:{"minecraft:item_model":"stmc:bank_model","minecraft:item_name":{text:"Bank",color:green,bold:true,italic:true}}}}]

# teleport player to bank if they right click it
execute in lobby:lobby as @a if score @s event.voting.bank matches 1.. run tp @s 0 100 0
scoreboard players set @a event.voting.bank 0

# anyone with a successful trade should have their invested tokens converted into a scoreboard
scoreboard objectives add event.voting.investedTokensTemp dummy
execute as @a store result score @s event.voting.investedTokensTemp run clear @s emerald[item_name={text:"Invested Token",color:dark_green,bold:true}] 0
execute as @a run scoreboard players operation @s event.voting.investedTokens += @s event.voting.investedTokensTemp
execute as @a if score @s event.voting.investedTokens matches 50.. run scoreboard players set @s event.voting.investedTokens 50
scoreboard objectives remove event.voting.investedTokensTemp

# and increase players' investment at the start of this phase
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard objectives add event.voting.investedTokensMultiplier dummy
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard objectives add event.voting.investedTokensPrecision dummy
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.voting.investedTokensMultiplier 115
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard players set stmc.handler event.voting.investedTokensPrecision 100
execute as @a if score stmc.handler event.timer.pre_game matches 1 run scoreboard players operation @s event.voting.investedTokens *= stmc.handler event.voting.investedTokensMultiplier
execute as @a if score stmc.handler event.timer.pre_game matches 1 run scoreboard players operation @s event.voting.investedTokens /= stmc.handler event.voting.investedTokensPrecision
execute as @a if score stmc.handler event.timer.pre_game matches 1 if score @s event.voting.investedTokens matches 50.. run title @s title {text:"Invested Tokens Lost",color:red,bold:true}
execute as @a if score stmc.handler event.timer.pre_game matches 1 if score @s event.voting.investedTokens matches 50.. run title @s subtitle {text:"Tokens exceeded 50",color:yellow,italic:true}
execute as @a at @s if score stmc.handler event.timer.pre_game matches 1 if score @s event.voting.investedTokens matches 50.. run playsound minecraft:entity.player.death master @s ~ ~ ~ 1.5 0.3
execute as @a if score stmc.handler event.timer.pre_game matches 1 if score @s event.voting.investedTokens matches 50.. run scoreboard players set @s event.voting.investedTokens 0
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard objectives remove event.voting.investedTokensMultiplier
execute if score stmc.handler event.timer.pre_game matches 1 run scoreboard objectives remove event.voting.investedTokensPrecision