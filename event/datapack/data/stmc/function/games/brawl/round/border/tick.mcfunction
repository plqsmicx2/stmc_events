# function controlling the border based on round_time elapsed

# increment border
scoreboard players add brawl.handler brawl.timer.border 1

# go ahead and set initial border again
execute if score brawl.handler brawl.timer.border matches 1 run worldborder set 300
execute if score brawl.handler brawl.timer.border matches 1 run worldborder center 0 0
execute if score brawl.handler brawl.timer.border matches 1 run worldborder damage amount 0.2
execute if score brawl.handler brawl.timer.border matches 1 run worldborder damage buffer 1
execute if score brawl.handler brawl.timer.border matches 1 run scoreboard players set brawl.handler brawl.borderRadius 200

# summon the entity that will track the center of our worldborder
execute if score brawl.handler brawl.timer.border matches 1 run kill @e[type=!player]
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.center"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,24F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual1"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,48F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual2"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,72F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual3"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,96F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual4"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,120F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual5"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,144F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual6"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,168F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual7"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,192F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual8"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,216F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual9"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,240F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual10"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,264F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual11"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,288F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual12"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,312F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual13"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,336F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual14"]}
execute if score brawl.handler brawl.timer.border matches 1 run summon armor_stand 0 120 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["brawl.worldborder.centerVisual","brawl.worldborder.centerVisual15"]}

# create temporary timer scoreboard
execute if score brawl.handler brawl.timer.border matches 1 run scoreboard objectives add brawl.borderTickCounter dummy
execute if score brawl.handler brawl.timer.border matches 1 run scoreboard players set brawl.handler brawl.borderTickCounter 0

# update temporary timer
scoreboard players add brawl.handler brawl.borderTickCounter 1

# announce quadrant of final border
execute if score brawl.handler brawl.timer.border matches 100 \
        if score brawl.handler brawl.borderFourthCenterX matches 0.. if score brawl.handler brawl.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southeast.","color":"dark_red"}
execute if score brawl.handler brawl.timer.border matches 100 \
        if score brawl.handler brawl.borderFourthCenterX matches 0.. if score brawl.handler brawl.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northeast.","color":"dark_red"}
execute if score brawl.handler brawl.timer.border matches 100 \
        if score brawl.handler brawl.borderFourthCenterX matches ..-1 if score brawl.handler brawl.borderFourthCenterZ matches 0.. run \
        tellraw @a {"text":"The border will end toward the Southwest.","color":"dark_red"}
execute if score brawl.handler brawl.timer.border matches 100 \
        if score brawl.handler brawl.borderFourthCenterX matches ..-1 if score brawl.handler brawl.borderFourthCenterZ matches ..-1 run \
        tellraw @a {"text":"The border will end toward the Northwest.","color":"dark_red"}

# <===== UPDATE BORDER =====>

# determine current border stage
execute if score brawl.handler brawl.timer.border matches ..900 run scoreboard players set brawl.handler brawl.borderStage 0
execute if score brawl.handler brawl.timer.border matches 900..3000 run scoreboard players set brawl.handler brawl.borderStage 1
execute if score brawl.handler brawl.timer.border matches 3000..3900 run scoreboard players set brawl.handler brawl.borderStage 2
execute if score brawl.handler brawl.timer.border matches 3900..4800 run scoreboard players set brawl.handler brawl.borderStage 3
execute if score brawl.handler brawl.timer.border matches 4800.. run scoreboard players set brawl.handler brawl.borderStage 4

# border stage 0
# constant radius of 225
# 1 damage per second
# reset tick counter every 20 ticks (1 second)
execute if score brawl.handler brawl.borderStage matches 0 if score brawl.handler brawl.borderTickCounter matches 20.. run scoreboard players set brawl.handler brawl.borderTickCounter 0
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 0 run function stmc:games/brawl/round/border/damage {radius:225, damage:0.5}

# border stage 1
# handles going from radius of 225 to radius of 100 over 105 seconds
# decreases radius by 1.19 blocks per second
# decrease radius by 1 block every 17 ticks
# does 1 damage per second

# decrease radius every 17 ticks
execute if score brawl.handler brawl.borderStage matches 1 if score brawl.handler brawl.borderTickCounter matches 17.. run scoreboard players remove brawl.handler brawl.borderRadius 1
execute if score brawl.handler brawl.borderStage matches 1 if score brawl.handler brawl.borderTickCounter matches 17.. run scoreboard players set brawl.handler brawl.borderTickCounter 0

# update center of border
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 1 run function stmc:games/brawl/round/border/change/stage1

# visualize border & call damage on players outside it
execute if score brawl.handler brawl.borderStage matches 1 store result storage brawl:data radius double 1 run scoreboard players get brawl.handler brawl.borderRadius
execute if score brawl.handler brawl.borderStage matches 1 run data modify storage brawl:data damage set value 0.5
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 1 run function stmc:games/brawl/round/border/damage with storage brawl:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score brawl.handler brawl.timer.border matches 3000 as @e[tag=brawl.worldborder.centerZoneOne] at @s run tp @e[tag=brawl.worldborder.center] ~ ~ ~

# border stage 2
# handles going from radius of 100 to radius of 50 over 45 seconds
# decreases radius by 1.11 blocks per second
# decrease radius by 1 block every 18 ticks
# does 2 damage per second

# decrease radius every 9 ticks
execute if score brawl.handler brawl.borderStage matches 2 if score brawl.handler brawl.borderTickCounter matches 18.. run scoreboard players remove brawl.handler brawl.borderRadius 1
execute if score brawl.handler brawl.borderStage matches 2 if score brawl.handler brawl.borderTickCounter matches 18.. run scoreboard players set brawl.handler brawl.borderTickCounter 0

# update center of border
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 2 run function stmc:games/brawl/round/border/change/stage2

# visualize border & call damage on players outside it
execute if score brawl.handler brawl.borderStage matches 2 store result storage brawl:data radius double 1 run scoreboard players get brawl.handler brawl.borderRadius
execute if score brawl.handler brawl.borderStage matches 2 run data modify storage brawl:data damage set value 1
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 2 run function stmc:games/brawl/round/border/damage with storage brawl:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score brawl.handler brawl.timer.border matches 3900 as @e[tag=brawl.worldborder.centerZoneTwo] at @s run tp @e[tag=brawl.worldborder.center] ~ ~ ~

# border stage 3
# handles going from radius of 50 to radius of 0 over 45 seconds
# decreases radius by 1.11 blocks per second
# decrease radius by 1 block every 18 ticks
# does 3 damage per second

# decrease radius every 9 ticks
execute if score brawl.handler brawl.borderStage matches 3 if score brawl.handler brawl.borderTickCounter matches 18.. run scoreboard players remove brawl.handler brawl.borderRadius 1
execute if score brawl.handler brawl.borderStage matches 3 if score brawl.handler brawl.borderTickCounter matches 18.. run scoreboard players set brawl.handler brawl.borderTickCounter 0

# update center of border
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 3 run function stmc:games/brawl/round/border/change/stage3

# visualize border & call damage on players outside it
execute if score brawl.handler brawl.borderStage matches 3 store result storage brawl:data radius double 1 run scoreboard players get brawl.handler brawl.borderRadius
execute if score brawl.handler brawl.borderStage matches 3 run data modify storage brawl:data damage set value 1.5
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 3 run function stmc:games/brawl/round/border/damage with storage brawl:data

# at end of border stage, force teleport center to actual center to avoid any rounding errors
execute if score brawl.handler brawl.timer.border matches 4800 as @e[tag=brawl.worldborder.centerZoneThree] at @s run tp @e[tag=brawl.worldborder.center] ~ ~ ~

# border stage 4
# constant radius of 0
# 4 damage per second
execute if score brawl.handler brawl.borderStage matches 4 if score brawl.handler brawl.borderTickCounter matches 20.. run scoreboard players set brawl.handler brawl.borderTickCounter 0
execute in stmc:brawl/main if score brawl.handler brawl.borderStage matches 4 run function stmc:games/brawl/round/border/damage {radius:0, damage:2}