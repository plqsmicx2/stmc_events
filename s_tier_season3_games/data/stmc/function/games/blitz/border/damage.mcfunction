# handles dealing damage to players outside of the border
# macro function that inputs {radius, damage}
# visualizes current border with particles
# then damages players

# <===== BORDER VISUALIZATION =====>

# works by rotating an entity at the center rapidly & creating a particle <radius> blocks away

# rotate armor stands by 6 degrees
execute in stmc:blitz as @e[tag=blitz.worldborder.center1] at @s run tp @s ~ ~ ~ ~6 0
execute in stmc:blitz as @e[tag=blitz.worldborder.center2] at @s run tp @s ~ ~ ~ ~6 0
execute in stmc:blitz as @e[tag=blitz.worldborder.center3] at @s run tp @s ~ ~ ~ ~6 0
execute in stmc:blitz as @e[tag=blitz.worldborder.center4] at @s run tp @s ~ ~ ~ ~6 0

# summon particle in direction marker is facing, from y=90 to y=130
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^0 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^4 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^8 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^12 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^16 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^20 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^24 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^28 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^32 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^36 ^$(radius) 0.0 2.0 0.0 0 2 force
$execute in stmc:blitz as @e[tag=blitz.worldborder.centerVisual] at @s run particle minecraft:raid_omen{scale:9} ^ ^40 ^$(radius) 0.0 2.0 0.0 0 2 force

# <===== PLAYER DAMAGE =====>

# determine current border center
scoreboard objectives add blitz.x dummy
execute in stmc:blitz store result score blitz.handler blitz.x run \
        data get entity @e[tag=blitz.worldborder.center,limit=1] Pos[0]
scoreboard objectives add blitz.z dummy
execute in stmc:blitz store result score blitz.handler blitz.z run \
        data get entity @e[tag=blitz.worldborder.center,limit=1] Pos[2]

# determine player distance from center (sqrt approximated up to dx100,dz100)
# get player positions
execute as @a[scores={blitz.alive=1..}] store result score @s blitz.x run data get entity @s Pos[0]
execute as @a[scores={blitz.alive=1..}] store result score @s blitz.z run data get entity @s Pos[2]
# get distance between player and zone center
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.x -= blitz.handler blitz.x
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.z -= blitz.handler blitz.z
# square x & z
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.x *= @s blitz.x
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.z *= @s blitz.z
# store sqrt approximate in borderDistance
execute as @a[scores={blitz.alive=1..}] run scoreboard players set @s blitz.borderDistance 0
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.borderDistance += @s blitz.x
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.borderDistance += @s blitz.z
execute as @a[scores={blitz.alive=1..}] store result score @s blitz.borderDistance as @s run function stmc:games/blitz/helper/sqrt_approx
# determine distance from radius
scoreboard players set #math blitz.x -1
execute as @a[scores={blitz.alive=1..}] run scoreboard players operation @s blitz.borderDistance *= #math blitz.x
$execute as @a[scores={blitz.alive=1..}] run scoreboard players add @s blitz.borderDistance $(radius)

# damage players who are a certain distance (radial) away from border center
$execute as @a[scores={blitz.alive=1..}] if score @s blitz.borderDistance matches ..0 run damage @s $(damage) out_of_world

scoreboard objectives remove blitz.x
scoreboard objectives remove blitz.z