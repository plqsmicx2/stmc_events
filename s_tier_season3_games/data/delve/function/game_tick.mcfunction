# function handling the game of delve

# <===== START GAME =====>

execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 91 0 container.0 with raw_copper 30
execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 121 0 container.0 with raw_copper 30
execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 151 0 container.0 with raw_copper 30
execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 181 0 container.0 with raw_copper 30
execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 211 0 container.0 with raw_copper 30
execute in delve:delve if score delve.handler delve.timer.game matches 3 run item replace block 1 241 0 container.0 with raw_copper 30

execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 90 -120 120 100 120 air replace tinted_glass
execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 120 -120 120 130 120 air replace tinted_glass
execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 150 -120 120 160 120 air replace tinted_glass
execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 180 -120 120 190 120 air replace tinted_glass
execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 210 -120 120 220 120 air replace tinted_glass
execute in delve:delve if score delve.handler delve.timer.game matches 3 run fill -120 240 -120 120 250 120 air replace tinted_glass

execute if score delve.handler delve.timer.game matches 3 run gamemode survival @a

# <===== CHECK FOR ITEMS =====>

# coal first
scoreboard players set @a delve.stats.coalCount 0
execute if score delve.RedRaccoons delve.teams_completed matches 0 run scoreboard players set delve.RedRaccoons delve.stats.coalCount 0
execute if score delve.OrangeOtters delve.teams_completed matches 0 run scoreboard players set delve.OrangeOtters delve.stats.coalCount 0
execute if score delve.PinkPikas delve.teams_completed matches 0 run scoreboard players set delve.PinkPikas delve.stats.coalCount 0
execute if score delve.GreenGoats delve.teams_completed matches 0 run scoreboard players set delve.GreenGoats delve.stats.coalCount 0
execute if score delve.CyanCougars delve.teams_completed matches 0 run scoreboard players set delve.CyanCougars delve.stats.coalCount 0
execute if score delve.PurplePenguins delve.teams_completed matches 0 run scoreboard players set delve.PurplePenguins delve.stats.coalCount 0

execute in delve:delve if score delve.RedRaccoons delve.teams_completed matches 0 store result score delve.RedRaccoons delve.stats.coalCount run data get block 1 91 0 Items[{"id": "minecraft:coal"}].count
execute in delve:delve if score delve.OrangeOtters delve.teams_completed matches 0 store result score delve.OrangeOtters delve.stats.coalCount run data get block 1 121 0 Items[{"id": "minecraft:coal"}].count
execute in delve:delve if score delve.PinkPikas delve.teams_completed matches 0 store result score delve.PinkPikas delve.stats.coalCount run data get block 1 151 0 Items[{"id": "minecraft:coal"}].count
execute in delve:delve if score delve.GreenGoats delve.teams_completed matches 0 store result score delve.GreenGoats delve.stats.coalCount run data get block 1 181 0 Items[{"id": "minecraft:coal"}].count
execute in delve:delve if score delve.CyanCougars delve.teams_completed matches 0 store result score delve.CyanCougars delve.stats.coalCount run data get block 1 211 0 Items[{"id": "minecraft:coal"}].count
execute in delve:delve if score delve.PurplePenguins delve.teams_completed matches 0 store result score delve.PurplePenguins delve.stats.coalCount run data get block 1 241 0 Items[{"id": "minecraft:coal"}].count

# copper second
scoreboard players set @a delve.stats.copperCount 0
execute if score delve.RedRaccoons delve.teams_completed matches 0 run scoreboard players set delve.RedRaccoons delve.stats.copperCount 0
execute if score delve.OrangeOtters delve.teams_completed matches 0 run scoreboard players set delve.OrangeOtters delve.stats.copperCount 0
execute if score delve.PinkPikas delve.teams_completed matches 0 run scoreboard players set delve.PinkPikas delve.stats.copperCount 0
execute if score delve.GreenGoats delve.teams_completed matches 0 run scoreboard players set delve.GreenGoats delve.stats.copperCount 0
execute if score delve.CyanCougars delve.teams_completed matches 0 run scoreboard players set delve.CyanCougars delve.stats.copperCount 0
execute if score delve.PurplePenguins delve.teams_completed matches 0 run scoreboard players set delve.PurplePenguins delve.stats.copperCount 0

execute in delve:delve if score delve.RedRaccoons delve.teams_completed matches 0 store result score delve.RedRaccoons delve.stats.copperCount run data get block 1 91 0 Items[{"id": "minecraft:copper_ingot"}].count
execute in delve:delve if score delve.OrangeOtters delve.teams_completed matches 0 store result score delve.OrangeOtters delve.stats.copperCount run data get block 1 121 0 Items[{"id": "minecraft:copper_ingot"}].count
execute in delve:delve if score delve.PinkPikas delve.teams_completed matches 0 store result score delve.PinkPikas delve.stats.copperCount run data get block 1 151 0 Items[{"id": "minecraft:copper_ingot"}].count
execute in delve:delve if score delve.GreenGoats delve.teams_completed matches 0 store result score delve.GreenGoats delve.stats.copperCount run data get block 1 181 0 Items[{"id": "minecraft:copper_ingot"}].count
execute in delve:delve if score delve.CyanCougars delve.teams_completed matches 0 store result score delve.CyanCougars delve.stats.copperCount run data get block 1 211 0 Items[{"id": "minecraft:copper_ingot"}].count
execute in delve:delve if score delve.PurplePenguins delve.teams_completed matches 0 store result score delve.PurplePenguins delve.stats.copperCount run data get block 1 241 0 Items[{"id": "minecraft:copper_ingot"}].count

execute as @a store result score @s delve.stats.copperCount run clear @s minecraft:copper_ingot 0

execute if score delve.RedRaccoons delve.teams_completed matches 0 as @a[team=RED_RACCOONS] run scoreboard players operation delve.RedRaccoons delve.stats.copperCount += @s delve.stats.copperCount
execute if score delve.OrangeOtters delve.teams_completed matches 0 as @a[team=ORANGE_OTTERS] run scoreboard players operation delve.OrangeOtters delve.stats.copperCount += @s delve.stats.copperCount
execute if score delve.PinkPikas delve.teams_completed matches 0 as @a[team=PINK_PIKAS] run scoreboard players operation delve.PinkPikas delve.stats.copperCount += @s delve.stats.copperCount
execute if score delve.GreenGoats delve.teams_completed matches 0 as @a[team=GREEN_GOATS] run scoreboard players operation delve.GreenGoats delve.stats.copperCount += @s delve.stats.copperCount
execute if score delve.CyanCougars delve.teams_completed matches 0 as @a[team=CYAN_COUGARS] run scoreboard players operation delve.CyanCougars delve.stats.copperCount += @s delve.stats.copperCount
execute if score delve.PurplePenguins delve.teams_completed matches 0 as @a[team=PURPLE_PENGUINS] run scoreboard players operation delve.PurplePenguins delve.stats.copperCount += @s delve.stats.copperCount

# diamonds third
scoreboard players set @a delve.stats.diamondCount 0
execute if score delve.RedRaccoons delve.teams_completed matches 0 run scoreboard players set delve.RedRaccoons delve.stats.diamondCount 0
execute if score delve.OrangeOtters delve.teams_completed matches 0 run scoreboard players set delve.OrangeOtters delve.stats.diamondCount 0
execute if score delve.PinkPikas delve.teams_completed matches 0 run scoreboard players set delve.PinkPikas delve.stats.diamondCount 0
execute if score delve.GreenGoats delve.teams_completed matches 0 run scoreboard players set delve.GreenGoats delve.stats.diamondCount 0
execute if score delve.CyanCougars delve.teams_completed matches 0 run scoreboard players set delve.CyanCougars delve.stats.diamondCount 0
execute if score delve.PurplePenguins delve.teams_completed matches 0 run scoreboard players set delve.PurplePenguins delve.stats.diamondCount 0

execute as @a store result score @s delve.stats.diamondCount run clear @s minecraft:diamond 0

execute if score delve.RedRaccoons delve.teams_completed matches 0 as @a[team=RED_RACCOONS] run scoreboard players operation delve.RedRaccoons delve.stats.diamondCount += @s delve.stats.diamondCount
execute if score delve.OrangeOtters delve.teams_completed matches 0 as @a[team=ORANGE_OTTERS] run scoreboard players operation delve.OrangeOtters delve.stats.diamondCount += @s delve.stats.diamondCount
execute if score delve.PinkPikas delve.teams_completed matches 0 as @a[team=PINK_PIKAS] run scoreboard players operation delve.PinkPikas delve.stats.diamondCount += @s delve.stats.diamondCount
execute if score delve.GreenGoats delve.teams_completed matches 0 as @a[team=GREEN_GOATS] run scoreboard players operation delve.GreenGoats delve.stats.diamondCount += @s delve.stats.diamondCount
execute if score delve.CyanCougars delve.teams_completed matches 0 as @a[team=CYAN_COUGARS] run scoreboard players operation delve.CyanCougars delve.stats.diamondCount += @s delve.stats.diamondCount
execute if score delve.PurplePenguins delve.teams_completed matches 0 as @a[team=PURPLE_PENGUINS] run scoreboard players operation delve.PurplePenguins delve.stats.diamondCount += @s delve.stats.diamondCount

# <===== SPAWN EGGS =====>

# create dispenser on spawn egg
execute in delve:delve as @e[type=item] if data entity @s Item.components."minecraft:entity_data" at @s run setblock ~ ~ ~ minecraft:dispenser[facing=up]{Items:[{Slot:0b,id:"minecraft:stick",count:1}]}
execute in delve:delve as @e[type=item] if data entity @s Item.components."minecraft:entity_data" at @s run data modify block ~ ~ ~ Items[0] set from entity @s Item
execute in delve:delve as @e[type=item] if data entity @s Item.components."minecraft:entity_data" store success entity @s Pos[1] double -300 at @s run setblock ~ ~1 ~ minecraft:stone_button[face=floor,powered=true]

# delete dispenser on entity
execute in delve:delve at @e[nbt={drop_chances:{mainhand:1.0f}}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:stone_button
execute in delve:delve at @e[nbt={drop_chances:{mainhand:1.0f}}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:dispenser

# <===== SPEED UP FURNACE =====>

# shorten each furnace if lit
execute in delve:delve if block 1 91 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 91 0 lit_time_remaining set value 200s
execute in delve:delve if block 1 121 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 121 0 lit_time_remaining set value 200s
execute in delve:delve if block 1 151 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 151 0 lit_time_remaining set value 200s
execute in delve:delve if block 1 181 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 181 0 lit_time_remaining set value 200s
execute in delve:delve if block 1 211 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 211 0 lit_time_remaining set value 200s
execute in delve:delve if block 1 241 0 minecraft:furnace{lit_time_remaining:1600s} run data modify block 1 241 0 lit_time_remaining set value 200s

# <===== VEXES =====>

# summon vexes if door & on plate
execute in delve:delve at @a[gamemode=survival] if block ~ ~ ~ minecraft:stone_pressure_plate unless entity @n[type=vex,distance=..10] unless entity @n[type=experience_orb,distance=..10] positioned ~2 ~4 ~3 summon minecraft:vex positioned ~-5 ~ ~-4 summon minecraft:vex positioned ~5.5 ~ ~-2 summon minecraft:vex as @e[type=minecraft:vex,distance=..10] store success entity @s Health int 1 run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:polished_deepslate replace minecraft:polished_deepslate destroy
execute in delve:delve run kill @e[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}}]
execute in delve:delve as @e[type=vex] run data modify entity @s NoAI set value 1b

# open door if xp & no vexes
execute in delve:delve at @e[type=minecraft:experience_orb] at @a[distance=..10] if block ~ ~ ~ minecraft:stone_pressure_plate unless entity @n[type=vex,distance=..10] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:polished_deepslate
execute in delve:delve at @e[type=minecraft:experience_orb] at @a[distance=..10] if block ~ ~ ~ minecraft:stone_pressure_plate unless entity @n[type=vex,distance=..10] run playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ .5 .6 0

# kill xp to prevent extra playsounds
execute in delve:delve run kill @e[type=minecraft:experience_orb]

# <===== END GAME =====>

# if furnace is lit, reset furnace unlit time
execute in delve:delve unless block 1 91 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.RedRaccoons delve.timer.game.furnaceUnlit 0
execute in delve:delve unless block 1 121 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.OrangeOtters delve.timer.game.furnaceUnlit 0
execute in delve:delve unless block 1 151 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.PinkPikas delve.timer.game.furnaceUnlit 0
execute in delve:delve unless block 1 181 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.GreenGoats delve.timer.game.furnaceUnlit 0
execute in delve:delve unless block 1 211 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.CyanCougars delve.timer.game.furnaceUnlit 0
execute in delve:delve unless block 1 241 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 10.. run scoreboard players set delve.PurplePenguins delve.timer.game.furnaceUnlit 0

# if furnace is not lit, end the game for that team
execute in delve:delve if block 1 91 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.RedRaccoons delve.timer.game.furnaceUnlit 1
execute if score delve.RedRaccoons delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.RedRaccoons delve.teams_completed 1
execute in delve:delve if block 1 121 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.OrangeOtters delve.timer.game.furnaceUnlit 1
execute if score delve.OrangeOtters delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.OrangeOtters delve.teams_completed 1
execute in delve:delve if block 1 151 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.PinkPikas delve.timer.game.furnaceUnlit 1
execute if score delve.PinkPikas delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.PinkPikas delve.teams_completed 1
execute in delve:delve if block 1 181 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.GreenGoats delve.timer.game.furnaceUnlit 1
execute if score delve.GreenGoats delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.GreenGoats delve.teams_completed 1
execute in delve:delve if block 1 211 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.CyanCougars delve.timer.game.furnaceUnlit 1
execute if score delve.CyanCougars delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.CyanCougars delve.teams_completed 1
execute in delve:delve if block 1 241 0 furnace{lit_time_remaining:0s} if score delve.handler delve.timer.game matches 40.. run scoreboard players add delve.PurplePenguins delve.timer.game.furnaceUnlit 1
execute if score delve.PurplePenguins delve.timer.game.furnaceUnlit matches 5.. run scoreboard players set delve.PurplePenguins delve.teams_completed 1

# update delve.teams_completed for each team
scoreboard players set delve.handler delve.teams_completed 0
execute if score delve.RedRaccoons delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1
execute if score delve.OrangeOtters delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1
execute if score delve.PinkPikas delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1
execute if score delve.GreenGoats delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1
execute if score delve.CyanCougars delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1
execute if score delve.PurplePenguins delve.teams_completed matches 1 run scoreboard players add delve.handler delve.teams_completed 1

# and end game if all teams are completed
execute if score delve.handler delve.teams_completed matches 6 run scoreboard players set delve.handler delve.stage 4

# set players to spectator
execute as @a at @s[gamemode=!spectator] at @s[team=RED_RACCOONS] if score delve.RedRaccoons delve.teams_completed matches 1 run gamemode spectator @s
execute as @a at @s[gamemode=!spectator] at @s[team=ORANGE_OTTERS] if score delve.OrangeOtters delve.teams_completed matches 1 run gamemode spectator @s
execute as @a at @s[gamemode=!spectator] at @s[team=PINK_PIKAS] if score delve.PinkPikas delve.teams_completed matches 1 run gamemode spectator @s
execute as @a at @s[gamemode=!spectator] at @s[team=GREEN_GOATS] if score delve.GreenGoats delve.teams_completed matches 1 run gamemode spectator @s
execute as @a at @s[gamemode=!spectator] at @s[team=CYAN_COUGARS] if score delve.CyanCougars delve.teams_completed matches 1 run gamemode spectator @s
execute as @a at @s[gamemode=!spectator] at @s[team=PURPLE_PENGUINS] if score delve.PurplePenguins delve.teams_completed matches 1 run gamemode spectator @s