
summon ender_pearl ~ ~1 ~ {Tags:["lucky","e1"]}
summon ender_pearl ~ ~1 ~ {Tags:["lucky","e2"]}
summon ender_pearl ~ ~1 ~ {Tags:["lucky","e3"]}
summon ender_pearl ~ ~1 ~ {Tags:["lucky","e4"]}
execute at @s as @e[tag=lucky] run data modify entity @s Owner set from entity @p UUID
spreadplayers ~ ~ 7 20 false @e[tag=lucky]
execute as @e[tag=e2] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=e3] at @s run tp @s ~ ~4 ~
execute as @e[tag=e4] at @s run tp @s ~ ~8 ~