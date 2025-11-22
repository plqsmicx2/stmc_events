# return if there is already a game active
execute if score extract.handler extract.gamesActive matches 1.. run tellraw @a[team=dim.extract] {text:"A game is already active",color:red}
execute if score extract.handler extract.gamesActive matches 1.. run return 0

# set arena
execute in extract:extract run clone -20 -3 -32 20 29 22 30 98 -27

# teleport players
execute as @a in extract:extract if entity @s[x=3,y=99,z=-1,dx=2,dy=5,dz=-1] run tp @s 50 102 -24 0 0
execute as @a in extract:extract if entity @s[x=3,y=99,z=1,dx=2,dy=5,dz=1] run tp @s 50 102 24 180 0

# resets
execute in extract:extract run kill @e[type=item]
execute in extract:extract run kill @e[type=interaction]
execute in extract:extract run kill @e[type=armor_stand]

clear @a[team=dim.extract]
effect clear @a[team=dim.extract]
effect give @a[team=dim.extract] slow_falling 3 0 true
effect give @a[team=dim.extract] instant_health 1 110 true
effect give @a[team=dim.extract] saturation 1 5 true
scoreboard players set extract.handler extract.timer.game 0
scoreboard players set extract.handler extract.gamesActive 1

# bossbar
bossbar add extract.timer {text:"Round",color:red}
bossbar set extract.timer value 0
bossbar set extract.timer color red
bossbar set extract.timer max 2400
bossbar set extract.timer players @a[team=dim.extract]
execute store result bossbar extract.timer value run scoreboard players get extract.handler extract.timer.game

# summon armor stands & interaction entities
execute in extract:extract run function extract:generate_armor_stands