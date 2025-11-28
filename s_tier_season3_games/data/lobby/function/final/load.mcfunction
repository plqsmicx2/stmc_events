# load function for lobbies between games

# this function runs whenever instantiating a lobby

# teleport players to spawn
execute as @a in lobby:lobby run tp @s 0 100 0

# spawnpoint players
execute as @a in lobby:lobby run spawnpoint @s 0 100 0 0 0

# force gamemode
gamemode adventure @a

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all
effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

# set attributes
execute as @a run attribute @s attack_damage base set 0
execute as @a run attribute @s knockback_resistance base set 1000

# set xp
xp set @a 0 levels
xp set @a 0 points

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify YELLOW_YAKS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never
team modify BLUE_BEARS collisionRule never

# reset chest loot
execute in lobby:lobby run fill -60 60 -80 60 160 110 chest[facing=north]{LootTable:"lobby:chest"} replace chest[facing=north]
execute in lobby:lobby run fill -60 60 -80 60 160 110 chest[facing=east]{LootTable:"lobby:chest"} replace chest[facing=east]
execute in lobby:lobby run fill -60 60 -80 60 160 110 chest[facing=south]{LootTable:"lobby:chest"} replace chest[facing=south]
execute in lobby:lobby run fill -60 60 -80 60 160 110 chest[facing=west]{LootTable:"lobby:chest"} replace chest[facing=west]
# reset copper chest loot
execute in lobby:lobby run fill -60 60 -80 60 160 110 copper_chest[facing=north]{LootTable:"lobby:chest"} replace copper_chest[facing=north]
execute in lobby:lobby run fill -60 60 -80 60 160 110 copper_chest[facing=east]{LootTable:"lobby:chest"} replace copper_chest[facing=east]
execute in lobby:lobby run fill -60 60 -80 60 160 110 copper_chest[facing=south]{LootTable:"lobby:chest"} replace copper_chest[facing=south]
execute in lobby:lobby run fill -60 60 -80 60 160 110 copper_chest[facing=west]{LootTable:"lobby:chest"} replace copper_chest[facing=west]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add lobby.timer dummy
scoreboard objectives add lobby.timer.voteStage dummy
scoreboard objectives add lobby.timer.temp dummy
scoreboard objectives add lobby.timer.secs dummy
scoreboard objectives add lobby.timer.mins dummy
scoreboard objectives add lobby.timer.switch dummy
# stats
scoreboard objectives add lobby.voting.raceCount dummy
scoreboard objectives add lobby.voting.solveCount dummy
scoreboard objectives add lobby.voting.trialsCount dummy
scoreboard objectives add lobby.voting.collectCount dummy
scoreboard objectives add lobby.voting.mineCount dummy
scoreboard objectives add lobby.voting.extractCount dummy
scoreboard objectives add lobby.voting.blitzCount dummy
scoreboard objectives add lobby.voting.brawlCount dummy

# (re)set all necessary values
scoreboard players set lobby.handler lobby.timer 0
scoreboard players set lobby.handler lobby.timer.voteStage 0
scoreboard players set lobby.handler lobby.timer.temp 0
scoreboard players set lobby.handler lobby.timer.secs 0
scoreboard players set lobby.handler lobby.timer.mins 0

# and set the max time for the sidebar
scoreboard players set stmc.handler event.timer.bgMins 1
scoreboard players set stmc.handler event.timer.bgSecs 0

scoreboard objectives remove lobby.sidebar