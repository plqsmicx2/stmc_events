# helper function that doubles the value of all mined ores
# this function only runs for the first 20 seconds of the round

# this function works by storing any blocks mined in the doubleValue score
# and removing an equivalent value from the normal score

# append temporary block to doubleValue
execute as @a run scoreboard players operation @s extract.stats.doubleDiamond += @s .doubleValueDiamond
execute as @a run scoreboard players operation @s extract.stats.doubleGold += @s .doubleValueGold

# remove temporary from normal
execute as @a run scoreboard players operation @s extract.stats.diamondsMined -= @s .doubleValueDiamond
execute as @a run scoreboard players operation @s extract.stats.goldMined -= @s .doubleValueGold

# reset temporary value
scoreboard players set @a .doubleValueDiamond 0
scoreboard players set @a .doubleValueGold 0