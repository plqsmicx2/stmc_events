# set difficulty when in section 1/2 [parkour/dropper]
# runs as @s in stmc:sprint

# default to two (for elytra/spear)
execute if score @s sprint.stats.currentSection matches 3.. \
        run scoreboard players set @s sprint.stats.currentDifficulty 2

# parkour:
execute if score @s sprint.stats.currentSection matches 1 \
        if entity @s[z=9,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 1
execute if score @s sprint.stats.currentSection matches 1 \
        if entity @s[z=-7,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 2
execute if score @s sprint.stats.currentSection matches 1 \
        if entity @s[z=-23,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 3

# dropper:
execute if score @s sprint.stats.currentSection matches 2 \
        if entity @s[z=208,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 1
execute if score @s sprint.stats.currentSection matches 2 \
        if entity @s[z=193,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 2
execute if score @s sprint.stats.currentSection matches 2 \
        if entity @s[z=177,dz=15] run scoreboard players set @s sprint.stats.currentDifficulty 3