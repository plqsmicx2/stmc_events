# function controlling the border based on round_time elapsed

# go ahead and set initial border again
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder set 300
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder center 0 0
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder damage amount 0.2
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder damage buffer 1
execute if score sg.r2.handler sg.r2.timer.round matches 1 run scoreboard players set sg.handler sg.borderRadius 200

# summon the entity that will track the center of our worldborder
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run kill @e[type=!player]
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.center"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,24F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual1"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,48F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual2"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,72F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual3"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,96F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual4"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,120F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual5"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,144F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual6"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,168F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual7"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,192F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual8"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,216F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual9"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,240F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual10"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,264F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual11"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,288F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual12"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,312F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual13"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,336F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual14"]}
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.worldborder.centerVisual","sg.worldborder.centerVisual15"]}

# create temporary timer scoreboard
execute if score sg.r2.handler sg.r2.timer.round matches 1 run scoreboard objectives add sg.r2.borderTickCounter dummy
execute if score sg.r2.handler sg.r2.timer.round matches 1 run scoreboard players set sg.handler sg.r2.borderTickCounter 0

# update temporary timer
scoreboard players add sg.r2.handler sg.r2.borderTickCounter 1

# announce quadrant of final border
execute if score sg.r2.handler sg.r2.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches 0.. if score sg.handler sg.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southeast.","color":"dark_red"}
execute if score sg.r2.handler sg.r2.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches 0.. if score sg.handler sg.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northeast.","color":"dark_red"}
execute if score sg.r2.handler sg.r2.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches ..-1 if score sg.handler sg.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southwest.","color":"dark_red"}
execute if score sg.r2.handler sg.r2.timer.round matches 100 \
        if score sg.handler sg.borderFourthCenterX matches ..-1 if score sg.handler sg.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northwest.","color":"dark_red"}

# <===== UPDATE BORDER =====>

# determine current border stage
execute if score sg.r2.handler sg.r2.timer.round matches ..900 run scoreboard players set sg.r2.handler sg.r2.borderStage 0
execute if score sg.r2.handler sg.r2.timer.round matches 900..3000 run scoreboard players set sg.r2.handler sg.r2.borderStage 1
execute if score sg.r2.handler sg.r2.timer.round matches 3000..3900 run scoreboard players set sg.r2.handler sg.r2.borderStage 2
execute if score sg.r2.handler sg.r2.timer.round matches 3900..4800 run scoreboard players set sg.r2.handler sg.r2.borderStage 3
execute if score sg.r2.handler sg.r2.timer.round matches 4800.. run scoreboard players set sg.r2.handler sg.r2.borderStage 4

# border stage 0
# constant radius of 225
# 1 damage per second
# reset tick counter every 20 ticks (1 second)
execute if score sg.r2.handler sg.r2.borderStage matches 0 if score sg.r2.handler sg.r2.borderTickCounter matches 20.. run scoreboard players set sg.r2.handler sg.r2.borderTickCounter 0
execute if score sg.r2.handler sg.r2.borderStage matches 0 run function survival_games:border_damage {radius:225, damage:0.5}

# border stage 1
# handles going from radius of 225 to radius of 100 over 105 seconds
# decreases radius by 1.19 blocks per second
# decrease radius by 1 block every 17 ticks
# does 1 damage per second

# decrease radius every 17 ticks
execute if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.r2.borderTickCounter matches 17.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.r2.borderTickCounter matches 17.. run scoreboard players set sg.r2.handler sg.r2.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 1 run function survival_games:round2/border_changes/stage1

# visualize border & call damage on players outside it
execute if score sg.r2.handler sg.r2.borderStage matches 1 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r2.handler sg.r2.borderStage matches 1 run data modify storage survival_games:data damage set value 0.5
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 1 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r2.handler sg.r2.timer.round matches 3000 as @e[tag=sg.worldborder.centerZoneOne] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 2
# handles going from radius of 100 to radius of 50 over 45 seconds
# decreases radius by 1.11 blocks per second
# decrease radius by 1 block every 18 ticks
# does 2 damage per second

# decrease radius every 9 ticks
execute if score sg.r2.handler sg.r2.borderStage matches 2 if score sg.r2.handler sg.r2.borderTickCounter matches 18.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r2.handler sg.r2.borderStage matches 2 if score sg.r2.handler sg.r2.borderTickCounter matches 18.. run scoreboard players set sg.r2.handler sg.r2.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 2 run function survival_games:round2/border_changes/stage2

# visualize border & call damage on players outside it
execute if score sg.r2.handler sg.r2.borderStage matches 2 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r2.handler sg.r2.borderStage matches 2 run data modify storage survival_games:data damage set value 1
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 2 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r2.handler sg.r2.timer.round matches 3900 as @e[tag=sg.worldborder.centerZoneTwo] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 3
# handles going from radius of 50 to radius of 0 over 45 seconds
# decreases radius by 1.11 blocks per second
# decrease radius by 1 block every 18 ticks
# does 3 damage per second

# decrease radius every 9 ticks
execute if score sg.r2.handler sg.r2.borderStage matches 3 if score sg.r2.handler sg.r2.borderTickCounter matches 18.. run scoreboard players remove sg.handler sg.borderRadius 1
execute if score sg.r2.handler sg.r2.borderStage matches 3 if score sg.r2.handler sg.r2.borderTickCounter matches 18.. run scoreboard players set sg.r2.handler sg.r2.borderTickCounter 0

# update center of border
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 3 run function survival_games:round2/border_changes/stage3

# visualize border & call damage on players outside it
execute if score sg.r2.handler sg.r2.borderStage matches 3 store result storage survival_games:data radius double 1 run scoreboard players get sg.handler sg.borderRadius
execute if score sg.r2.handler sg.r2.borderStage matches 3 run data modify storage survival_games:data damage set value 1.5
execute in survival_games:sg1 if score sg.r2.handler sg.r2.borderStage matches 3 run function survival_games:border_damage with storage survival_games:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score sg.r2.handler sg.r2.timer.round matches 4800 as @e[tag=sg.worldborder.centerZoneThree] at @s run tp @e[tag=sg.worldborder.center] ~ ~ ~

# border stage 4
# constant radius of 0
# 4 damage per second
execute if score sg.r2.handler sg.r2.borderStage matches 4 if score sg.r2.handler sg.r2.borderTickCounter matches 20.. run scoreboard players set sg.r2.handler sg.r2.borderTickCounter 0
execute if score sg.r2.handler sg.r2.borderStage matches 4 run function survival_games:border_damage {radius:0, damage:2}