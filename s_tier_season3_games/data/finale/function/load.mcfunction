# load function for finale

# teleport players to spawn
execute in finale:finale run tp @a 0 107 23

execute if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run tp @a[team=RED_RACCOONS] 0 102 27 180 0
execute if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run tp @a[team=RED_RACCOONS] 0 102 -27 0 0

execute if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 102 27 180 0
execute if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run tp @a[team=ORANGE_OTTERS] 0 102 -27 0 0

execute if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run tp @a[team=PINK_PIKAS] 0 102 27 180 0
execute if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run tp @a[team=PINK_PIKAS] 0 102 -27 0 0

execute if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run tp @a[team=GREEN_GOATS] 0 102 27 180 0
execute if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run tp @a[team=GREEN_GOATS] 0 102 -27 0 0

execute if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run tp @a[team=CYAN_COUGARS] 0 102 27 180 0
execute if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run tp @a[team=CYAN_COUGARS] 0 102 -27 0 0

execute if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 102 27 180 0
execute if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run tp @a[team=PURPLE_PENGUINS] 0 102 -27 0 0

# manual spawn
execute in finale:finale run spawnpoint @a 0 110 0

# force gamemode
gamemode adventure @a

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule naturalRegeneration false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 points
xp set @a 0 levels

# kill all entities
execute in finale:finale run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] if score team.RedRaccoons stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] if score team.OrangeOtters stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] if score team.PinkPikas stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] if score team.GreenGoats stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] if score team.CyanCougars stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] if score team.PurplePenguins stats.points.team.rank matches 1..2 run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add finale.timer.delay1 dummy
scoreboard objectives add finale.timer.explanation dummy
scoreboard objectives add finale.timer.delay2 dummy
scoreboard objectives add finale.timer.game dummy
# stats
scoreboard objectives add finale.stats.alive dummy
scoreboard objectives add finale.stats.deaths deathCount

# (re)set all necessary values
scoreboard players set finale.handler finale.stage 0

scoreboard players set finale.handler finale.timer.delay1 0
scoreboard players set finale.handler finale.timer.explanation 0
scoreboard players set finale.handler finale.timer.delay2 0
scoreboard players set finale.handler finale.timer.game 0

scoreboard players set @a finale.stats.deaths 0

execute if score team.RedRaccoons stats.points.team.rank matches 1..2 run scoreboard players set @a[team=RED_RACCOONS] finale.stats.alive 1
execute if score team.OrangeOtters stats.points.team.rank matches 1..2 run scoreboard players set @a[team=ORANGE_OTTERS] finale.stats.alive 1
execute if score team.PinkPikas stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PINK_PIKAS] finale.stats.alive 1
execute if score team.GreenGoats stats.points.team.rank matches 1..2 run scoreboard players set @a[team=GREEN_GOATS] finale.stats.alive 1
execute if score team.CyanCougars stats.points.team.rank matches 1..2 run scoreboard players set @a[team=CYAN_COUGARS] finale.stats.alive 1
execute if score team.PurplePenguins stats.points.team.rank matches 1..2 run scoreboard players set @a[team=PURPLE_PENGUINS] finale.stats.alive 1