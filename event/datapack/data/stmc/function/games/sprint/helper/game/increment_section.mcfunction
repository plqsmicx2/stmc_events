# helper function that increments a player's section
# run on @s

# add section
scoreboard players add @s sprint.stats.currentSection 1

# reset checkpoint value
scoreboard players set @s sprint.stats.currentCheckpoint 1

# teleport player
scoreboard players set @s sprint.return 1

# play section effect
execute as @s at @s run function stmc:effects/sprint/on_section_change