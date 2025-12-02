clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a hunger 5 20 true
effect give @a instant_health 1 10
effect give @a mining_fatigue 5 2 true
gamemode adventure @a
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer
scoreboard players set mine.handler mine.stage.lobby 0

item replace entity @a weapon.offhand with compass
item replace entity @a hotbar.0 with iron_pickaxe[can_break=[{blocks:"minecraft:infested_stone"},{blocks:"minecraft:diamond_ore"}]]
item replace entity @a hotbar.3 with golden_apple
item replace entity @a hotbar.8 with lantern
execute if score mine.handler mine.stage.creaking matches 1 run item replace entity @a hotbar.1 with cobweb[can_place_on=[{blocks:"minecraft:cyan_terracotta"}]]
execute if score mine.handler mine.stage.creaking matches 1 run item replace entity @a hotbar.2 with lingering_potion[potion_contents={potion:strong_healing}]
execute if score mine.handler mine.stage.hoglin matches 1 run item replace entity @a hotbar.1 with bow
execute if score mine.handler mine.stage.hoglin matches 1 run item replace entity @a hotbar.2 with arrow 6
execute if score mine.handler mine.stage.warden matches 1 run item replace entity @a hotbar.1 with snowball 4
execute if score mine.handler mine.stage.warden matches 1 run item replace entity @a hotbar.2 with chicken_spawn_egg[can_place_on=[{blocks:"minecraft:cyan_terracotta"}]]



spawnpoint @a 0 42 0

forceload add -49 -49 49 49

kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creaking]
kill @e[type=endermite]
kill @e[type=item]

clone 59 5 59 -59 0 -59 -59 20 -59
clone 59 5 59 -59 0 -59 -59 26 -59
clone 59 5 59 -59 0 -59 -59 32 -59
clone 59 5 59 -59 0 -59 -59 38 -59
clone 59 5 59 -59 0 -59 -59 44 -59
clone 59 5 59 -59 0 -59 -59 50 -59
clone 59 5 59 -59 0 -59 -59 56 -59
clone 59 5 59 -59 0 -59 -59 62 -59

tp @a[team=CYAN_COUGARS] 0 22 0
tp @a[team=RED_RACCOONS] 0 28 0
tp @a[team=GREEN_GOATS] 0 34 0
tp @a[team=PURPLE_PENGUINS] 0 40 0
tp @a[team=ORANGE_OTTERS] 0 46 0
tp @a[team=YELLOW_YAKS] 0 52 0
tp @a[team=BLUE_BEARS] 0 58 0
tp @a[team=PINK_PIKAS] 0 64 0