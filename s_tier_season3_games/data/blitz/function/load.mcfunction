# load function for blitz

# this function sets the initial state of the game:
# teleports, attributes, effects, worldprotect
# the function also creates & instantiates game-specific scoreboards

# forceload the region
execute in blitz:blitz run forceload add -200 -200 200 200

# teleport players to spawn platform
execute in blitz:blitz run tp @a 0 172 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 12000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule keepInventory true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger and reset attributes
execute as @a run attribute @s max_health base reset
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s knockback_resistance base reset
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in blitz:blitz run kill @e[type=!player]

# failsafe spawn point
execute in blitz:blitz run spawnpoint @a 0 172 0

# player immunities (lobby world protects)
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# scoreboards
# global timers
scoreboard objectives add blitz.timer.delay1 dummy
scoreboard objectives add blitz.timer.explanation dummy
scoreboard objectives add blitz.timer.delay2 dummy
scoreboard objectives add blitz.timer.game dummy
scoreboard objectives add blitz.timer.game.generate dummy
scoreboard objectives add blitz.timer.delay3 dummy
# in-game visual timers
scoreboard objectives add blitz.timer.game.temp dummy
scoreboard objectives add blitz.timer.game.secsRemaining dummy
scoreboard objectives add blitz.timer.game.minsRemaining dummy

# borders
scoreboard objectives add blitz.borderRadius dummy
scoreboard objectives add blitz.borderStage dummy
scoreboard objectives add blitz.borderDistance dummy

# player status data
scoreboard objectives add blitz.alive dummy
scoreboard objectives add blitz.death deathCount

# other player stats data
scoreboard objectives add blitz.tempkills totalKillCount
scoreboard objectives add blitz.kills totalKillCount
scoreboard objectives add blitz.finalKills dummy
scoreboard objectives add blitz.coresBroken dummy
scoreboard objectives add blitz.cores.red minecraft.mined:minecraft.red_wool
scoreboard objectives add blitz.cores.orange minecraft.mined:minecraft.orange_wool
scoreboard objectives add blitz.cores.pink minecraft.mined:minecraft.pink_wool
scoreboard objectives add blitz.cores.yellow minecraft.mined:minecraft.yellow_wool
scoreboard objectives add blitz.cores.green minecraft.mined:minecraft.green_wool
scoreboard objectives add blitz.cores.cyan minecraft.mined:minecraft.cyan_wool
scoreboard objectives add blitz.cores.purple minecraft.mined:minecraft.purple_wool
scoreboard objectives add blitz.cores.blue minecraft.mined:minecraft.blue_wool
scoreboard objectives add blitz.cratesBroken minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add blitz.stats.respawn dummy

# points
scoreboard objectives add blitz.points.indiv dummy
scoreboard objectives add blitz.points.indiv.rank dummy
scoreboard objectives add blitz.points.team dummy
scoreboard objectives add blitz.points.team.rank dummy
scoreboard objectives add blitz.stats.teamPlacement dummy

# point values
scoreboard objectives add blitz.FINALKILL.VALUE dummy
scoreboard objectives add blitz.CORE.VALUE dummy
scoreboard objectives add blitz.CRATE.VALUE dummy
scoreboard objectives add blitz.PLACE.ONE.VALUE dummy
scoreboard objectives add blitz.PLACE.TWO.VALUE dummy
scoreboard objectives add blitz.PLACE.THREE.VALUE dummy
scoreboard objectives add blitz.PLACE.FOUR.VALUE dummy
scoreboard objectives add blitz.PLACE.FIVE.VALUE dummy
scoreboard objectives add blitz.PLACE.SIX.VALUE dummy
scoreboard objectives add blitz.PLACE.SEVEN.VALUE dummy
scoreboard objectives add blitz.PLACE.EIGHT.VALUE dummy
scoreboard objectives add blitz.splitFour dummy

# and game stats
scoreboard objectives add blitz.stats.players dummy
scoreboard objectives add blitz.stats.playersAlive dummy
scoreboard objectives add blitz.stats.teamsAlive dummy
scoreboard objectives add blitz.stats.coreIntact dummy

# reset scoreboard values
scoreboard players set blitz.handler blitz.timer.delay1 0
scoreboard players set blitz.handler blitz.timer.explanation 0
scoreboard players set blitz.handler blitz.timer.delay2 0
scoreboard players set blitz.handler blitz.timer.game 0
scoreboard players set blitz.handler blitz.timer.delay3 0
scoreboard players set blitz.handler blitz.timer.game.temp 0
scoreboard players set blitz.handler blitz.timer.game.secsRemaining 0
scoreboard players set blitz.handler blitz.timer.game.minsRemaining 0

scoreboard players set blitz.handler blitz.borderStage 0

scoreboard players set @a blitz.alive 1
scoreboard players set @a blitz.death 0

scoreboard players set @a blitz.tempkills 0
scoreboard players set @a blitz.kills 0
scoreboard players set @a blitz.finalKills 0
scoreboard players set @a blitz.coresBroken 0
scoreboard players set @a blitz.cores.red 0
scoreboard players set @a blitz.cores.orange 0
scoreboard players set @a blitz.cores.pink 0
scoreboard players set @a blitz.cores.yellow 0
scoreboard players set @a blitz.cores.green 0
scoreboard players set @a blitz.cores.cyan 0
scoreboard players set @a blitz.cores.purple 0
scoreboard players set @a blitz.cores.blue 0
scoreboard players set @a blitz.cratesBroken 0

scoreboard players set @a blitz.points.indiv 0
scoreboard players set @a blitz.points.team 0

scoreboard players set blitz.RedRaccoons blitz.stats.teamPlacement -1
scoreboard players set blitz.OrangeOtters blitz.stats.teamPlacement -1
scoreboard players set blitz.PinkPikas blitz.stats.teamPlacement -1
scoreboard players set blitz.YellowYaks blitz.stats.teamPlacement -1
scoreboard players set blitz.GreenGoats blitz.stats.teamPlacement -1
scoreboard players set blitz.CyanCougars blitz.stats.teamPlacement -1
scoreboard players set blitz.PurplePenguins blitz.stats.teamPlacement -1
scoreboard players set blitz.BlueBears blitz.stats.teamPlacement -1

scoreboard players set blitz.handler blitz.FINALKILL.VALUE 2
scoreboard players set blitz.handler blitz.CORE.VALUE 20
scoreboard players set blitz.handler blitz.CRATE.VALUE 10
scoreboard players set blitz.handler blitz.PLACE.ONE.VALUE 100
scoreboard players set blitz.handler blitz.PLACE.TWO.VALUE 80
scoreboard players set blitz.handler blitz.PLACE.THREE.VALUE 64
scoreboard players set blitz.handler blitz.PLACE.FOUR.VALUE 48
scoreboard players set blitz.handler blitz.PLACE.FIVE.VALUE 32
scoreboard players set blitz.handler blitz.PLACE.SIX.VALUE 16
scoreboard players set blitz.handler blitz.PLACE.SEVEN.VALUE 0
scoreboard players set blitz.handler blitz.PLACE.EIGHT.VALUE 0
scoreboard players set blitz.handler blitz.splitFour 4

scoreboard players set blitz.RedRaccoons blitz.stats.coreIntact 1
scoreboard players set blitz.OrangeOtters blitz.stats.coreIntact 1
scoreboard players set blitz.PinkPikas blitz.stats.coreIntact 1
scoreboard players set blitz.YellowYaks blitz.stats.coreIntact 1
scoreboard players set blitz.GreenGoats blitz.stats.coreIntact 1
scoreboard players set blitz.CyanCougars blitz.stats.coreIntact 1
scoreboard players set blitz.PurplePenguins blitz.stats.coreIntact 1
scoreboard players set blitz.BlueBears blitz.stats.coreIntact 1

# initialize game to start
scoreboard players set blitz.handler blitz.stage 0

# reset the sidebar
scoreboard objectives remove blitz.sidebar