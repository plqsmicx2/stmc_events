# generate ores around the map at designated locations

# update timer
scoreboard players add blitz.handler.iron blitz.timer.game.generate 1
scoreboard players add blitz.handler.gold blitz.timer.game.generate 1
scoreboard players add blitz.handler.emerald blitz.timer.game.generate 1

# generate iron every 3 seconds
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -36 105 -104 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 36 105 -104 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -36 105 104 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 36 105 104 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -104 105 -36 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 104 105 -36 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -104 105 36 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 104 105 36 {Item:{id:"minecraft:iron_ingot"}}
execute in stmc:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run scoreboard players set blitz.handler.iron blitz.timer.game.generate 0

# generate gold every 12 seconds
execute in stmc:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 0 99 117 {Item:{id:"minecraft:gold_ingot"}}
execute in stmc:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 117 99 0 {Item:{id:"minecraft:gold_ingot"}}
execute in stmc:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 0 99 -117 {Item:{id:"minecraft:gold_ingot"}}
execute in stmc:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item -117 99 0 {Item:{id:"minecraft:gold_ingot"}}
execute in stmc:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run scoreboard players set blitz.handler.gold blitz.timer.game.generate 0

# generate emeralds every 60 seconds
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 47 120 9 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 47 120 -9 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -47 120 9 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -47 120 -9 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 9 120 47 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 9 120 -47 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -9 120 47 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -9 120 -47 {Item:{id:"minecraft:emerald"}}
execute in stmc:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run scoreboard players set blitz.handler.emerald blitz.timer.game.generate 0

# prevent blocks from obstructing items
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] run setblock ~ ~ ~ air
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] run setblock ~ ~1 ~ air
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}] run setblock ~ ~ ~ air
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}] run setblock ~ ~1 ~ air
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] run setblock ~ ~ ~ air
execute in stmc:blitz at @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] run setblock ~ ~1 ~ air