
#effects
clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
xp set @a 0 levels
xp set @a 0 points
gamemode adventure @a

#gamerules
gamerule doMobLoot false
gamerule doMobSpawning true
#may allow mob spawning in other dimensions
gamerule pvp false

#reset timers
scoreboard players reset dungeon.handler dungeon.timer
scoreboard players set dungeon.handler dungeon.timer_inverse 18000

#reset all room completions
#room 2 and 5 have multiple doors (rooms) to open
scoreboard players set BLUE_BEARS dungeon.room 0
scoreboard players set CYAN_COUGARS dungeon.room 0
scoreboard players set RED_RACCOONS dungeon.room 0
scoreboard players set GREEN_GOATS dungeon.room 0
scoreboard players set PURPLE_PENGUINS dungeon.room 0
scoreboard players set ORANGE_OTTERS dungeon.room 0
scoreboard players set YELLOW_YAKS dungeon.room 0
scoreboard players set PINK_PIKAS dungeon.room 0
scoreboard players reset BLUE_BEARS dungeon.timer.0
scoreboard players reset CYAN_COUGARS dungeon.timer.0
scoreboard players reset RED_RACCOONS dungeon.timer.0
scoreboard players reset GREEN_GOATS dungeon.timer.0
scoreboard players reset PURPLE_PENGUINS dungeon.timer.0
scoreboard players reset ORANGE_OTTERS dungeon.timer.0
scoreboard players reset YELLOW_YAKS dungeon.timer.0
scoreboard players reset PINK_PIKAS dungeon.timer.0
scoreboard players reset BLUE_BEARS dungeon.timer.1
scoreboard players reset CYAN_COUGARS dungeon.timer.1
scoreboard players reset RED_RACCOONS dungeon.timer.1
scoreboard players reset GREEN_GOATS dungeon.timer.1
scoreboard players reset PURPLE_PENGUINS dungeon.timer.1
scoreboard players reset ORANGE_OTTERS dungeon.timer.1
scoreboard players reset YELLOW_YAKS dungeon.timer.1
scoreboard players reset PINK_PIKAS dungeon.timer.1
scoreboard players reset BLUE_BEARS dungeon.timer.3
scoreboard players reset CYAN_COUGARS dungeon.timer.3
scoreboard players reset RED_RACCOONS dungeon.timer.3
scoreboard players reset GREEN_GOATS dungeon.timer.3
scoreboard players reset PURPLE_PENGUINS dungeon.timer.3
scoreboard players reset ORANGE_OTTERS dungeon.timer.3
scoreboard players reset YELLOW_YAKS dungeon.timer.3
scoreboard players reset PINK_PIKAS dungeon.timer.3
scoreboard players reset BLUE_BEARS dungeon.timer.4
scoreboard players reset CYAN_COUGARS dungeon.timer.4
scoreboard players reset RED_RACCOONS dungeon.timer.4
scoreboard players reset GREEN_GOATS dungeon.timer.4
scoreboard players reset PURPLE_PENGUINS dungeon.timer.4
scoreboard players reset ORANGE_OTTERS dungeon.timer.4
scoreboard players reset YELLOW_YAKS dungeon.timer.4
scoreboard players reset PINK_PIKAS dungeon.timer.4
scoreboard players reset BLUE_BEARS dungeon.timer.5
scoreboard players reset CYAN_COUGARS dungeon.timer.5
scoreboard players reset RED_RACCOONS dungeon.timer.5
scoreboard players reset GREEN_GOATS dungeon.timer.5
scoreboard players reset PURPLE_PENGUINS dungeon.timer.5
scoreboard players reset ORANGE_OTTERS dungeon.timer.5
scoreboard players reset YELLOW_YAKS dungeon.timer.5
scoreboard players reset PINK_PIKAS dungeon.timer.5
scoreboard players reset BLUE_BEARS dungeon.timer.8
scoreboard players reset CYAN_COUGARS dungeon.timer.8
scoreboard players reset RED_RACCOONS dungeon.timer.8
scoreboard players reset GREEN_GOATS dungeon.timer.8
scoreboard players reset PURPLE_PENGUINS dungeon.timer.8
scoreboard players reset ORANGE_OTTERS dungeon.timer.8
scoreboard players reset YELLOW_YAKS dungeon.timer.8
scoreboard players reset PINK_PIKAS dungeon.timer.8
scoreboard players reset BLUE_BEARS dungeon.timer.8
scoreboard players reset CYAN_COUGARS dungeon.timer.8
scoreboard players reset RED_RACCOONS dungeon.timer.8
scoreboard players reset GREEN_GOATS dungeon.timer.8
scoreboard players reset PURPLE_PENGUINS dungeon.timer.8
scoreboard players reset ORANGE_OTTERS dungeon.timer.8
scoreboard players reset YELLOW_YAKS dungeon.timer.8
scoreboard players reset PINK_PIKAS dungeon.timer.8
#reset displayed room completions
scoreboard players set BLUE_BEARS dungeon.roomdisplay 0
scoreboard players set CYAN_COUGARS dungeon.roomdisplay 0
scoreboard players set RED_RACCOONS dungeon.roomdisplay 0
scoreboard players set GREEN_GOATS dungeon.roomdisplay 0
scoreboard players set PURPLE_PENGUINS dungeon.roomdisplay 0
scoreboard players set ORANGE_OTTERS dungeon.roomdisplay 0
scoreboard players set YELLOW_YAKS dungeon.roomdisplay 0
scoreboard players set PINK_PIKAS dungeon.roomdisplay 0
scoreboard players set event.handler event.stage.lobby 0
scoreboard players set event.handler event.stage.dungeon 1

#sidebar temporary
scoreboard objectives setdisplay sidebar dungeon.roomdisplay
scoreboard players set ------ dungeon.roomdisplay 10

#bossbar timer
bossbar add dungeon.timer "Time Remaining"
bossbar set minecraft:dungeon.timer players @a
bossbar set minecraft:dungeon.timer max 18000
bossbar set minecraft:dungeon.timer value 18000

#items
item replace entity @a hotbar.0 with wooden_sword[unbreakable={}]
item replace entity @a hotbar.8 with lantern


forceload add -16 -3 14 140

clone 14 7 140 -16 -4 -3 -16 26 -3
clone 14 7 140 -16 -4 -3 -16 56 -3
clone 14 7 140 -16 -4 -3 -16 86 -3
clone 14 7 140 -16 -4 -3 -16 116 -3
clone 14 7 140 -16 -4 -3 -16 146 -3
clone 14 7 140 -16 -4 -3 -16 176 -3
clone 14 7 140 -16 -4 -3 -16 206 -3
clone 14 7 140 -16 -4 -3 -16 236 -3

kill @e[type=!player]

tp @a[team=BLUE_BEARS] 0 30 0
#tp @a[team=CYAN_COUGARS] 0 60 0
#tp @a[team=RED_RACCOONS] 0 90 0
#tp @a[team=GREEN_GOATS] 0 120 0
#tp @a[team=PURPLE_PENGUINS] 0 150 0
#tp @a[team=ORANGE_OTTERS] 0 180 0
#tp @a[team=YELLOW_YAKS] 0 210 0
#tp @a[team=PINK_PIKAS] 0 240 0