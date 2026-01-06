# helper function that starts each round

# temporary double points scoreboard
scoreboard objectives add .doubleValueDiamond minecraft.mined:minecraft.diamond_block
scoreboard objectives add .doubleValueGold minecraft.mined:minecraft.gold_block

# world resets
execute in stmc:extract run kill @e[type=armor_stand]
execute in stmc:extract run kill @e[type=interaction]
execute in stmc:extract run fill -55 133 107 55 138 7 air replace red_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace orange_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace pink_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace yellow_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace green_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace cyan_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace purple_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace blue_stained_glass
execute in stmc:extract run fill -55 133 107 55 138 7 air replace barrier

# reset player values
# we do this again to ensure no disconnected players missed it
scoreboard players set @a extract.stats.alive 1
scoreboard players set @a extract.stats.deaths 0
scoreboard players set @a .doubleValueDiamond 0
scoreboard players set @a .doubleValueGold 0

# and handle everything else for players
effect clear @a
effect give @a instant_health 1 110 true
effect give @a saturation 1 110 true
gamemode adventure @a