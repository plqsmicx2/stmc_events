# handles dealing damage to players outside of the border
# macro function that inputs {radius, damage}
# visualizes current border with particles
# then damages players

# <===== BORDER VISUALIZATION =====>

# works by rotating an entity at the center rapidly & creating a particle <radius> blocks away

# re-center marker on armor stand
execute positioned as @e[tag=brawl.worldborder.center] rotated as @e[tag=brawl.worldborder.centerVisual] run tp @e[tag=brawl.worldborder.centerVisual] ~ 120 ~

# rotate marker by 6 degrees
execute as @e[tag=brawl.worldborder.centerVisual1] at @s run tp @s ~ ~ ~ ~6 0
execute as @e[tag=brawl.worldborder.centerVisual2] at @s run tp @s ~ ~ ~ ~30 0
execute as @e[tag=brawl.worldborder.centerVisual3] at @s run tp @s ~ ~ ~ ~54 0
execute as @e[tag=brawl.worldborder.centerVisual4] at @s run tp @s ~ ~ ~ ~78 0
execute as @e[tag=brawl.worldborder.centerVisual5] at @s run tp @s ~ ~ ~ ~102 0
execute as @e[tag=brawl.worldborder.centerVisual6] at @s run tp @s ~ ~ ~ ~126 0
execute as @e[tag=brawl.worldborder.centerVisual7] at @s run tp @s ~ ~ ~ ~150 0
execute as @e[tag=brawl.worldborder.centerVisual8] at @s run tp @s ~ ~ ~ ~174 0
execute as @e[tag=brawl.worldborder.centerVisual9] at @s run tp @s ~ ~ ~ ~198 0
execute as @e[tag=brawl.worldborder.centerVisual10] at @s run tp @s ~ ~ ~ ~222 0
execute as @e[tag=brawl.worldborder.centerVisual11] at @s run tp @s ~ ~ ~ ~246 0
execute as @e[tag=brawl.worldborder.centerVisual12] at @s run tp @s ~ ~ ~ ~270 0
execute as @e[tag=brawl.worldborder.centerVisual13] at @s run tp @s ~ ~ ~ ~294 0
execute as @e[tag=brawl.worldborder.centerVisual14] at @s run tp @s ~ ~ ~ ~318 0
execute as @e[tag=brawl.worldborder.centerVisual15] at @s run tp @s ~ ~ ~ ~342 0

# summon particle in direction marker is facing, from y=100 to y=160
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^-20 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^-16 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^-12 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^-8 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^-4 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^0 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^4 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^8 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^12 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^16 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^20 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^24 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^28 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^32 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^36 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute as @e[tag=brawl.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:10} ^ ^40 ^$(radius) 0.0 2.0 0.0 0 2 force

# <===== PLAYER DAMAGE =====>

# determine current border center
scoreboard objectives add brawl.x dummy
execute store result score brawl.handler brawl.x run \
        data get entity @e[tag=brawl.worldborder.center,limit=1] Pos[0]
scoreboard objectives add brawl.z dummy
execute store result score brawl.handler brawl.z run \
        data get entity @e[tag=brawl.worldborder.center,limit=1] Pos[2]

# determine player distance from center (sqrt approximated up to dx100,dz100)
# get player positions
execute as @a[scores={brawl.alive=1..}] store result score @s brawl.x run data get entity @s Pos[0]
execute as @a[scores={brawl.alive=1..}] store result score @s brawl.z run data get entity @s Pos[2]
# get distance between player and zone center
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.x -= brawl.handler brawl.x
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.z -= brawl.handler brawl.z
# square x & z
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.x *= @s brawl.x
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.z *= @s brawl.z
# store sqrt approximate in borderDistance
execute as @a[scores={brawl.alive=1..}] run scoreboard players set @s brawl.borderDistance 0
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.borderDistance += @s brawl.x
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.borderDistance += @s brawl.z
execute as @a[scores={brawl.alive=1..}] store result score @s brawl.borderDistance as @s run function stmc:games/brawl/round/helper/sqrt_approx
# determine distance from radius
scoreboard players set #math brawl.x -1
execute as @a[scores={brawl.alive=1..}] run scoreboard players operation @s brawl.borderDistance *= #math brawl.x
$execute as @a[scores={brawl.alive=1..}] run scoreboard players add @s brawl.borderDistance $(radius)

# damage players who are a certain distance (radial) away from border center
$execute as @a[scores={brawl.alive=1..}] if score @s brawl.borderDistance matches ..0 run damage @s $(damage) out_of_world

scoreboard objectives remove brawl.x
scoreboard objectives remove brawl.z