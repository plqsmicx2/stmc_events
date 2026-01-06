# helper function that automatically pauses the event the # of players online do not match
# how many should be online
 
# calculate current # of non-spectator players online
scoreboard players set stmc.temp event.players 0
execute as @a unless entity @s[team=SPECTATORS] run scoreboard players add stmc.temp event.players 1

# if current # of players != expected # of players, pause the event
execute unless score stmc.temp event.players = stmc.handler event.players run scoreboard players set stmc.handler event.paused 1
# announce the pause
execute unless score stmc.temp event.players = stmc.handler event.players run title @a title {"text":"Event Paused","color":"red"}

# if the player who left was intentional, the original stmc.handler event.players value can be changed
# this function will never run during a games' active period, only in between games