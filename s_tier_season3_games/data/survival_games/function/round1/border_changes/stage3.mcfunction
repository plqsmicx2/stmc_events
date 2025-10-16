# handles dx & dy for stage 1 of border

# summon marker at new center
execute if score sg.r1.handler sg.r1.timer.round matches 3301 run summon marker 0 120 0 {Tags:["sg.worldborder.centerZoneThree"]}
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.centerZoneThree] store result entity @s Pos[0] double 1 run scoreboard players get sg.handler sg.borderThirdCenterX
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.centerZoneThree] store result entity @s Pos[2] double 1 run scoreboard players get sg.handler sg.borderThirdCenterZ

# determine rounded distance to new center (manual unfortunately)
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=0..0.5] run scoreboard players set sg.handler sg.borderDistance 0
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=0.5..1.5] run scoreboard players set sg.handler sg.borderDistance 1
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=1.5..2.5] run scoreboard players set sg.handler sg.borderDistance 2
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=2.5..3.5] run scoreboard players set sg.handler sg.borderDistance 3
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=3.5..4.5] run scoreboard players set sg.handler sg.borderDistance 4
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=4.5..5.5] run scoreboard players set sg.handler sg.borderDistance 5
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=5.5..6.5] run scoreboard players set sg.handler sg.borderDistance 6
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=6.5..7.5] run scoreboard players set sg.handler sg.borderDistance 7
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=7.5..8.5] run scoreboard players set sg.handler sg.borderDistance 8
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=8.5..9.5] run scoreboard players set sg.handler sg.borderDistance 9
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=9.5..10.5] run scoreboard players set sg.handler sg.borderDistance 10
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=10.5..11.5] run scoreboard players set sg.handler sg.borderDistance 11
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=11.5..12.5] run scoreboard players set sg.handler sg.borderDistance 12
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=12.5..13.5] run scoreboard players set sg.handler sg.borderDistance 13
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=13.5..14.5] run scoreboard players set sg.handler sg.borderDistance 14
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=14.5..15.5] run scoreboard players set sg.handler sg.borderDistance 15
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=15.5..16.5] run scoreboard players set sg.handler sg.borderDistance 16
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=16.5..17.5] run scoreboard players set sg.handler sg.borderDistance 17
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=17.5..18.5] run scoreboard players set sg.handler sg.borderDistance 18
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=18.5..19.5] run scoreboard players set sg.handler sg.borderDistance 19
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=19.5..20.5] run scoreboard players set sg.handler sg.borderDistance 20
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=20.5..21.5] run scoreboard players set sg.handler sg.borderDistance 21
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=21.5..22.5] run scoreboard players set sg.handler sg.borderDistance 22
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=22.5..23.5] run scoreboard players set sg.handler sg.borderDistance 23
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=23.5..24.5] run scoreboard players set sg.handler sg.borderDistance 24
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=24.5..25.5] run scoreboard players set sg.handler sg.borderDistance 25
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=25.5..26.5] run scoreboard players set sg.handler sg.borderDistance 26
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=26.5..27.5] run scoreboard players set sg.handler sg.borderDistance 27
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=27.5..28.5] run scoreboard players set sg.handler sg.borderDistance 28
execute if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneThree,distance=28.5..29.5] run scoreboard players set sg.handler sg.borderDistance 29

# set armor stand to face new center
execute in survival_games:sg1 if score sg.r1.handler sg.r1.timer.round matches 3301 as @e[tag=sg.worldborder.center] at @s run tp @s ~ ~ ~ facing entity @e[tag=sg.worldborder.centerZoneThree,limit=1]

# based on distance, teleport armor stand to new zone center
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 1 run tp @s ^ ^ ^0.001667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 2 run tp @s ^ ^ ^0.003333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 3 run tp @s ^ ^ ^0.005
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 4 run tp @s ^ ^ ^0.006667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 5 run tp @s ^ ^ ^0.008333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 6 run tp @s ^ ^ ^0.01
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 7 run tp @s ^ ^ ^0.011667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 8 run tp @s ^ ^ ^0.013333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 9 run tp @s ^ ^ ^0.015
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 10 run tp @s ^ ^ ^0.016667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 11 run tp @s ^ ^ ^0.018333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 12 run tp @s ^ ^ ^0.02
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 13 run tp @s ^ ^ ^0.021667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 14 run tp @s ^ ^ ^0.023333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 15 run tp @s ^ ^ ^0.025
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 16 run tp @s ^ ^ ^0.026667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 17 run tp @s ^ ^ ^0.028333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 18 run tp @s ^ ^ ^0.03
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 19 run tp @s ^ ^ ^0.031667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 20 run tp @s ^ ^ ^0.033333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 21 run tp @s ^ ^ ^0.035
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 22 run tp @s ^ ^ ^0.036667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 23 run tp @s ^ ^ ^0.038333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 24 run tp @s ^ ^ ^0.04
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 25 run tp @s ^ ^ ^0.041667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 26 run tp @s ^ ^ ^0.043333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 27 run tp @s ^ ^ ^0.045
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 28 run tp @s ^ ^ ^0.046667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 29 run tp @s ^ ^ ^0.048333