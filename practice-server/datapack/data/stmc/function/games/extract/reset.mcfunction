# reset some game things
bossbar remove extract.timer
execute in stmc:extract/main run kill @e[type=item]
execute in stmc:extract/main run kill @e[type=interaction]
execute in stmc:extract/main run kill @e[type=armor_stand]

clear @a[team=dim.extract]
effect clear @a[team=dim.extract]
effect give @a[team=dim.extract] slow_falling 3 0 true
effect give @a[team=dim.extract] instant_health 1 110 true
effect give @a[team=dim.extract] saturation 1 5 true
scoreboard players set extract.handler extract.timer.game 0
scoreboard players set extract.handler extract.gamesActive 0

execute in stmc:extract/main run tp @a[team=dim.extract] 0 101 -18 0 0