# teleport function for sprint

# teleport players to spawn
execute in stmc:sprint/reloaded2 run tp @s 0 102 0

# force gamemode
gamemode adventure @s

# clear inventories
clear @s

# clear effects
effect clear @s

# ensure full health & hunger
execute as @s run attribute @s max_health base set 20
execute as @s run attribute @s max_health modifier remove all
effect give @s saturation 1 1 true
effect give @s instant_health 1 110 true

# give effects
effect give @s saturation infinite 0 true

# set xp
xp set @s 0 levels
xp set @s 0 points

# set world protections
execute as @s run item replace entity @s armor.feet with minecraft:leather_boots[equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# disable player collision
team modify dim.sprint collisionRule never

scoreboard players set @s sprint.gameActive 1

# reset player stats
scoreboard players set @s sprint.timer.game 0
scoreboard players set @s sprint.points.indiv 0

scoreboard players set @s sprint.stats.easyCompletions 0
scoreboard players set @s sprint.stats.mediumCompletions 0
scoreboard players set @s sprint.stats.hardCompletions 0
scoreboard players set @s sprint.stats.elytraCompletions 0
scoreboard players set @s sprint.stats.spearCompletions 0
scoreboard players set @s sprint.stats.currentSection 1
scoreboard players set @s sprint.stats.currentCheckpoint 1
scoreboard players set @s sprint.stats.currentDifficulty 2
scoreboard players set @s sprint.stats.completed 0

scoreboard players set @s sprint.return 0
scoreboard players set @s sprint.next 0
scoreboard players set @s sprint.back 0
scoreboard players set @s sprint.dead 0
scoreboard players set @s sprint.dropper.onGround 0
scoreboard players set @s sprint.elytra.boost 0
