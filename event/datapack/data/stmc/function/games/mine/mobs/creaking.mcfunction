
#spawn 1 per team in front
execute as @r[gamemode=adventure,team=CYAN_COUGARS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=RED_RACCOONS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=GREEN_GOATS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=ORANGE_OTTERS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=YELLOW_YAKS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=BLUE_BEARS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}
execute as @r[gamemode=adventure,team=PINK_PIKAS] at @s rotated as @s positioned ^ ^ ^1 run summon creaking ~ ~1 ~ \
{Tags:["creaking"],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_efficiency",base:0.00001},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:0}],DeathLootTable:"minecraft:empty"}

effect give @e[tag=creaking] invisibility 1 0 true
#after 1 second run creaking2
#reset scale and silent