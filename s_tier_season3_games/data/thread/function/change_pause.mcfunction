# function to change the pause status of the event
# if event is paused, it unpauses
# if event is running, it pauses

scoreboard objectives add .pause dummy
scoreboard players operation .thread .pause = stmc.handler event.paused

execute if score .thread .pause matches 0 run scoreboard players set stmc.handler event.paused 1
execute if score .thread .pause matches 1 run scoreboard players set stmc.handler event.paused 0

scoreboard objectives remove .pause