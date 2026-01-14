
#spawn 1 per team
$execute as @a[limit=2,sort=random,gamemode=adventure,team=CYAN_COUGARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=RED_RACCOONS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=GREEN_GOATS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=ORANGE_OTTERS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=YELLOW_YAKS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=BLUE_BEARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @a[limit=2,sort=random,gamemode=adventure,team=PINK_PIKAS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon spider ~ ~ ~ \
{Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

#guarantee spawn in air
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=spider] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
