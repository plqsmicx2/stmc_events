# helper function that awards a player a completion
# run on @s

# Parkour & Dropper

# award completion
execute if score @s sprint.stats.currentSection matches 1..2 run \
        execute if score @s sprint.stats.currentDifficulty matches 1 run \
        scoreboard players add @s sprint.stats.easyCompletions 1
execute if score @s sprint.stats.currentSection matches 1..2 run \
        execute if score @s sprint.stats.currentDifficulty matches 2 run \
        scoreboard players add @s sprint.stats.mediumCompletions 1
execute if score @s sprint.stats.currentSection matches 1..2 run \
        execute if score @s sprint.stats.currentDifficulty matches 3 run \
        scoreboard players add @s sprint.stats.hardCompletions 1

# Dropper

# force us to teleport to next dropper
#execute if score @s sprint.stats.currentSection matches 2 run \
        scoreboard players set @s sprint.return 1

# Elytra

# award completion
#execute if score @s sprint.stats.currentSection matches 3 run \
        scoreboard players add @s sprint.stats.elytraCompletions 1

# reset flying & boosts
execute if score @s sprint.stats.currentSection matches 3 run \
        effect clear @s
execute if score @s sprint.stats.currentSection matches 3 run \
        clear @s elytra
execute if score @s sprint.stats.currentSection matches 3 run \
        clear @s firework_rocket
execute if score @s sprint.stats.currentSection matches 3 run \
        scoreboard players set @s sprint.elytra.boost 155

# Spear

# award completion
execute if score @s sprint.stats.currentSection matches 4 run \
        scoreboard players add @s sprint.stats.spearCompletions 1

# General:

# play completion effect
execute as @s at @s run function stmc:games/sprint/utils/effects/completion

# increment checkpoint
scoreboard players add @s sprint.stats.currentCheckpoint 1
