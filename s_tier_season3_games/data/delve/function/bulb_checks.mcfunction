
# <===== COPPER BULBS =====>

# normal bulbs
# check for bulbs
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] as @a[gamemode=survival] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:waxed_copper_bulb[lit=true] replace minecraft:copper_bulb destroy

# open gates for nearest team to bulb item & start timer
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=RED_RACCOONS] store result score @a[team=RED_RACCOONS] delve.timer.game.copperGateTimer run fill -105 86 -105 105 99 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=ORANGE_OTTERS] store result score @a[team=ORANGE_OTTERS] delve.timer.game.copperGateTimer run fill -105 116 -105 105 129 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=PINK_PIKAS] store result score @a[team=PINK_PIKAS] delve.timer.game.copperGateTimer run fill -105 146 -105 105 159 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=GREEN_GOATS] store result score @a[team=GREEN_GOATS] delve.timer.game.copperGateTimer run fill -105 176 -105 105 189 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=CYAN_COUGARS] store result score @a[team=CYAN_COUGARS] delve.timer.game.copperGateTimer run fill -105 206 -105 105 219 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}] as @p if entity @s[team=PURPLE_PENGUINS] store result score @a[team=PURPLE_PENGUINS] delve.timer.game.copperGateTimer run fill -105 236 -105 105 249 105 minecraft:light[level=0] replace minecraft:waxed_copper_grate

# kill bulb item for all players
execute as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:copper_bulb"}}]

# close gates after timer for each team
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=RED_RACCOONS] run fill -105 86 -105 105 99 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=ORANGE_OTTERS] run fill -105 116 -105 105 129 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=PINK_PIKAS] run fill -105 146 -105 105 159 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=GREEN_GOATS] run fill -105 176 -105 105 189 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=CYAN_COUGARS] run fill -105 206 -105 105 219 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]
execute in delve:delve if entity @a[scores={delve.timer.game.copperGateTimer=0..4},team=PURPLE_PENGUINS] run fill -105 236 -105 105 249 105 minecraft:waxed_copper_grate replace minecraft:light[level=0]

# update timer every tick
scoreboard players remove @a[scores={delve.timer.game.copperGateTimer=0..}] delve.timer.game.copperGateTimer 5

# wax gates
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:waxed_copper_grate replace minecraft:copper_grate

# exposed bulbs
# check for bulbs
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] as @a[gamemode=survival] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:waxed_exposed_copper_bulb[lit=true] replace minecraft:exposed_copper_bulb destroy

# open gates for nearest team to bulb item & start timer
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=RED_RACCOONS] store result score @a[team=RED_RACCOONS] delve.timer.game.exposedGateTimer run fill -105 86 -105 105 99 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=ORANGE_OTTERS] store result score @a[team=ORANGE_OTTERS] delve.timer.game.exposedGateTimer run fill -105 116 -105 105 129 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=PINK_PIKAS] store result score @a[team=PINK_PIKAS] delve.timer.game.exposedGateTimer run fill -105 146 -105 105 159 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=GREEN_GOATS] store result score @a[team=GREEN_GOATS] delve.timer.game.exposedGateTimer run fill -105 176 -105 105 189 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=CYAN_COUGARS] store result score @a[team=CYAN_COUGARS] delve.timer.game.exposedGateTimer run fill -105 206 -105 105 219 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] as @p if entity @s[team=PURPLE_PENGUINS] store result score @a[team=PURPLE_PENGUINS] delve.timer.game.exposedGateTimer run fill -105 236 -105 105 249 105 minecraft:light[level=1] replace minecraft:waxed_exposed_copper_grate

# kill bulb item for all players
execute as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:exposed_copper_bulb"}}]

# close gates after timer for each team
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=RED_RACCOONS] run fill -105 86 -105 105 99 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=ORANGE_OTTERS] run fill -105 116 -105 105 129 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=PINK_PIKAS] run fill -105 146 -105 105 159 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=GREEN_GOATS] run fill -105 176 -105 105 189 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=CYAN_COUGARS] run fill -105 206 -105 105 219 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]
execute in delve:delve if entity @a[scores={delve.timer.game.exposedGateTimer=0..4},team=PURPLE_PENGUINS] run fill -105 236 -105 105 249 105 minecraft:waxed_exposed_copper_grate replace minecraft:light[level=1]

# update timer every tick
scoreboard players remove @a[scores={delve.timer.game.exposedGateTimer=0..}] delve.timer.game.exposedGateTimer 5

# wax gates
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:waxed_exposed_copper_grate replace minecraft:exposed_copper_grate

# weathered bulbs
# check for bulbs
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] as @a[gamemode=survival] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:waxed_weathered_copper_bulb[lit=true] replace minecraft:weathered_copper_bulb destroy

# open gates for nearest team to bulb item & start timer
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=RED_RACCOONS] store result score @a[team=RED_RACCOONS] delve.timer.game.weatheredGateTimer run fill -105 86 -105 105 99 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=ORANGE_OTTERS] store result score @a[team=ORANGE_OTTERS] delve.timer.game.weatheredGateTimer run fill -105 116 -105 105 129 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=PINK_PIKAS] store result score @a[team=PINK_PIKAS] delve.timer.game.weatheredGateTimer run fill -105 146 -105 105 159 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=GREEN_GOATS] store result score @a[team=GREEN_GOATS] delve.timer.game.weatheredGateTimer run fill -105 176 -105 105 189 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=CYAN_COUGARS] store result score @a[team=CYAN_COUGARS] delve.timer.game.weatheredGateTimer run fill -105 206 -105 105 219 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] as @p if entity @s[team=PURPLE_PENGUINS] store result score @a[team=PURPLE_PENGUINS] delve.timer.game.weatheredGateTimer run fill -105 236 -105 105 249 105 minecraft:light[level=2] replace minecraft:waxed_weathered_copper_grate

# kill bulb item for all players
execute as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:weathered_copper_bulb"}}]

# close gates after timer for each team
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=RED_RACCOONS] run fill -105 86 -105 105 99 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=ORANGE_OTTERS] run fill -105 116 -105 105 129 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=PINK_PIKAS] run fill -105 146 -105 105 159 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=GREEN_GOATS] run fill -105 176 -105 105 189 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=CYAN_COUGARS] run fill -105 206 -105 105 219 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]
execute in delve:delve if entity @a[scores={delve.timer.game.weatheredGateTimer=0..4},team=PURPLE_PENGUINS] run fill -105 236 -105 105 249 105 minecraft:waxed_weathered_copper_grate replace minecraft:light[level=2]

# update timer every tick
scoreboard players remove @a[scores={delve.timer.game.weatheredGateTimer=0..}] delve.timer.game.weatheredGateTimer 5

# wax gates
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:waxed_weathered_copper_grate replace minecraft:weathered_copper_grate

# oxidized bulbs
# check for bulbs
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] as @a[gamemode=survival] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:waxed_oxidized_copper_bulb[lit=true] replace minecraft:oxidized_copper_bulb destroy

# open gates for nearest team to bulb item & start timer
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=RED_RACCOONS] store result score @a[team=RED_RACCOONS] delve.timer.game.oxidizedGateTimer run fill -105 86 -105 105 99 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=ORANGE_OTTERS] store result score @a[team=ORANGE_OTTERS] delve.timer.game.oxidizedGateTimer run fill -105 116 -105 105 129 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=PINK_PIKAS] store result score @a[team=PINK_PIKAS] delve.timer.game.oxidizedGateTimer run fill -105 146 -105 105 159 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=GREEN_GOATS] store result score @a[team=GREEN_GOATS] delve.timer.game.oxidizedGateTimer run fill -105 176 -105 105 189 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=CYAN_COUGARS] store result score @a[team=CYAN_COUGARS] delve.timer.game.oxidizedGateTimer run fill -105 206 -105 105 219 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate
execute in delve:delve as @a if entity @s[scores={delve.stats.game.axeUsage=1..}] at @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}] as @p if entity @s[team=PURPLE_PENGUINS] store result score @a[team=PURPLE_PENGUINS] delve.timer.game.oxidizedGateTimer run fill -105 236 -105 105 249 105 minecraft:light[level=3] replace minecraft:waxed_oxidized_copper_grate

# kill bulb item for all players
execute as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:oxidized_copper_bulb"}}]

# close gates after timer for each team
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=RED_RACCOONS] run fill -105 86 -105 105 99 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=ORANGE_OTTERS] run fill -105 116 -105 105 129 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=PINK_PIKAS] run fill -105 146 -105 105 159 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=GREEN_GOATS] run fill -105 176 -105 105 189 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=CYAN_COUGARS] run fill -105 206 -105 105 219 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]
execute in delve:delve if entity @a[scores={delve.timer.game.oxidizedGateTimer=0..4},team=PURPLE_PENGUINS] run fill -105 236 -105 105 249 105 minecraft:waxed_oxidized_copper_grate replace minecraft:light[level=3]

# update timer every tick
scoreboard players remove @a[scores={delve.timer.game.oxidizedGateTimer=0..}] delve.timer.game.oxidizedGateTimer 5

# wax gates
execute in delve:delve as @a at @s if entity @s[scores={delve.stats.game.axeUsage=1..}] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:waxed_oxidized_copper_grate replace minecraft:oxidized_copper_grate

# reset axeUsage
scoreboard players set @a delve.stats.game.axeUsage 0
