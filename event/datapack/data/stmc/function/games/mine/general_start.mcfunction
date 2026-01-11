clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
effect give @a mining_fatigue 5 2 true
gamemode spectator @a[team=SPECTATORS]
gamemode adventure @a
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer
scoreboard players set mine.handler mine.stage.lobby 0

spawnpoint @a 0 90 0

forceload add -49 -49 49 49

kill @e[type=creeper]
kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creaking]
kill @e[type=witch]
kill @e[type=spider]
kill @e[type=endermite]
kill @e[type=item]

clone 59 5 59 -59 0 -59 -59 20 -59
clone 59 5 59 -59 0 -59 -59 40 -59
clone 59 5 59 -59 0 -59 -59 60 -59
clone 59 5 59 -59 0 -59 -59 80 -59
clone 59 5 59 -59 0 -59 -59 100 -59
clone 59 5 59 -59 0 -59 -59 120 -59
clone 59 5 59 -59 0 -59 -59 140 -59
clone 59 5 59 -59 0 -59 -59 160 -59

tp @a[team=CYAN_COUGARS] 0 22 0
tp @a[team=RED_RACCOONS] 0 42 0
tp @a[team=GREEN_GOATS] 0 62 0
tp @a[team=PURPLE_PENGUINS] 0 82 0
tp @a[team=ORANGE_OTTERS] 0 102 0
tp @a[team=YELLOW_YAKS] 0 122 0
tp @a[team=BLUE_BEARS] 0 142 0
tp @a[team=PINK_PIKAS] 0 162 0

execute if score mine.handler mine.stage.creaking matches 1 run function stmc:games/mine/inventory/creaking
execute if score mine.handler mine.stage.hoglin matches 1 run function stmc:games/mine/inventory/hoglin
execute if score mine.handler mine.stage.warden matches 1 run function stmc:games/mine/inventory/warden
execute if score mine.handler mine.stage.creeper matches 1 run function stmc:games/mine/inventory/creeper
execute if score mine.handler mine.stage.witch matches 1 run function stmc:games/mine/inventory/witch
execute if score mine.handler mine.stage.spider matches 1 run function stmc:games/mine/inventory/spider