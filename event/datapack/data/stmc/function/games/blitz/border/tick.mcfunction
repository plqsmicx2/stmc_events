# function controlling the border based on round_time elapsed

# go ahead and set initial border again
execute if score blitz.handler blitz.timer.game matches 1 run worldborder set 300
execute if score blitz.handler blitz.timer.game matches 1 run worldborder center 0 0
execute if score blitz.handler blitz.timer.game matches 1 run worldborder damage amount 0.2
execute if score blitz.handler blitz.timer.game matches 1 run worldborder damage buffer 1
execute if score blitz.handler blitz.timer.game matches 1 run scoreboard players set blitz.handler blitz.borderRadius 200

# summon the entity that will track the center of our worldborder
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run kill @e[type=armor_stand]
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center1","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,22F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center2","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,45F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center3","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,67F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center4","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,90F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center5","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,112F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center6","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,135F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center7","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,157F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center8","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,180F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center9","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,202F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center10","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,225F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center11","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,247F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center12","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,270F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center13","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,292F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center14","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,315F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center15","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,337F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center16","blitz.worldborder.centerVisual"]}

# update temporary timer
scoreboard players add blitz.handler blitz.borderTickCounter 1

# <===== UPDATE BORDER =====>

# determine current border stage
execute if score blitz.handler blitz.timer.game matches ..3600 run scoreboard players set blitz.handler blitz.borderStage 0
execute if score blitz.handler blitz.timer.game matches 3601..8400 run scoreboard players set blitz.handler blitz.borderStage 1
execute if score blitz.handler blitz.timer.game matches 8401..13200 run scoreboard players set blitz.handler blitz.borderStage 2
execute if score blitz.handler blitz.timer.game matches 13201.. run scoreboard players set blitz.handler blitz.borderStage 3

# border stage 0
# constant radius of 200
# 4 damage per second
# reset tick counter every 20 ticks (1 second)
execute if score blitz.handler blitz.borderStage matches 0 if score blitz.handler blitz.borderTickCounter matches 20.. run scoreboard players set blitz.handler blitz.borderTickCounter 0
execute if score blitz.handler blitz.borderStage matches 0 run function stmc:games/blitz/border/damage {radius:200, damage:0.5}

# border stage 1
# handles going from radius of 200 to radius of 115 over 240 seconds
# decreases radius by .354 blocks per second
# decrease radius by 1 block every 57 ticks
# does 5 damage per second (0.25 per tick)

# decrease radius every 57 ticks
execute if score blitz.handler blitz.borderStage matches 1 if score blitz.handler blitz.borderTickCounter matches 57.. run scoreboard players remove blitz.handler blitz.borderRadius 1
execute if score blitz.handler blitz.borderStage matches 1 if score blitz.handler blitz.borderTickCounter matches 57.. run scoreboard players set blitz.handler blitz.borderTickCounter 0

# visualize border & call damage on players outside it
execute if score blitz.handler blitz.borderStage matches 1 store result storage blitz:data radius double 1 run scoreboard players get blitz.handler blitz.borderRadius
execute if score blitz.handler blitz.borderStage matches 1 run data modify storage blitz:data damage set value 1
execute in stmc:blitz if score blitz.handler blitz.borderStage matches 1 run function stmc:games/blitz/border/damage with storage blitz:data

# border stage 2
# handles going from radius of 115 to radius of 3 over 240 seconds
# decreases radius by .467 blocks per second
# decrease radius by 1 block every 43 ticks
# does 5 damage per second (0.25 per tick)

# decrease radius every 43 ticks
execute if score blitz.handler blitz.borderStage matches 2 if score blitz.handler blitz.borderTickCounter matches 43.. run scoreboard players remove blitz.handler blitz.borderRadius 1
execute if score blitz.handler blitz.borderStage matches 2 if score blitz.handler blitz.borderTickCounter matches 43.. run scoreboard players set blitz.handler blitz.borderTickCounter 0

# visualize border & call damage on players outside it
execute if score blitz.handler blitz.borderStage matches 2 store result storage blitz:data radius double 1 run scoreboard players get blitz.handler blitz.borderRadius
execute if score blitz.handler blitz.borderStage matches 2 run data modify storage blitz:data damage set value 1.5
execute in stmc:blitz if score blitz.handler blitz.borderStage matches 2 run function stmc:games/blitz/border/damage with storage blitz:data

# border stage 3
# constant radius of 0
# 15 damage per second (0.75 per tick)
execute if score blitz.handler blitz.borderStage matches 3 if score blitz.handler blitz.borderTickCounter matches 20.. run scoreboard players set blitz.handler blitz.borderTickCounter 0
execute if score blitz.handler blitz.borderStage matches 3 run function stmc:games/blitz/border/damage {radius:1, damage:2}