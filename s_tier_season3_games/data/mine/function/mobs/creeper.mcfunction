
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#spawn 1 per team
$execute as @r[gamemode=adventure,team=CYAN_COUGARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=RED_RACCOONS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=GREEN_GOATS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=ORANGE_OTTERS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=YELLOW_YAKS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=BLUE_BEARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PINK_PIKAS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon creeper ~ ~ ~ \
{PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

#guarantee spawn in air
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
execute as @e[type=creeper] at @s unless block ~ ~ ~ air run tp @s ~1 ~ ~1
