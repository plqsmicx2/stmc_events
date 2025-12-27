
# Game Settings

# scores
data modify storage dungeons:data roomOne set value 8
data modify storage dungeons:data roomTwo set value 16
data modify storage dungeons:data roomThree set value 24
data modify storage dungeons:data roomFour set value 32
data modify storage dungeons:data roomFive set value 40
data modify storage dungeons:data roomSix set value 60

data modify storage dungeons:data roomFirst set value 8
data modify storage dungeons:data roomSecond set value 6
data modify storage dungeons:data roomThird set value 4
data modify storage dungeons:data roomFourth set value 2

data modify storage dungeons:data overallFirst set value 60
data modify storage dungeons:data overallSecond set value 48
data modify storage dungeons:data overallThird set value 40
data modify storage dungeons:data overallFourth set value 32
data modify storage dungeons:data overallFifth set value 24
data modify storage dungeons:data overallSixth set value 16
data modify storage dungeons:data overallSeventh set value 8
data modify storage dungeons:data overallEighth set value 0

#effects
clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 110
effect give @a night_vision infinite 0 true
xp set @a 0 levels
xp set @a 0 points
gamemode adventure @a

#gamerules
gamerule mob_drops false
gamerule spawn_mobs false
#may allow mob spawning in other dimensions
gamerule pvp false

#scoreboard setup
function stmc:games/dungeons/scores

#reset timers
scoreboard players set dungeons.handler dungeons.timer.delay1 0
scoreboard players set dungeons.handler dungeons.timer.explanation 0
scoreboard players set dungeons.handler dungeons.timer.delay2 0
scoreboard players set dungeons.handler dungeons.timer.announcements 0

scoreboard players reset dungeons.handler dungeons.timer
scoreboard players set dungeons.handler dungeons.timer_inverse 18000

#reset all room completions
#room 2 and 5 have multiple doors (rooms) to open
scoreboard players set BLUE_BEARS dungeons.room 0
scoreboard players set CYAN_COUGARS dungeons.room 0
scoreboard players set RED_RACCOONS dungeons.room 0
scoreboard players set GREEN_GOATS dungeons.room 0
scoreboard players set PURPLE_PENGUINS dungeons.room 0
scoreboard players set ORANGE_OTTERS dungeons.room 0
scoreboard players set YELLOW_YAKS dungeons.room 0
scoreboard players set PINK_PIKAS dungeons.room 0
scoreboard players reset BLUE_BEARS dungeons.timer.0
scoreboard players reset CYAN_COUGARS dungeons.timer.0
scoreboard players reset RED_RACCOONS dungeons.timer.0
scoreboard players reset GREEN_GOATS dungeons.timer.0
scoreboard players reset PURPLE_PENGUINS dungeons.timer.0
scoreboard players reset ORANGE_OTTERS dungeons.timer.0
scoreboard players reset YELLOW_YAKS dungeons.timer.0
scoreboard players reset PINK_PIKAS dungeons.timer.0
scoreboard players reset BLUE_BEARS dungeons.timer.1
scoreboard players reset CYAN_COUGARS dungeons.timer.1
scoreboard players reset RED_RACCOONS dungeons.timer.1
scoreboard players reset GREEN_GOATS dungeons.timer.1
scoreboard players reset PURPLE_PENGUINS dungeons.timer.1
scoreboard players reset ORANGE_OTTERS dungeons.timer.1
scoreboard players reset YELLOW_YAKS dungeons.timer.1
scoreboard players reset PINK_PIKAS dungeons.timer.1
scoreboard players reset BLUE_BEARS dungeons.timer.3
scoreboard players reset CYAN_COUGARS dungeons.timer.3
scoreboard players reset RED_RACCOONS dungeons.timer.3
scoreboard players reset GREEN_GOATS dungeons.timer.3
scoreboard players reset PURPLE_PENGUINS dungeons.timer.3
scoreboard players reset ORANGE_OTTERS dungeons.timer.3
scoreboard players reset YELLOW_YAKS dungeons.timer.3
scoreboard players reset PINK_PIKAS dungeons.timer.3
scoreboard players reset BLUE_BEARS dungeons.timer.4
scoreboard players reset CYAN_COUGARS dungeons.timer.4
scoreboard players reset RED_RACCOONS dungeons.timer.4
scoreboard players reset GREEN_GOATS dungeons.timer.4
scoreboard players reset PURPLE_PENGUINS dungeons.timer.4
scoreboard players reset ORANGE_OTTERS dungeons.timer.4
scoreboard players reset YELLOW_YAKS dungeons.timer.4
scoreboard players reset PINK_PIKAS dungeons.timer.4
scoreboard players reset BLUE_BEARS dungeons.timer.5
scoreboard players reset CYAN_COUGARS dungeons.timer.5
scoreboard players reset RED_RACCOONS dungeons.timer.5
scoreboard players reset GREEN_GOATS dungeons.timer.5
scoreboard players reset PURPLE_PENGUINS dungeons.timer.5
scoreboard players reset ORANGE_OTTERS dungeons.timer.5
scoreboard players reset YELLOW_YAKS dungeons.timer.5
scoreboard players reset PINK_PIKAS dungeons.timer.5
scoreboard players reset BLUE_BEARS dungeons.timer.8
scoreboard players reset CYAN_COUGARS dungeons.timer.8
scoreboard players reset RED_RACCOONS dungeons.timer.8
scoreboard players reset GREEN_GOATS dungeons.timer.8
scoreboard players reset PURPLE_PENGUINS dungeons.timer.8
scoreboard players reset ORANGE_OTTERS dungeons.timer.8
scoreboard players reset YELLOW_YAKS dungeons.timer.8
scoreboard players reset PINK_PIKAS dungeons.timer.8
scoreboard players reset BLUE_BEARS dungeons.timer.8
scoreboard players reset CYAN_COUGARS dungeons.timer.8
scoreboard players reset RED_RACCOONS dungeons.timer.8
scoreboard players reset GREEN_GOATS dungeons.timer.8
scoreboard players reset PURPLE_PENGUINS dungeons.timer.8
scoreboard players reset ORANGE_OTTERS dungeons.timer.8
scoreboard players reset YELLOW_YAKS dungeons.timer.8
scoreboard players reset PINK_PIKAS dungeons.timer.8
#reset displayed room completions
scoreboard players set BLUE_BEARS dungeons.roomdisplay 0
scoreboard players set CYAN_COUGARS dungeons.roomdisplay 0
scoreboard players set RED_RACCOONS dungeons.roomdisplay 0
scoreboard players set GREEN_GOATS dungeons.roomdisplay 0
scoreboard players set PURPLE_PENGUINS dungeons.roomdisplay 0
scoreboard players set ORANGE_OTTERS dungeons.roomdisplay 0
scoreboard players set YELLOW_YAKS dungeons.roomdisplay 0
scoreboard players set PINK_PIKAS dungeons.roomdisplay 0

#sidebar temporary
scoreboard objectives setdisplay sidebar dungeons.roomdisplay
scoreboard players set ------ dungeons.roomdisplay 10

#bossbar timer
bossbar add dungeons.timer "Time Remaining"
bossbar set minecraft:dungeons.timer players @a
bossbar set minecraft:dungeons.timer max 18000
bossbar set minecraft:dungeons.timer value 18000

#items
item replace entity @a hotbar.0 with wooden_sword[unbreakable={}]
item replace entity @a hotbar.8 with lantern


forceload add -16 -3 14 140

kill @e[type=!player]

tp @a[team=BLUE_BEARS] 0 30 0
tp @a[team=CYAN_COUGARS] 0 60 0
tp @a[team=RED_RACCOONS] 0 90 0
tp @a[team=GREEN_GOATS] 0 120 0
tp @a[team=PURPLE_PENGUINS] 0 150 0
tp @a[team=ORANGE_OTTERS] 0 180 0
tp @a[team=YELLOW_YAKS] 0 210 0
tp @a[team=PINK_PIKAS] 0 240 0

# reset sidebar
scoreboard objectives remove dungeons.sidebar