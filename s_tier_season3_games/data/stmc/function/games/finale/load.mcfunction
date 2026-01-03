# load function for finale

# teleport players to spawn
execute in stmc:finale run tp @a 0 69.5 0

# manual spawn
execute in stmc:finale run spawnpoint @a 0 70 0

# force gamemode
gamemode adventure @a

# set time
time set 19000

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
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# other protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# remove nametags
team modify RED_RACCOONS nametagVisibility hideForOtherTeams
team modify ORANGE_OTTERS nametagVisibility hideForOtherTeams
team modify PINK_PIKAS nametagVisibility hideForOtherTeams
team modify YELLOW_YAKS nametagVisibility hideForOtherTeams
team modify GREEN_GOATS nametagVisibility hideForOtherTeams
team modify CYAN_COUGARS nametagVisibility hideForOtherTeams
team modify PURPLE_PENGUINS nametagVisibility hideForOtherTeams
team modify BLUE_BEARS nametagVisibility hideForOtherTeams

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
# round stuff
scoreboard objectives add finale.round.stage dummy
scoreboard objectives add finale.round.completed dummy
# data scoreboards
scoreboard objectives add finale.competitor dummy
scoreboard objectives add finale.team1 dummy
scoreboard objectives add finale.team2 dummy
scoreboard objectives add finale.game1 dummy
scoreboard objectives add finale.game2 dummy
scoreboard objectives add finale.game3 dummy
scoreboard objectives add finale.round dummy

# (re)set all necessary values
scoreboard players set finale.handler finale.stage 0

scoreboard players set finale.handler finale.timer.delay1 0
scoreboard players set finale.handler finale.timer.explanation 0
scoreboard players set finale.handler finale.timer.delay2 0
scoreboard players set finale.handler finale.timer.game 0

scoreboard players set finale.handler finale.round.stage 0
scoreboard players set finale.handler finale.round.completed 0

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

# set games
scoreboard players set finale.handler finale.game1 -1
scoreboard players set finale.handler finale.game2 -1
scoreboard players set finale.handler finale.game3 -1

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

# reset games
scoreboard objectives add fight.stage dummy
scoreboard objectives add sumo.stage dummy
scoreboard objectives add shoot.stage dummy
scoreboard players reset fight.handler fight.stage
scoreboard players reset sumo.handler sumo.stage
scoreboard players reset shoot.handler shoot.stage

# reset sidebar
scoreboard objectives remove finale.sidebar