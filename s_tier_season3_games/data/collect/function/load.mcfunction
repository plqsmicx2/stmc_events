# load function for extract

# this function runs whenever beginning the extract game

# teleport players to spawn
execute in minecraft:overworld run tp @a 0 172 0

# set spawnpoint
execute in minecraft:overworld run spawnpoint @a 0 172 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set worldborder
worldborder set 1000

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory true

# clear inventories
clear @a

# clear effects
effect clear @a

# reset world
execute in minecraft:overworld run kill @e[type=item]

# ensure full health & hunger
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true
effect give @a resistance infinite 4 true
effect give @a mining_fatigue infinite 4 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# give players recipes
recipe give @a collect:blaze_egg
recipe give @a collect:drowned_egg
recipe give @a collect:enderman_egg
recipe give @a collect:endstone
recipe give @a collect:heart_of_the_sea
recipe give @a collect:nether_bricks
recipe give @a collect:shulker_egg

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add collect.timer.delay1 dummy
scoreboard objectives add collect.timer.explanation dummy
scoreboard objectives add collect.timer.delay2 dummy
scoreboard objectives add collect.timer.game dummy
scoreboard objectives add collect.timer.game.mins dummy
scoreboard objectives add collect.timer.game.secs dummy
scoreboard objectives add collect.timer.game.tickCount dummy
scoreboard objectives add collect.timer.delay3 dummy
# stats
scoreboard objectives add collect.stats.players dummy
scoreboard objectives add collect.stats.item1 dummy
scoreboard objectives add collect.stats.item2 dummy
scoreboard objectives add collect.stats.item3 dummy
scoreboard objectives add collect.stats.item4 dummy
scoreboard objectives add collect.stats.item5 dummy
# points
scoreboard objectives add collect.points.indiv dummy
scoreboard objectives add collect.points.indiv.rank dummy
scoreboard objectives add collect.points.team dummy
scoreboard objectives add collect.points.team.rank dummy
scoreboard objectives add collect.points.ITEM.FIRST.VALUE dummy
scoreboard objectives add collect.points.ITEM.SECOND.VALUE dummy
scoreboard objectives add collect.points.ITEM.THIRD.VALUE dummy
scoreboard objectives add collect.points.ITEM.FOURTH.VALUE dummy

# (re)set all necessary values
scoreboard players set collect.handler collect.stage 0

scoreboard players set collect.handler collect.timer.delay1 0
scoreboard players set collect.handler collect.timer.explanation 0
scoreboard players set collect.handler collect.timer.delay2 0
scoreboard players set collect.handler collect.timer.game 0
scoreboard players set collect.handler collect.timer.game.mins 12
scoreboard players set collect.handler collect.timer.game.secs 0
scoreboard players set collect.handler collect.timer.game.tickCount 0
scoreboard players set collect.handler collect.timer.delay3 0

scoreboard players set collect.RedRaccoons collect.stats.item1 0
scoreboard players set collect.RedRaccoons collect.stats.item2 0
scoreboard players set collect.RedRaccoons collect.stats.item3 0
scoreboard players set collect.RedRaccoons collect.stats.item4 0
scoreboard players set collect.RedRaccoons collect.stats.item5 0
scoreboard players set collect.OrangeOtters collect.stats.item1 0
scoreboard players set collect.OrangeOtters collect.stats.item2 0
scoreboard players set collect.OrangeOtters collect.stats.item3 0
scoreboard players set collect.OrangeOtters collect.stats.item4 0
scoreboard players set collect.OrangeOtters collect.stats.item5 0
scoreboard players set collect.PinkPikas collect.stats.item1 0
scoreboard players set collect.PinkPikas collect.stats.item2 0
scoreboard players set collect.PinkPikas collect.stats.item3 0
scoreboard players set collect.PinkPikas collect.stats.item4 0
scoreboard players set collect.PinkPikas collect.stats.item5 0
scoreboard players set collect.GreenGoats collect.stats.item1 0
scoreboard players set collect.GreenGoats collect.stats.item2 0
scoreboard players set collect.GreenGoats collect.stats.item3 0
scoreboard players set collect.GreenGoats collect.stats.item4 0
scoreboard players set collect.GreenGoats collect.stats.item5 0
scoreboard players set collect.CyanCougars collect.stats.item1 0
scoreboard players set collect.CyanCougars collect.stats.item2 0
scoreboard players set collect.CyanCougars collect.stats.item3 0
scoreboard players set collect.CyanCougars collect.stats.item4 0
scoreboard players set collect.CyanCougars collect.stats.item5 0
scoreboard players set collect.PurplePenguins collect.stats.item1 0
scoreboard players set collect.PurplePenguins collect.stats.item2 0
scoreboard players set collect.PurplePenguins collect.stats.item3 0
scoreboard players set collect.PurplePenguins collect.stats.item4 0
scoreboard players set collect.PurplePenguins collect.stats.item5 0
scoreboard players set collect.YellowYaks collect.stats.item1 0
scoreboard players set collect.YellowYaks collect.stats.item2 0
scoreboard players set collect.YellowYaks collect.stats.item3 0
scoreboard players set collect.YellowYaks collect.stats.item4 0
scoreboard players set collect.YellowYaks collect.stats.item5 0
scoreboard players set collect.BlueBears collect.stats.item1 0
scoreboard players set collect.BlueBears collect.stats.item2 0
scoreboard players set collect.BlueBears collect.stats.item3 0
scoreboard players set collect.BlueBears collect.stats.item4 0
scoreboard players set collect.BlueBears collect.stats.item5 0

scoreboard players set @a collect.points.indiv 0
scoreboard players set collect.handler collect.points.ITEM.FIRST.VALUE 80
scoreboard players set collect.handler collect.points.ITEM.SECOND.VALUE 60
scoreboard players set collect.handler collect.points.ITEM.THIRD.VALUE 40
scoreboard players set collect.handler collect.points.ITEM.FOURTH.VALUE 20
function collect:points-update

scoreboard objectives remove collect.sidebar