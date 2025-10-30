# handles dx & dy for stage 1 of border

# summon marker at new center
execute in survival_games:sg1 if score sg.r3.handler sg.r3.timer.round matches 2701 run summon marker 0 120 0 {Tags:["sg.worldborder.centerZoneTwo"]}
execute in survival_games:sg1 if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.centerZoneTwo] store result entity @s Pos[0] double 1 run scoreboard players get sg.handler sg.borderSecondCenterX
execute in survival_games:sg1 if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.centerZoneTwo] store result entity @s Pos[2] double 1 run scoreboard players get sg.handler sg.borderSecondCenterZ

# determine rounded distance to new center (manual unfortunately)
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=0..0.5] run scoreboard players set sg.handler sg.borderDistance 0
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=0.5..1.5] run scoreboard players set sg.handler sg.borderDistance 1
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=1.5..2.5] run scoreboard players set sg.handler sg.borderDistance 2
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=2.5..3.5] run scoreboard players set sg.handler sg.borderDistance 3
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=3.5..4.5] run scoreboard players set sg.handler sg.borderDistance 4
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=4.5..5.5] run scoreboard players set sg.handler sg.borderDistance 5
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=5.5..6.5] run scoreboard players set sg.handler sg.borderDistance 6
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=6.5..7.5] run scoreboard players set sg.handler sg.borderDistance 7
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=7.5..8.5] run scoreboard players set sg.handler sg.borderDistance 8
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=8.5..9.5] run scoreboard players set sg.handler sg.borderDistance 9
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=9.5..10.5] run scoreboard players set sg.handler sg.borderDistance 10
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=10.5..11.5] run scoreboard players set sg.handler sg.borderDistance 11
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=11.5..12.5] run scoreboard players set sg.handler sg.borderDistance 12
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=12.5..13.5] run scoreboard players set sg.handler sg.borderDistance 13
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=13.5..14.5] run scoreboard players set sg.handler sg.borderDistance 14
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=14.5..15.5] run scoreboard players set sg.handler sg.borderDistance 15
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=15.5..16.5] run scoreboard players set sg.handler sg.borderDistance 16
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=16.5..17.5] run scoreboard players set sg.handler sg.borderDistance 17
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=17.5..18.5] run scoreboard players set sg.handler sg.borderDistance 18
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=18.5..19.5] run scoreboard players set sg.handler sg.borderDistance 19
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=19.5..20.5] run scoreboard players set sg.handler sg.borderDistance 20
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=20.5..21.5] run scoreboard players set sg.handler sg.borderDistance 21
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=21.5..22.5] run scoreboard players set sg.handler sg.borderDistance 22
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=22.5..23.5] run scoreboard players set sg.handler sg.borderDistance 23
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=23.5..24.5] run scoreboard players set sg.handler sg.borderDistance 24
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=24.5..25.5] run scoreboard players set sg.handler sg.borderDistance 25
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=25.5..26.5] run scoreboard players set sg.handler sg.borderDistance 26
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=26.5..27.5] run scoreboard players set sg.handler sg.borderDistance 27
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=27.5..28.5] run scoreboard players set sg.handler sg.borderDistance 28
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=28.5..29.5] run scoreboard players set sg.handler sg.borderDistance 29
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=29.5..30.5] run scoreboard players set sg.handler sg.borderDistance 30
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=30.5..31.5] run scoreboard players set sg.handler sg.borderDistance 31
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=31.5..32.5] run scoreboard players set sg.handler sg.borderDistance 32
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=32.5..33.5] run scoreboard players set sg.handler sg.borderDistance 33
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=33.5..34.5] run scoreboard players set sg.handler sg.borderDistance 34
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=34.5..35.5] run scoreboard players set sg.handler sg.borderDistance 35
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=35.5..36.5] run scoreboard players set sg.handler sg.borderDistance 36
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=36.5..37.5] run scoreboard players set sg.handler sg.borderDistance 37
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=37.5..38.5] run scoreboard players set sg.handler sg.borderDistance 38
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=38.5..39.5] run scoreboard players set sg.handler sg.borderDistance 39
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=39.5..40.5] run scoreboard players set sg.handler sg.borderDistance 40
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=40.5..41.5] run scoreboard players set sg.handler sg.borderDistance 41
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=41.5..42.5] run scoreboard players set sg.handler sg.borderDistance 42
execute if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s if entity @e[tag=sg.worldborder.centerZoneTwo,distance=42.5..43.5] run scoreboard players set sg.handler sg.borderDistance 43

# set armor stand to face new center
execute in survival_games:sg1 if score sg.r3.handler sg.r3.timer.round matches 2701 as @e[tag=sg.worldborder.center] at @s run tp @s ~ ~ ~ facing entity @e[tag=sg.worldborder.centerZoneTwo,limit=1]

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
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 30 run tp @s ^ ^ ^0.05
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 31 run tp @s ^ ^ ^0.051667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 32 run tp @s ^ ^ ^0.053333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 33 run tp @s ^ ^ ^0.055
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 34 run tp @s ^ ^ ^0.056667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 35 run tp @s ^ ^ ^0.058333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 36 run tp @s ^ ^ ^0.06
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 37 run tp @s ^ ^ ^0.061667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 38 run tp @s ^ ^ ^0.063333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 39 run tp @s ^ ^ ^0.065
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 40 run tp @s ^ ^ ^0.066667
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 41 run tp @s ^ ^ ^0.068333
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 42 run tp @s ^ ^ ^0.07
execute as @e[tag=sg.worldborder.center] positioned as @s rotated as @s if score sg.handler sg.borderDistance matches 43 run tp @s ^ ^ ^0.071667