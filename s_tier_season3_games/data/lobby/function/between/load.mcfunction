# load function for lobbies between games

# this function runs whenever instantiating a lobby

# teleport players to spawn
execute as @a in lobby:lobby run tp @s 0 100 0

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

# manually set time to switch to voting stage
execute if score stmc.handler event.stage matches 0 run scoreboard players set lobby.handler lobby.timer.switch 4800
execute if score stmc.handler event.stage matches 2 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 4 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 6 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 8 run scoreboard players set lobby.handler lobby.timer.switch 7200
execute if score stmc.handler event.stage matches 10 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 12 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 14 run scoreboard players set lobby.handler lobby.timer.switch 1200

# and set the max time for the sidebar
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler event.timer.bgMins 4
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler event.timer.bgSecs 0
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler event.timer.bgSecs 30
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler event.timer.bgSecs 30
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler event.timer.bgSecs 30
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler event.timer.bgMins 6
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler event.timer.bgSecs 0
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler event.timer.bgSecs 30
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler event.timer.bgSecs 30
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler event.timer.bgSecs 0

# manually reset each teams' voting count
scoreboard players set lobby.redRaccoons lobby.voting.raceCount 0
scoreboard players set lobby.redRaccoons lobby.voting.solveCount 0
scoreboard players set lobby.redRaccoons lobby.voting.trialsCount 0
scoreboard players set lobby.redRaccoons lobby.voting.collectCount 0
scoreboard players set lobby.redRaccoons lobby.voting.mineCount 0
scoreboard players set lobby.redRaccoons lobby.voting.extractCount 0
scoreboard players set lobby.redRaccoons lobby.voting.blitzCount 0
scoreboard players set lobby.redRaccoons lobby.voting.brawlCount 0

scoreboard players set lobby.orangeOtters lobby.voting.raceCount 0
scoreboard players set lobby.orangeOtters lobby.voting.solveCount 0
scoreboard players set lobby.orangeOtters lobby.voting.trialsCount 0
scoreboard players set lobby.orangeOtters lobby.voting.collectCount 0
scoreboard players set lobby.orangeOtters lobby.voting.mineCount 0
scoreboard players set lobby.orangeOtters lobby.voting.extractCount 0
scoreboard players set lobby.orangeOtters lobby.voting.blitzCount 0
scoreboard players set lobby.orangeOtters lobby.voting.brawlCount 0

scoreboard players set lobby.pinkPikas lobby.voting.raceCount 0
scoreboard players set lobby.pinkPikas lobby.voting.solveCount 0
scoreboard players set lobby.pinkPikas lobby.voting.trialsCount 0
scoreboard players set lobby.pinkPikas lobby.voting.collectCount 0
scoreboard players set lobby.pinkPikas lobby.voting.mineCount 0
scoreboard players set lobby.pinkPikas lobby.voting.extractCount 0
scoreboard players set lobby.pinkPikas lobby.voting.blitzCount 0
scoreboard players set lobby.pinkPikas lobby.voting.brawlCount 0

scoreboard players set lobby.yellowYaks lobby.voting.raceCount 0
scoreboard players set lobby.yellowYaks lobby.voting.solveCount 0
scoreboard players set lobby.yellowYaks lobby.voting.trialsCount 0
scoreboard players set lobby.yellowYaks lobby.voting.collectCount 0
scoreboard players set lobby.yellowYaks lobby.voting.mineCount 0
scoreboard players set lobby.yellowYaks lobby.voting.extractCount 0
scoreboard players set lobby.yellowYaks lobby.voting.blitzCount 0
scoreboard players set lobby.yellowYaks lobby.voting.brawlCount 0

scoreboard players set lobby.greenGoats lobby.voting.raceCount 0
scoreboard players set lobby.greenGoats lobby.voting.solveCount 0
scoreboard players set lobby.greenGoats lobby.voting.trialsCount 0
scoreboard players set lobby.greenGoats lobby.voting.collectCount 0
scoreboard players set lobby.greenGoats lobby.voting.mineCount 0
scoreboard players set lobby.greenGoats lobby.voting.extractCount 0
scoreboard players set lobby.greenGoats lobby.voting.blitzCount 0
scoreboard players set lobby.greenGoats lobby.voting.brawlCount 0

scoreboard players set lobby.cyanCougars lobby.voting.raceCount 0
scoreboard players set lobby.cyanCougars lobby.voting.solveCount 0
scoreboard players set lobby.cyanCougars lobby.voting.trialsCount 0
scoreboard players set lobby.cyanCougars lobby.voting.collectCount 0
scoreboard players set lobby.cyanCougars lobby.voting.mineCount 0
scoreboard players set lobby.cyanCougars lobby.voting.extractCount 0
scoreboard players set lobby.cyanCougars lobby.voting.blitzCount 0
scoreboard players set lobby.cyanCougars lobby.voting.brawlCount 0

scoreboard players set lobby.purplePenguins lobby.voting.raceCount 0
scoreboard players set lobby.purplePenguins lobby.voting.solveCount 0
scoreboard players set lobby.purplePenguins lobby.voting.trialsCount 0
scoreboard players set lobby.purplePenguins lobby.voting.collectCount 0
scoreboard players set lobby.purplePenguins lobby.voting.mineCount 0
scoreboard players set lobby.purplePenguins lobby.voting.extractCount 0
scoreboard players set lobby.purplePenguins lobby.voting.blitzCount 0
scoreboard players set lobby.purplePenguins lobby.voting.brawlCount 0

scoreboard players set lobby.blueBears lobby.voting.raceCount 0
scoreboard players set lobby.blueBears lobby.voting.solveCount 0
scoreboard players set lobby.blueBears lobby.voting.trialsCount 0
scoreboard players set lobby.blueBears lobby.voting.collectCount 0
scoreboard players set lobby.blueBears lobby.voting.mineCount 0
scoreboard players set lobby.blueBears lobby.voting.extractCount 0
scoreboard players set lobby.blueBears lobby.voting.blitzCount 0
scoreboard players set lobby.blueBears lobby.voting.brawlCount 0

# set stage
scoreboard players set lobby.handler lobby.stage 0

# summon trading villager
execute in lobby:lobby run kill @e[type=villager]
execute in lobby:lobby run summon villager -30 100 30 \ 
        {Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-90F,0F], \
        CustomName:{"bold":true,"color":"dark_green","text":"Banker"}, \
        active_effects:[{id:"minecraft:regeneration",amplifier:4,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \
        VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:jungle"}, \
        Offers:{Recipes:[{rewardExp:0b,maxUses:9999999, \
        buy:{id:"minecraft:sunflower",count:1,components:{"minecraft:item_name":{"color":"#FF6000","text":"Token"}}}, \
        sell:{id:"minecraft:paper",count:1,components:{"minecraft:item_name":{"color":"dark_green","text":"Invested Token"},"minecraft:custom_data":{invest:1b}}}}]}} 

scoreboard objectives remove lobby.sidebar