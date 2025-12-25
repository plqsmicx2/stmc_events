# helper function that calculates the percentage bonus from completions
# executes on @s

# create temporary variables
scoreboard objectives add sprint.points.easy dummy
scoreboard objectives add sprint.points.medium dummy
scoreboard objectives add sprint.points.hard dummy
scoreboard objectives add sprint.points.elytra dummy
scoreboard objectives add sprint.points.spear dummy

# set temporary variables
execute store result score sprint.handler sprint.points.easy run data get storage sprint:data easy_multiplier
execute store result score sprint.handler sprint.points.medium run data get storage sprint:data medium_multiplier
execute store result score sprint.handler sprint.points.hard run data get storage sprint:data hard_multiplier
execute store result score sprint.handler sprint.points.elytra run data get storage sprint:data elytra_multiplier
execute store result score sprint.handler sprint.points.spear run data get storage sprint:data spear_multiplier

# store players completions in variables
execute store result score @s sprint.points.easy run scoreboard players get @s sprint.stats.easyCompletions
execute store result score @s sprint.points.medium run scoreboard players get @s sprint.stats.mediumCompletions
execute store result score @s sprint.points.hard run scoreboard players get @s sprint.stats.hardCompletions
execute store result score @s sprint.points.elytra run scoreboard players get @s sprint.stats.elytraCompletions
execute store result score @s sprint.points.spear run scoreboard players get @s sprint.stats.spearCompletions

# and multiply those values
scoreboard players operation @s sprint.points.easy *= sprint.handler sprint.points.easy
scoreboard players operation @s sprint.points.medium *= sprint.handler sprint.points.medium
scoreboard players operation @s sprint.points.hard *= sprint.handler sprint.points.hard
scoreboard players operation @s sprint.points.elytra *= sprint.handler sprint.points.elytra
scoreboard players operation @s sprint.points.spear *= sprint.handler sprint.points.spear

# then sum those values into total completion
scoreboard players set @s sprint.points.multiplier 0
scoreboard players operation @s sprint.points.multiplier += @s sprint.points.easy
scoreboard players operation @s sprint.points.multiplier += @s sprint.points.medium
scoreboard players operation @s sprint.points.multiplier += @s sprint.points.hard
scoreboard players operation @s sprint.points.multiplier += @s sprint.points.elytra
scoreboard players operation @s sprint.points.multiplier += @s sprint.points.spear

# remove temporary variables
scoreboard objectives remove sprint.points.easy
scoreboard objectives remove sprint.points.medium
scoreboard objectives remove sprint.points.hard
scoreboard objectives remove sprint.points.elytra
scoreboard objectives remove sprint.points.spear