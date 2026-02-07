# Helper function for checkpoint tick
# runs every time a player crosses a checkpoint

# helper function that updates players' mid-race placement
# called whenever a player reaches a checkpoint

# function will be called as our target player [@s]

# get nearest checkpoint entity
scoreboard objectives add currCheckpoint dummy
scoreboard players set .temp currCheckpoint -1
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint0] run \
        scoreboard players set .temp currCheckpoint 0
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint1] run \
        scoreboard players set .temp currCheckpoint 1
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint2] run \
        scoreboard players set .temp currCheckpoint 2
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint3] run \
        scoreboard players set .temp currCheckpoint 3
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint4] run \
        scoreboard players set .temp currCheckpoint 4
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint5] run \
        scoreboard players set .temp currCheckpoint 5
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint6] run \
        scoreboard players set .temp currCheckpoint 6
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint7] run \
        scoreboard players set .temp currCheckpoint 7
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint8] run \
        scoreboard players set .temp currCheckpoint 8
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint9] run \
        scoreboard players set .temp currCheckpoint 9
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint10] run \
        scoreboard players set .temp currCheckpoint 10
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint11] run \
        scoreboard players set .temp currCheckpoint 11
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint12] run \
        scoreboard players set .temp currCheckpoint 12
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint13] run \
        scoreboard players set .temp currCheckpoint 13
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint14] run \
        scoreboard players set .temp currCheckpoint 14
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint15] run \
        scoreboard players set .temp currCheckpoint 15
execute at @s run execute as @e[distance=..3] if entity @s[tag=checkpoint16] run \
        scoreboard players set .temp currCheckpoint 16

# if we actually aren't at a checkpoint, leave
execute if score .temp currCheckpoint matches ..-1 run return -1

# prevent going backward
execute if score @s race.checkpoints_completed > .temp currCheckpoint unless score .temp currCheckpoint matches 0 \
        run return -1
execute if score @s race.checkpoints_completed matches 0 unless score .temp currCheckpoint matches 1..6 \
        run return -1

# play effects
execute unless score .temp currCheckpoint = @s race.checkpoints_completed run \
        scoreboard players set @s race.soundThisTick 1
execute as @s run function stmc:games/race/utils/effects/on_checkpoint
scoreboard players remove @s race.soundThisTick 1

# update player checkpoint
execute if score .temp currCheckpoint matches 0 unless score @s race.effectDelay matches 1.. as @s \
        run function stmc:games/race/api/checkpoint/increment_lap
scoreboard players operation @s race.checkpoints_completed = .temp currCheckpoint
scoreboard objectives remove currCheckpoint

# reset inventory
execute if score @s race.soundThisTick matches 0 run item replace entity @s armor.feet with minecraft:leather_boots[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# prevent repeat laps
# 5s effect delay
scoreboard players set @s race.effectDelay 100