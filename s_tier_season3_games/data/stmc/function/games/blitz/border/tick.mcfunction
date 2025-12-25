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
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,90F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center2","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,180F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center3","blitz.worldborder.centerVisual"]}
execute in stmc:blitz if score blitz.handler blitz.timer.game matches 1 run summon armor_stand 0 90 0 {Rotation:[0F,270F],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["blitz.worldborder.center4","blitz.worldborder.centerVisual"]}

# create temporary timer scoreboard
execute if score blitz.handler blitz.timer.game matches 1 run scoreboard objectives add blitz.borderTickCounter dummy
execute if score blitz.handler blitz.timer.game matches 1 run scoreboard players set blitz.handler blitz.borderTickCounter 0

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
execute if score blitz.handler blitz.borderStage matches 0 run function stmc:games/blitz/border/damage {radius:200, damage:0.2}

# border stage 1
# handles going from radius of 200 to radius of 125 over 180 seconds
# decreases radius by .015 blocks per second
# decrease radius by 1 block every 64 ticks
# does 5 damage per second (0.25 per tick)

# decrease radius every 64 ticks
execute if score blitz.handler blitz.borderStage matches 1 if score blitz.handler blitz.borderTickCounter matches 64.. run scoreboard players remove blitz.handler blitz.borderRadius 1
execute if score blitz.handler blitz.borderStage matches 1 if score blitz.handler blitz.borderTickCounter matches 64.. run scoreboard players set blitz.handler blitz.borderTickCounter 0

# visualize border & call damage on players outside it
execute if score blitz.handler blitz.borderStage matches 1 store result storage blitz:data radius double 1 run scoreboard players get blitz.handler blitz.borderRadius
execute if score blitz.handler blitz.borderStage matches 1 run data modify storage blitz:data damage set value .25
execute in stmc:blitz if score blitz.handler blitz.borderStage matches 1 run function stmc:games/blitz/border/damage with storage survival_games:data

# border stage 3
# handles going from radius of 125 to radius of 0 over 240 seconds
# decreases radius by 0.24 blocks per second
# decrease radius by 1 block every 34 ticks
# does 10 damage per second (0.5 per tick)

# decrease radius every 34 ticks
execute if score blitz.handler blitz.borderStage matches 2 if score blitz.handler blitz.borderTickCounter matches 34.. run scoreboard players remove blitz.handler blitz.borderRadius 1
execute if score blitz.handler blitz.borderStage matches 2 if score blitz.handler blitz.borderTickCounter matches 34.. run scoreboard players set blitz.handler blitz.borderTickCounter 0

# visualize border & call damage on players outside it
execute if score blitz.handler blitz.borderStage matches 2 store result storage blitz:data radius double 1 run scoreboard players get blitz.handler blitz.borderRadius
execute if score blitz.handler blitz.borderStage matches 2 run data modify storage blitz:data damage set value .5
execute in stmc:blitz if score blitz.handler blitz.borderStage matches 2 run function stmc:games/blitz/border/damage with storage survival_games:data

# border stage 3
# constant radius of 0
# 15 damage per second (0.75 per tick)
execute if score blitz.handler blitz.borderStage matches 3 if score blitz.handler blitz.borderTickCounter matches 20.. run scoreboard players set blitz.handler blitz.borderTickCounter 0
execute if score blitz.handler blitz.borderStage matches 3 run function stmc:games/blitz/border/damage {radius:0, damage:0.75}