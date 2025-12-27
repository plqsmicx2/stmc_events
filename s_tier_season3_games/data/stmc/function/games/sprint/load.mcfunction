# load function for sprint

# this function runs whenever beginning the sprint game

# GAME SETTINGS

# game runtime {default:12min, 14400 value}
data modify storage sprint:data max_time set value 14400

# scores

# completion values
# defaults: {easy:1,medium:2,hard:3,elytra:2,spear:2}
data modify storage sprint:data easy_completion set value 1
data modify storage sprint:data medium_completion set value 2
data modify storage sprint:data hard_completion set value 3
data modify storage sprint:data elytra_completion set value 2
data modify storage sprint:data spear_completion set value 2

# percent bonus values
# defaults: {easy:1,medium:2,hard:3,elytra:2,spear:2}
data modify storage sprint:data easy_multiplier set value 1
data modify storage sprint:data medium_multiplier set value 2
data modify storage sprint:data hard_multiplier set value 3
data modify storage sprint:data elytra_multiplier set value 2
data modify storage sprint:data spear_multiplier set value 2

# teleport players to spawn
execute in stmc:sprint run tp @a 0 102 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all
effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

# give effects
effect give @a saturation infinite 0 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in stmc:sprint run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify YELLOW_YAKS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never
team modify BLUE_BEARS collisionRule never

# and wrap it up with some scoreboard stuff

# timers
# .game will also store players' time elapsed & thus be used in point calculations
scoreboard objectives add sprint.timer.delay1 dummy
scoreboard objectives add sprint.timer.explanation dummy
scoreboard objectives add sprint.timer.delay2 dummy
scoreboard objectives add sprint.timer.game dummy
scoreboard objectives add sprint.timer.game.mins dummy
scoreboard objectives add sprint.timer.game.secs dummy
scoreboard objectives add sprint.timer.game.tick dummy
scoreboard objectives add sprint.timer.delay3 dummy

# points
# indiv is calculated from the sum of some dummy scoreboards, so we only need one scoreboard here
scoreboard objectives add sprint.points.indiv dummy
scoreboard objectives add sprint.points.team dummy
scoreboard objectives add sprint.points.indiv.rank dummy
scoreboard objectives add sprint.points.team.rank dummy

# stats
# game-wide
scoreboard objectives add sprint.stats.playersCompleted dummy
# player-specific
scoreboard objectives add sprint.stats.easyCompletions dummy
scoreboard objectives add sprint.stats.mediumCompletions dummy
scoreboard objectives add sprint.stats.hardCompletions dummy
scoreboard objectives add sprint.stats.elytraCompletions dummy
scoreboard objectives add sprint.stats.spearCompletions dummy
scoreboard objectives add sprint.stats.currentSection dummy
scoreboard objectives add sprint.stats.currentCheckpoint dummy
scoreboard objectives add sprint.stats.currentDifficulty dummy
scoreboard objectives add sprint.stats.completed dummy

scoreboard objectives add sprint.return minecraft.used:carrot_on_a_stick
scoreboard objectives add sprint.skip minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add sprint.dropper.onGround dummy
scoreboard objectives add sprint.elytra.boost dummy

# reset scoreboards
scoreboard players set sprint.handler sprint.timer.delay1 0
scoreboard players set sprint.handler sprint.timer.explanation 0
scoreboard players set sprint.handler sprint.timer.delay2 0
scoreboard players set sprint.handler sprint.timer.game 0
scoreboard players set sprint.handler sprint.timer.game.mins 0
scoreboard players set sprint.handler sprint.timer.game.secs 0
scoreboard players set sprint.handler sprint.timer.game.tick 0
scoreboard players set sprint.handler sprint.timer.delay3 0

scoreboard players set sprint.handler sprint.stats.playersCompleted 0

scoreboard players set @a sprint.timer.game 0
scoreboard players set @a sprint.points.indiv 0

scoreboard players set @a sprint.stats.easyCompletions 0
scoreboard players set @a sprint.stats.mediumCompletions 0
scoreboard players set @a sprint.stats.hardCompletions 0
scoreboard players set @a sprint.stats.elytraCompletions 0
scoreboard players set @a sprint.stats.spearCompletions 0
scoreboard players set @a sprint.stats.currentSection 1
scoreboard players set @a sprint.stats.currentCheckpoint 1
scoreboard players set @a sprint.stats.currentDifficulty 2
scoreboard players set @a sprint.stats.completed 0

scoreboard players set @a sprint.return 0
scoreboard players set @a sprint.skip 0
scoreboard players set @a sprint.dropper.onGround 0
scoreboard players set @a sprint.elytra.boost 0

# set game timer from settings
scoreboard objectives add .precision dummy
scoreboard players set #math .precision 1200
execute store result score sprint.handler sprint.timer.game.mins run data get storage sprint:data max_time
scoreboard players operation sprint.handler sprint.timer.game.mins /= #math .precision

scoreboard players operation #remove .precision = sprint.handler sprint.timer.game.mins
scoreboard players operation #remove .precision *= #math .precision
scoreboard players set #math .precision 20
execute store result score sprint.handler sprint.timer.game.secs run data get storage sprint:data max_time
scoreboard players operation sprint.handler sprint.timer.game.secs -= #remove .precision
scoreboard players operation sprint.handler sprint.timer.game.secs /= #math .precision
scoreboard objectives remove .precision

# reset game-specific scoreboard
scoreboard objectives remove sprint.sidebar

# start game thread
scoreboard players set sprint.handler sprint.stage 0