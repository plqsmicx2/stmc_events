# handles dealing damage to players outside of the border
# macro function that inputs {radius, damage}
# visualizes current border with particles
# then damages players

# <===== BORDER VISUALIZATION =====>

# works by rotating an entity at the center rapidly & creating a particle <radius> blocks away

# re-center marker on armor stand
execute in survival_games:sg1 positioned as @e[tag=sg.worldborder.center] rotated as @e[tag=sg.worldborder.centerVisual1] run tp @e[tag=sg.worldborder.centerVisual1] ~ 120 ~
execute in survival_games:sg1 positioned as @e[tag=sg.worldborder.center] rotated as @e[tag=sg.worldborder.centerVisual1] run tp @e[tag=sg.worldborder.centerVisual2] ~ 120 ~
execute in survival_games:sg1 positioned as @e[tag=sg.worldborder.center] rotated as @e[tag=sg.worldborder.centerVisual1] run tp @e[tag=sg.worldborder.centerVisual3] ~ 120 ~
execute in survival_games:sg1 positioned as @e[tag=sg.worldborder.center] rotated as @e[tag=sg.worldborder.centerVisual1] run tp @e[tag=sg.worldborder.centerVisual4] ~ 120 ~

# rotate marker by 6 degrees
execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual1] at @s run tp @s ~ ~ ~ ~6 0
execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual2] at @s run tp @s ~ ~ ~ ~96 0
execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual3] at @s run tp @s ~ ~ ~ ~186 0
execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual4] at @s run tp @s ~ ~ ~ ~276 0

# summon particle in direction marker is facing, from y=120 to y=160
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^0 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^4 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^8 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^12 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^16 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^20 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^24 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^28 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^32 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^36 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in survival_games:sg1 as @e[tag=sg.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^40 ^$(radius) 0.0 2.0 0.0 0 2 force

# <===== PLAYER DAMAGE =====>

# determine current border center
scoreboard objectives add sg.x dummy
execute in survival_games:sg1 store result score sg.handler sg.x run \
        data get entity @e[tag=sg.worldborder.center,limit=1] Pos[0]
scoreboard objectives add sg.z dummy
execute in survival_games:sg1 store result score sg.handler sg.z run \
        data get entity @e[tag=sg.worldborder.center,limit=1] Pos[2]

# determine player distance from center (sqrt approximated up to dx100,dz100)
# get player positions
execute as @a[scores={sg.alive=1..}] store result score @s sg.x run data get entity @s Pos[0]
execute as @a[scores={sg.alive=1..}] store result score @s sg.z run data get entity @s Pos[2]
# get distance between player and zone center
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.x -= sg.handler sg.x
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.z -= sg.handler sg.z
# square x & z
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.x *= @s sg.x
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.z *= @s sg.z
# store sqrt approximate in borderDistance
execute as @a[scores={sg.alive=1..}] run scoreboard players set @s sg.borderDistance 0
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.borderDistance += @s sg.x
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.borderDistance += @s sg.z
execute as @a[scores={sg.alive=1..}] store result score @s sg.borderDistance as @s run function survival_games:sqrt_approx
# determine distance from radius
scoreboard players set #math sg.x -1
execute as @a[scores={sg.alive=1..}] run scoreboard players operation @s sg.borderDistance *= #math sg.x
$execute as @a[scores={sg.alive=1..}] run scoreboard players add @s sg.borderDistance $(radius)

# damage players who are a certain distance (radial) away from border center
$execute as @a[scores={sg.alive=1..}] if score @s sg.borderDistance matches ..0 run damage @s $(damage) out_of_world

scoreboard objectives remove sg.x
scoreboard objectives remove sg.z