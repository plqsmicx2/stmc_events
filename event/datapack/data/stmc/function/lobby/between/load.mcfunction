# load function for lobbies between games

# this function runs whenever instantiating a lobby

# teleport players to spawn
#execute as @a in stmc:lobby/main run tp @s 0 100 0
tp @a -21 70 -5

# spawnpoint players
spawnpoint @a 0 64 0

# force gamemode
gamemode survival @a

# set time
#night time
#time set 22000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time true
gamerule advance_weather false
gamerule keep_inventory true
gamerule spawn_mobs true
gamerule spawn_monsters true
gamerule pvp false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# set attributes

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

# (re)set all necessary values
scoreboard players set lobby.handler lobby.timer 0
scoreboard players set lobby.handler lobby.timer.voteStage 0
scoreboard players set lobby.handler lobby.timer.temp 0
scoreboard players set lobby.handler lobby.timer.secs 0
scoreboard players set lobby.handler lobby.timer.mins 0

# manually set time to switch to voting stage
execute if score stmc.handler event.stage matches 0 run scoreboard players set lobby.handler lobby.timer.switch 2400
execute if score stmc.handler event.stage matches 2 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 4 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 6 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 8 run scoreboard players set lobby.handler lobby.timer.switch 7200
execute if score stmc.handler event.stage matches 10 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 12 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 14 run scoreboard players set lobby.handler lobby.timer.switch 1200

# and set the max time for the sidebar
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler event.timer.bgMins 2
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

# summon trading villager
#execute in stmc:lobby/main run kill @e[type=villager]
#execute in stmc:lobby/main run summon villager -30 100 30 \ 
        {Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-90F,0F], \
        CustomName:{"bold":true,"color":"dark_green","text":"Banker"}, \
        active_effects:[{id:"minecraft:regeneration",amplifier:4,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \
        VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:jungle"}, \
        Offers:{Recipes:[{rewardExp:0b,maxUses:9999999, \
        buy:{id:"minecraft:sunflower",count:1,components:{"minecraft:item_name":{"color":"#FF6000","text":"Token"}}}, \
        sell:{id:"minecraft:paper",count:1,components:{"minecraft:item_name":{"color":"dark_green","text":"Invested Token"},"minecraft:custom_data":{invest:1b}}}}]}} 

scoreboard players set stmc.handler event.defSidebar 0
scoreboard objectives remove lobby.sidebar