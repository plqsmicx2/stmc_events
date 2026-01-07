
summon wolf ~.9 ~ ~.5 {Tags:["lucky"]}
summon wolf ~-.9 ~ ~.5 {Tags:["lucky"]}
summon wolf ~ ~ ~-1 {Tags:["lucky"]}
execute as @e[tag=lucky] run data modify entity @s Owner set from entity @p UUID
execute at @s as @e[tag=lucky] run rotate @s facing ~ ~1 ~
tag @e remove lucky