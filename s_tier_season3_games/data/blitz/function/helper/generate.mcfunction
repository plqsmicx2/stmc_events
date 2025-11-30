# generate ores around the map at designated locations

# update timer
scoreboard players add blitz.handler.iron blitz.timer.game.generate 1
scoreboard players add blitz.handler.gold blitz.timer.game.generate 1
scoreboard players add blitz.handler.emerald blitz.timer.game.generate 1

# generate iron every 3 seconds
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -36 105 -104 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 36 105 -104 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -36 105 104 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 36 105 104 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -104 105 -36 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 104 105 -36 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item -104 105 36 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run summon item 104 105 36 {Item:{id:"minecraft:iron_ingot"}}
execute in blitz:blitz if score blitz.handler.iron blitz.timer.game.generate matches 60 run scoreboard players set blitz.handler.iron blitz.timer.game.generate 0

# generate gold every 12 seconds
execute in blitz:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 0 99 117 {Item:{id:"minecraft:gold_ingot"}}
execute in blitz:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 117 99 0 {Item:{id:"minecraft:gold_ingot"}}
execute in blitz:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item 0 99 -117 {Item:{id:"minecraft:gold_ingot"}}
execute in blitz:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run summon item -117 99 0 {Item:{id:"minecraft:gold_ingot"}}
execute in blitz:blitz if score blitz.handler.gold blitz.timer.game.generate matches 240 run scoreboard players set blitz.handler.gold blitz.timer.game.generate 0

# generate emeralds every 60 seconds
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 47 120 9 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 47 120 -9 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -47 120 9 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -47 120 -9 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 9 120 47 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item 9 120 -47 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -9 120 47 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run summon item -9 120 -47 {Item:{id:"minecraft:emerald"}}
execute in blitz:blitz if score blitz.handler.emerald blitz.timer.game.generate matches 1200 run scoreboard players set blitz.handler.emerald blitz.timer.game.generate 0