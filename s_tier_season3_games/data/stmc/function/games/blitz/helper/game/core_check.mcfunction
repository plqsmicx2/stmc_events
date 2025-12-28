# helper function that checks if a team's core is intact
# run in stmc:blitz

# Red
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 1 unless block -36 106 97 red_wool run scoreboard players set blitz.RedRaccoons blitz.stats.coreIntact 2
$execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(redName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.RedRaccoons blitz.stats.coreIntact matches 2 run scoreboard players set blitz.RedRaccoons blitz.stats.coreIntact 0

# Orange
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 1 unless block -36 106 -97 orange_wool run scoreboard players set blitz.OrangeOtters blitz.stats.coreIntact 2
$execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(orangeName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.OrangeOtters blitz.stats.coreIntact matches 2 run scoreboard players set blitz.OrangeOtters blitz.stats.coreIntact 0

# Pink
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 1 unless block 97 106 -36 pink_wool run scoreboard players set blitz.PinkPikas blitz.stats.coreIntact 2
$execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(pinkName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.PinkPikas blitz.stats.coreIntact matches 2 run scoreboard players set blitz.PinkPikas blitz.stats.coreIntact 0

# Yellow
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 1 unless block 97 106 36 yellow_wool run scoreboard players set blitz.YellowYaks blitz.stats.coreIntact 2
$execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(yellowName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.YellowYaks blitz.stats.coreIntact matches 2 run scoreboard players set blitz.YellowYaks blitz.stats.coreIntact 0

# Green
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 1 unless block 36 106 -97 green_wool run scoreboard players set blitz.GreenGoats blitz.stats.coreIntact 2
$execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(greenName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.GreenGoats blitz.stats.coreIntact matches 2 run scoreboard players set blitz.GreenGoats blitz.stats.coreIntact 0

# Cyan
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 1 unless block -97 106 -36 cyan_wool run scoreboard players set blitz.CyanCougars blitz.stats.coreIntact 2
$execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(cyanName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.CyanCougars blitz.stats.coreIntact matches 2 run scoreboard players set blitz.CyanCougars blitz.stats.coreIntact 0

# Purple
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 1 unless block -97 106 36 purple_wool run scoreboard players set blitz.PurplePenguins blitz.stats.coreIntact 2
$execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(purpleName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.PurplePenguins blitz.stats.coreIntact matches 2 run scoreboard players set blitz.PurplePenguins blitz.stats.coreIntact 0

# Blue
execute if score blitz.BlueBears blitz.stats.coreIntact matches 1 unless block 36 106 97 blue_wool run scoreboard players set blitz.BlueBears blitz.stats.coreIntact 2
$execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 run tellraw @a ["",{text:"The $(blueName)' core has been broken!",color:light_purple,bold:true}]
execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1
execute if score blitz.BlueBears blitz.stats.coreIntact matches 2 run scoreboard players set blitz.BlueBears blitz.stats.coreIntact 0