# function controlling the border based on round_time elapsed

# go ahead and set initial border again
execute if score sg.r1.handler sg.r1.timer.round matches 1 run worldborder set 300
execute if score sg.r1.handler sg.r1.timer.round matches 1 run worldborder center 0 0
execute if score sg.r1.handler sg.r1.timer.round matches 1 run worldborder damage amount 0.2
execute if score sg.r1.handler sg.r1.timer.round matches 1 run worldborder damage buffer 1
execute if score sg.r1.handler sg.r1.timer.round matches 1 run scoreboard players set sg.handler sg.borderRadius 200

# summon the entity that will track the center of our worldborder
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run kill @e[type=!player]
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.center"]}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual1"]}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,90F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual2"]}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,180F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual3"]}
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,270F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual4"]}

# create temporary timer scoreboard
execute if score sg.r1.handler sg.r1.timer.round matches 1 run scoreboard objectives add sg.r1.borderTickCounter dummy
execute if score sg.r1.handler sg.r1.timer.round matches 1 run scoreboard players set sg.handler sg.r1.borderTickCounter 0

# update temporary timer
scoreboard players add sg.r1.handler sg.r1.borderTickCounter 1

# announce quadrant of final border
execute if score sg.r1.handler sg.r1.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches 0.. if score sg.handler sg.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southeast.","color":"dark_red"}
execute if score sg.r1.handler sg.r1.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches 0.. if score sg.handler sg.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northeast.","color":"dark_red"}
execute if score sg.r1.handler sg.r1.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches ..-1 if score sg.handler sg.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southwest.","color":"dark_red"}
execute if score sg.r1.handler sg.r1.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches ..-1 if score sg.handler sg.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northwest.","color":"dark_red"}

# <===== UPDATE BORDER =====>

# determine current border stage
execute if score sg.r1.handler sg.r1.timer.round matches ..600 run scoreboard players set sg.r1.handler sg.r1.borderStage 0
execute if score sg.r1.handler sg.r1.timer.round matches 600..2400 run scoreboard players set sg.r1.handler sg.r1.borderStage 1
execute if score sg.r1.handler sg.r1.timer.round matches 2400..2700 run scoreboard players set sg.r1.handler sg.r1.borderStage 2
execute if score sg.r1.handler sg.r1.timer.round matches 2700..3300 run scoreboard players set sg.r1.handler sg.r1.borderStage 3
execute if score sg.r1.handler sg.r1.timer.round matches 3300..3900 run scoreboard players set sg.r1.handler sg.r1.borderStage 4
execute if score sg.r1.handler sg.r1.timer.round matches 3900..4500 run scoreboard players set sg.r1.handler sg.r1.borderStage 5
execute if score sg.r1.handler sg.r1.timer.round matches 4500.. run scoreboard players set sg.r1.handler sg.r1.borderStage 6

# border stage 0
# constant radius of 200
# 1 damage per second
# reset tick counter every 20 ticks (1 second)
execute if score sg.r1.handler sg.r1.borderStage matches 0 if score sg.r1.handler sg.r1.borderTickCounter matches 20.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0
execute if score sg.r1.handler sg.r1.borderStage matches 0 run function survival_games:border_damage {radius:200, damage:0.1}

# border stage 1
# handles going from radius of 200 to radius of 80 over 90 seconds
# decreases radius by 1.33 blocks per second
# decrease radius by 1 block every 15 ticks
# does 1 damage per second (0.05 per tick)

# decrease radius every 15 ticks
execute if score sg.r1.handler sg.r1.borderStage matches 1 if score sg.r1.handler sg.r1.borderTickCounter matches 15.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r1.handler sg.r1.borderStage matches 1 if score sg.r1.handler sg.r1.borderTickCounter matches 15.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 1 run function survival_games:round1/border_changes/stage1

# visualize border & call damage on players outside it
execute if score sg.r1.handler sg.r1.borderStage matches 1 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r1.handler sg.r1.borderStage matches 1 store success storage survival_games:data damage double 0.1 run scoreboard players get sg.handler sg.borderRadius
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 1 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r1.handler sg.r1.timer.round matches 2400 as @e[tag=sg.worldborder.centerZoneOne] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 2
# constant radius of 80
# 2 damage per second (0.1 per tick)
execute if score sg.r1.handler sg.r1.borderStage matches 2 if score sg.r1.handler sg.r1.borderTickCounter matches 20.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0
execute if score sg.r1.handler sg.r1.borderStage matches 2 run function survival_games:border_damage {radius:80, damage:0.2}

# border stage 3
# handles going from radius of 80 to radius of 40 over 30 seconds
# decreases radius by 1.33 blocks per second
# decrease radius by 1 block every 15 ticks
# does 2 damage per second (0.1 per tick)

# decrease radius every 9 ticks
execute if score sg.r1.handler sg.r1.borderStage matches 3 if score sg.r1.handler sg.r1.borderTickCounter matches 15.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r1.handler sg.r1.borderStage matches 3 if score sg.r1.handler sg.r1.borderTickCounter matches 15.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 3 run function survival_games:round1/border_changes/stage2

# visualize border & call damage on players outside it
execute if score sg.r1.handler sg.r1.borderStage matches 3 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r1.handler sg.r1.borderStage matches 3 store success storage survival_games:data damage double 0.2 run scoreboard players get sg.handler sg.borderRadius
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 3 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r1.handler sg.r1.timer.round matches 3300 as @e[tag=sg.worldborder.centerZoneTwo] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 4
# handles going from radius of 40 to radius of 20 over 30 seconds
# decreases radius by 0.67 blocks per second
# decrease radius by 1 block every 30 ticks
# does 5 damage per second (0.25 per tick)

# decrease radius every 9 ticks
execute if score sg.r1.handler sg.r1.borderStage matches 4 if score sg.r1.handler sg.r1.borderTickCounter matches 30.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r1.handler sg.r1.borderStage matches 4 if score sg.r1.handler sg.r1.borderTickCounter matches 30.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 4 run function survival_games:round1/border_changes/stage3

# visualize border & call damage on players outside it
execute if score sg.r1.handler sg.r1.borderStage matches 4 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r1.handler sg.r1.borderStage matches 4 store success storage survival_games:data damage double 0.5 run scoreboard players get sg.handler sg.borderRadius
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 4 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r1.handler sg.r1.timer.round matches 3900 as @e[tag=sg.worldborder.centerZoneThree] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 5
# handles going from radius of 20 to radius of 0 over 30 seconds
# decreases radius by 0.6 blocks per second
# decrease radius by 1 block every 33 ticks
# does 8 damage per second (0.4 per tick)

# decrease radius every 9 ticks
execute if score sg.r1.handler sg.r1.borderStage matches 5 if score sg.r1.handler sg.r1.borderTickCounter matches 33.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r1.handler sg.r1.borderStage matches 5 if score sg.r1.handler sg.r1.borderTickCounter matches 33.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 5 run function survival_games:round1/border_changes/stage4

# visualize border & call damage on players outside it
execute if score sg.r1.handler sg.r1.borderStage matches 5 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r1.handler sg.r1.borderStage matches 5 store success storage survival_games:data damage double 0.9 run scoreboard players get sg.handler sg.borderRadius
execute in survival_games:sg1 if score sg.r1.handler sg.r1.borderStage matches 5 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r1.handler sg.r1.timer.round matches 4500 as @e[tag=sg.worldborder.centerZoneFour] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 6
# constant radius of 0
# 8 damage per second (0.4 per tick)
execute if score sg.r1.handler sg.r1.borderStage matches 6 if score sg.r1.handler sg.r1.borderTickCounter matches 20.. run scoreboard players set sg.r1.handler sg.r1.borderTickCounter 0
execute if score sg.r1.handler sg.r1.borderStage matches 6 run function survival_games:border_damage {radius:0, damage:0.9}