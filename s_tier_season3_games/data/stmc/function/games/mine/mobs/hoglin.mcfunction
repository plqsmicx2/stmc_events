
#spawn 1 per team
$execute as @r[gamemode=adventure,team=CYAN_COUGARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=RED_RACCOONS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=GREEN_GOATS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PURPLE_PENGUINS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=ORANGE_OTTERS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=YELLOW_YAKS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=BLUE_BEARS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}
$execute as @r[gamemode=adventure,team=PINK_PIKAS] at @s rotated $(rot) 0 positioned ^ ^ ^10 run summon hoglin ~ ~ ~ \
{PersistenceRequired:1b,Age:-2147483647,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"mine:hoglin_armor":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":255}}}},DeathLootTable:"minecraft:empty"}

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
