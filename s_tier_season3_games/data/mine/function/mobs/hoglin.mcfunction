
#spawn 1 per team
$execute as @r[gamemode=adventure,team=CYAN_COUGARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=RED_RACCOONS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=GREEN_GOATS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=ORANGE_OTTERS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=YELLOW_YAKS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=BLUE_BEARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PINK_PIKAS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Health:500f,Age:-2147483647,IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",amplifier:3,duration:-1}],attributes:[{id:"minecraft:movement_speed",base:0.36},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_efficiency",base:0.01}],DeathLootTable:"minecraft:empty"}

#guarantee spawn in air
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=hoglin] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
