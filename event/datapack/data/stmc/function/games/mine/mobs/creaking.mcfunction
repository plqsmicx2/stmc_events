
#spawn 1 per team in front
$execute as @r[gamemode=adventure,team=CYAN_COUGARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=RED_RACCOONS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=GREEN_GOATS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=ORANGE_OTTERS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=YELLOW_YAKS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=BLUE_BEARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}
$execute as @r[gamemode=adventure,team=PINK_PIKAS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creaking ~ ~ ~ \
{PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35}],DeathLootTable:"minecraft:empty", \
Passengers:[id:"minecraft:zombie",Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"]}

#guarantee spawn in air
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creaking] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
