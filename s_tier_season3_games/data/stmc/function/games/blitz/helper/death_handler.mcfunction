# helper function that handles everything done when a player dies

# if player has no core, set their spawn to the center
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 0 as @a[team=RED_RACCOONS] at @s run spawnpoint @s 0 115 0
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 0 as @a[team=ORANGE_OTTERS] at @s run spawnpoint @s 0 115 0
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 0 as @a[team=PINK_PIKAS] at @s run spawnpoint @s 0 115 0
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 0 as @a[team=YELLOW_YAKS] at @s run spawnpoint @s 0 115 0
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 0 as @a[team=GREEN_GOATS] at @s run spawnpoint @s 0 115 0
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 0 as @a[team=CYAN_COUGARS] at @s run spawnpoint @s 0 115 0
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 0 as @a[team=PURPLE_PENGUINS] at @s run spawnpoint @s 0 115 0
execute if score blitz.BlueBears blitz.stats.coreIntact matches 0 as @a[team=BLUE_BEARS] at @s run spawnpoint @s 0 115 0

# check if there was a death this tick
scoreboard objectives add blitz.deathThisTick dummy
execute as @a[scores={blitz.alive=1}] if score @s blitz.death matches 1.. run scoreboard players set blitz.handler blitz.deathThisTick 1
execute if score blitz.handler blitz.deathThisTick matches 1.. as @a[scores={blitz.alive=1}] \
        if score @s blitz.death matches 1.. as @s run function stmc:games/blitz/helper/death_this_tick
scoreboard objectives remove blitz.deathThisTick

# respawn players
execute as @a if score @s blitz.stats.respawn matches 1.. run scoreboard players remove @s blitz.stats.respawn 1
execute as @a if score @s blitz.stats.respawn matches 1 run gamemode adventure @s
execute as @a[team=RED_RACCOONS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s -36 106.5 100
execute as @a[team=ORANGE_OTTERS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s -36 106.5 -100
execute as @a[team=PINK_PIKAS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s 100 106.5 -36
execute as @a[team=YELLOW_YAKS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s 100 106.5 36
execute as @a[team=GREEN_GOATS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s 36 106.5 -100
execute as @a[team=CYAN_COUGARS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s -100 106.5 -36
execute as @a[team=PURPLE_PENGUINS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s -100 106.5 36
execute as @a[team=BLUE_BEARS] if score @s blitz.stats.respawn matches 1 in stmc:blitz run tp @s 36 106.5 100
execute as @a if score @s blitz.stats.respawn matches 1 at @s in stmc:blitz run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace #stmc:concrete

# announce active respawn timer
execute as @a if score @s blitz.stats.respawn matches 100 run title @s title {text:"5",color:"light_purple"}
execute as @a if score @s blitz.stats.respawn matches 100 at @s run \
        playsound block.note_block.pling player @s ~ ~ ~ 2 1
execute as @a if score @s blitz.stats.respawn matches 80 run title @s title {text:"4",color:"light_purple"}
execute as @a if score @s blitz.stats.respawn matches 80 at @s run \
        playsound block.note_block.pling player @s ~ ~ ~ 2 1.2
execute as @a if score @s blitz.stats.respawn matches 60 run title @s title {text:"3",color:"light_purple"}
execute as @a if score @s blitz.stats.respawn matches 60 at @s run \
        playsound block.note_block.pling player @s ~ ~ ~ 2 1.4
execute as @a if score @s blitz.stats.respawn matches 40 run title @s title {text:"2",color:"light_purple"}
execute as @a if score @s blitz.stats.respawn matches 40 at @s run \
        playsound block.note_block.pling player @s ~ ~ ~ 2 1.6
execute as @a if score @s blitz.stats.respawn matches 20 run title @s title {text:"1",color:"light_purple"}
execute as @a if score @s blitz.stats.respawn matches 20 at @s run \
        playsound block.note_block.pling player @s ~ ~ ~ 4 2

# ensure players are in the right gamemode
execute as @a if score @s blitz.stats.respawn matches 2.. run gamemode spectator @s
execute as @a unless score @s blitz.alive matches 1.. run gamemode spectator @s

# check players on each team
scoreboard players set blitz.RedRaccoons blitz.stats.playersAlive 0
execute as @a[team=RED_RACCOONS] if score @s blitz.alive matches 1 run scoreboard players add blitz.RedRaccoons blitz.stats.playersAlive 1
scoreboard players set blitz.OrangeOtters blitz.stats.playersAlive 0
execute as @a[team=ORANGE_OTTERS] if score @s blitz.alive matches 1 run scoreboard players add blitz.OrangeOtters blitz.stats.playersAlive 1
scoreboard players set blitz.PinkPikas blitz.stats.playersAlive 0
execute as @a[team=PINK_PIKAS] if score @s blitz.alive matches 1 run scoreboard players add blitz.PinkPikas blitz.stats.playersAlive 1
scoreboard players set blitz.YellowYaks blitz.stats.playersAlive 0
execute as @a[team=YELLOW_YAKS] if score @s blitz.alive matches 1 run scoreboard players add blitz.YellowYaks blitz.stats.playersAlive 1
scoreboard players set blitz.GreenGoats blitz.stats.playersAlive 0
execute as @a[team=GREEN_GOATS] if score @s blitz.alive matches 1 run scoreboard players add blitz.GreenGoats blitz.stats.playersAlive 1
scoreboard players set blitz.CyanCougars blitz.stats.playersAlive 0
execute as @a[team=CYAN_COUGARS] if score @s blitz.alive matches 1 run scoreboard players add blitz.CyanCougars blitz.stats.playersAlive 1
scoreboard players set blitz.PurplePenguins blitz.stats.playersAlive 0
execute as @a[team=PURPLE_PENGUINS] if score @s blitz.alive matches 1 run scoreboard players add blitz.PurplePenguins blitz.stats.playersAlive 1
scoreboard players set blitz.BlueBears blitz.stats.playersAlive 0
execute as @a[team=BLUE_BEARS] if score @s blitz.alive matches 1 run scoreboard players add blitz.BlueBears blitz.stats.playersAlive 1

# check teams alive
scoreboard players set blitz.handler blitz.stats.teamsAlive 0
execute if score blitz.RedRaccoons blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.OrangeOtters blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.PinkPikas blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.YellowYaks blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.GreenGoats blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.CyanCougars blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.PurplePenguins blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.BlueBears blitz.stats.playersAlive matches 1.. run scoreboard players add blitz.handler blitz.stats.teamsAlive 1

# if a team is dead & doesn't have a placement, set theirs
# add 1 to teamsAlive to get currentPlacement
scoreboard players add blitz.handler blitz.stats.teamsAlive 1
execute if score blitz.RedRaccoons blitz.stats.playersAlive matches 0 unless score blitz.RedRaccoons blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.RedRaccoons blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.OrangeOtters blitz.stats.playersAlive matches 0 unless score blitz.OrangeOtters blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.OrangeOtters blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.PinkPikas blitz.stats.playersAlive matches 0 unless score blitz.PinkPikas blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.PinkPikas blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.YellowYaks blitz.stats.playersAlive matches 0 unless score blitz.YellowYaks blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.YellowYaks blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.GreenGoats blitz.stats.playersAlive matches 0 unless score blitz.GreenGoats blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.GreenGoats blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.CyanCougars blitz.stats.playersAlive matches 0 unless score blitz.CyanCougars blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.CyanCougars blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.PurplePenguins blitz.stats.playersAlive matches 0 unless score blitz.PurplePenguins blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.PurplePenguins blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
execute if score blitz.BlueBears blitz.stats.playersAlive matches 0 unless score blitz.BlueBears blitz.stats.teamPlacement matches 1.. run \
        scoreboard players operation blitz.BlueBears blitz.stats.teamPlacement = blitz.handler blitz.stats.teamsAlive
scoreboard players remove blitz.handler blitz.stats.teamsAlive 1