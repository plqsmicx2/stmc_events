# load function for finale

# teleport players to spawn
execute in stmc:finale run tp @a -10 88 0 -90 10

# manual spawn
execute in stmc:finale run spawnpoint @a -10 88 0 -90 10

# force gamemode
gamemode spectator @a

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn true
gamerule natural_health_regeneration false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# other protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in stmc:finale run kill @e[type=!player]

# reset attributes
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s attack_speed base reset
execute as @a run attribute @s knockback_resistance base reset

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add finale.timer.delay1 dummy
scoreboard objectives add finale.timer.explanation dummy
scoreboard objectives add finale.timer.delay2 dummy
scoreboard objectives add finale.timer.game dummy
# stats
scoreboard objectives add finale.stats.alive dummy
scoreboard objectives add finale.stats.deaths deathCount
# round stuff
scoreboard objectives add finale.round.stage dummy
scoreboard objectives add finale.round.completed dummy
scoreboard objectives add finale.round.timer dummy
# data scoreboards
scoreboard objectives add finale.competitor dummy
scoreboard objectives add finale.team1 dummy
scoreboard objectives add finale.team2 dummy

# (re)set all necessary values
scoreboard players set finale.handler finale.stage 0

scoreboard players set finale.handler finale.timer.delay1 0
scoreboard players set finale.handler finale.timer.explanation 0
scoreboard players set finale.handler finale.timer.delay2 0
scoreboard players set finale.handler finale.timer.game 0

scoreboard players set @a finale.stats.deaths 0

scoreboard players set finale.handler finale.round.stage 0
scoreboard players set finale.handler finale.round.completed 0
scoreboard players set finale.handler finale.round.timer 0

# reset teams' win counts
scoreboard players set finale.RedRaccoons finale.round.completed 0
scoreboard players set finale.OrangeOtters finale.round.completed 0
scoreboard players set finale.PinkPikas finale.round.completed 0
scoreboard players set finale.YellowYaks finale.round.completed 0
scoreboard players set finale.GreenGoats finale.round.completed 0
scoreboard players set finale.CyanCougars finale.round.completed 0
scoreboard players set finale.PurplePenguins finale.round.completed 0
scoreboard players set finale.BlueBears finale.round.completed 0

# set competitors
scoreboard players set @a finale.team1 0
scoreboard players set @a finale.team2 0

execute if score team.RedRaccoons stats.points.team.rank matches 1 run scoreboard players set @a[team=RED_RACCOONS] finale.team1 1
execute if score team.RedRaccoons stats.points.team.rank matches 2 run scoreboard players set @a[team=RED_RACCOONS] finale.team2 1

execute if score team.OrangeOtters stats.points.team.rank matches 1 run scoreboard players set @a[team=ORANGE_OTTERS] finale.team1 1
execute if score team.OrangeOtters stats.points.team.rank matches 2 run scoreboard players set @a[team=ORANGE_OTTERS] finale.team2 1

execute if score team.PinkPikas stats.points.team.rank matches 1 run scoreboard players set @a[team=PINK_PIKAS] finale.team1 1
execute if score team.PinkPikas stats.points.team.rank matches 2 run scoreboard players set @a[team=PINK_PIKAS] finale.team2 1

execute if score team.YellowYaks stats.points.team.rank matches 1 run scoreboard players set @a[team=YELLOW_YAKS] finale.team1 1
execute if score team.YellowYaks stats.points.team.rank matches 2 run scoreboard players set @a[team=YELLOW_YAKS] finale.team2 1

execute if score team.GreenGoats stats.points.team.rank matches 1 run scoreboard players set @a[team=GREEN_GOATS] finale.team1 1
execute if score team.GreenGoats stats.points.team.rank matches 2 run scoreboard players set @a[team=GREEN_GOATS] finale.team2 1

execute if score team.CyanCougars stats.points.team.rank matches 1 run scoreboard players set @a[team=CYAN_COUGARS] finale.team1 1
execute if score team.CyanCougars stats.points.team.rank matches 2 run scoreboard players set @a[team=CYAN_COUGARS] finale.team2 1

execute if score team.PurplePenguins stats.points.team.rank matches 1 run scoreboard players set @a[team=PURPLE_PENGUINS] finale.team1 1
execute if score team.PurplePenguins stats.points.team.rank matches 2 run scoreboard players set @a[team=PURPLE_PENGUINS] finale.team2 1

execute if score team.BlueBears stats.points.team.rank matches 1 run scoreboard players set @a[team=BLUE_BEARS] finale.team1 1
execute if score team.BlueBears stats.points.team.rank matches 2 run scoreboard players set @a[team=BLUE_BEARS] finale.team2 1

scoreboard players set @a finale.competitor 0
execute as @a if score @s finale.team1 matches 1.. run scoreboard players set @s finale.competitor 1
execute as @a if score @s finale.team2 matches 1.. run scoreboard players set @s finale.competitor 1

# reset sidebar
scoreboard objectives remove lobby.sidebar