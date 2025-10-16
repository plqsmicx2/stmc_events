# helper function that checks when players reach a checkpoint
# called every tick

# CHECKPOINT #1
execute if entity @s[x=-1,y=103,z=-30,dx=6,dy=4,dz=1] unless score @s race.checkpoints_completed matches 1 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-1,y=103,z=-30,dx=6,dy=4,dz=1] run scoreboard players set @s race.checkpoints_completed 1
execute as @s if entity @s[x=-1,y=103,z=-30,dx=6,dy=4,dz=1] run function race:update_placement

# CHECKPOINT #2
execute if entity @s[x=20,y=109,z=-31,dx=1,dy=3,dz=7] unless score @s race.checkpoints_completed matches 2 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=20,y=109,z=-31,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 2
execute as @s if entity @s[x=20,y=109,z=-31,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #3
execute if entity @s[x=-7,y=109,z=-40,dx=7,dy=5,dz=1] unless score @s race.checkpoints_completed matches 3 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-7,y=109,z=-40,dx=7,dy=5,dz=1] run scoreboard players set @s race.checkpoints_completed 3
execute as @s if entity @s[x=-7,y=109,z=-40,dx=7,dy=5,dz=1] run function race:update_placement

# CHECKPOINT #4
execute if entity @s[x=-24,y=114,z=-34,dx=1,dy=3,dz=7] unless score @s race.checkpoints_completed matches 4 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-24,y=114,z=-34,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 4
execute as @s if entity @s[x=-24,y=114,z=-34,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #5
execute if entity @s[x=-41,y=110,z=8,dx=3,dy=1,dz=5] unless score @s race.checkpoints_completed matches 5 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-41,y=110,z=8,dx=3,dy=1,dz=5] run scoreboard players set @s race.checkpoints_completed 5
execute as @s if entity @s[x=-41,y=110,z=8,dx=3,dy=1,dz=5] run function race:update_placement

# CHECKPOINT #6
execute if entity @s[x=-28,y=110,z=-20,dx=1,dy=3,dz=7] unless score @s race.checkpoints_completed matches 6 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-28,y=110,z=-20,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 6
execute as @s if entity @s[x=-28,y=110,z=-20,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #7
execute if entity @s[x=-8,y=113,z=-16,dx=5,dy=5,dz=1] unless score @s race.checkpoints_completed matches 7 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-8,y=113,z=-16,dx=5,dy=5,dz=1] run scoreboard players set @s race.checkpoints_completed 7
execute as @s if entity @s[x=-8,y=113,z=-16,dx=5,dy=5,dz=1] run function race:update_placement

# CHECKPOINT #8
execute if entity @s[x=-17,y=126,z=-11,dx=7,dy=3,dz=1] unless score @s race.checkpoints_completed matches 8 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=-17,y=126,z=-11,dx=7,dy=3,dz=1] run scoreboard players set @s race.checkpoints_completed 8
execute as @s if entity @s[x=-17,y=126,z=-11,dx=7,dy=3,dz=1] run function race:update_placement

# CHECKPOINT #9
execute if entity @s[x=46,y=108,z=55,dx=6,dy=4,dz=1] unless score @s race.checkpoints_completed matches 9 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=46,y=108,z=55,dx=6,dy=4,dz=1] run scoreboard players set @s race.checkpoints_completed 9
execute as @s if entity @s[x=46,y=108,z=55,dx=6,dy=4,dz=1] run function race:update_placement

# CHECKPOINT #10
execute if entity @s[x=61,y=107,z=56,dx=7,dy=7,dz=1] unless score @s race.checkpoints_completed matches 10 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=61,y=107,z=56,dx=7,dy=7,dz=1] run scoreboard players set @s race.checkpoints_completed 10
execute as @s if entity @s[x=61,y=107,z=56,dx=7,dy=7,dz=1] run function race:update_placement

# CHECKPOINT #11
execute if entity @s[x=67,y=115,z=47,dx=1,dy=5,dz=5] unless score @s race.checkpoints_completed matches 11 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=67,y=115,z=47,dx=1,dy=5,dz=5] run scoreboard players set @s race.checkpoints_completed 11
execute as @s if entity @s[x=67,y=115,z=47,dx=1,dy=5,dz=5] run function race:update_placement

# CHECKPOINT #12
execute if entity @s[x=46,y=105,z=-7,dx=1,dy=5,dz=6] unless score @s race.checkpoints_completed matches 12 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=46,y=105,z=-7,dx=1,dy=5,dz=6] run scoreboard players set @s race.checkpoints_completed 12
execute as @s if entity @s[x=46,y=105,z=-7,dx=1,dy=5,dz=6] run function race:update_placement

# CHECKPOINT #13
execute if entity @s[x=6,y=104,z=-4,dx=3,dy=5,dz=1] unless score @s race.checkpoints_completed matches 13 run scoreboard players set @s race.soundThisTick 1
execute if entity @s[x=6,y=104,z=-4,dx=3,dy=5,dz=1] run scoreboard players set @s race.checkpoints_completed 13
execute as @s if entity @s[x=6,y=104,z=-4,dx=3,dy=5,dz=1] run function race:update_placement

# CHECKPOINT #14 (last)
execute if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] unless score @s race.checkpoints_completed matches 0 run scoreboard players add @s race.laps_completed 1
execute if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] unless score @s race.checkpoints_completed matches 0 if score @s race.laptime.seconds matches 0..9 run tellraw @a [{selector:"@s"},{text:" completed lap #",color:green},{score:{name:"@s",objective:"race.laps_completed"},color:green},{text:" in ",color:green},{score:{name:"@s",objective:"race.laptime.mins"},color:"green"},{text:":0",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]
execute if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] unless score @s race.checkpoints_completed matches 0 if score @s race.laptime.seconds matches 10.. run tellraw @a [{selector:"@s"},{text:" completed lap #",color:green},{score:{name:"@s",objective:"race.laps_completed"},color:green},{text:" in ",color:green},{score:{name:"@s",objective:"race.laptime.mins"},color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]
execute in race:race at @s if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] unless score @s race.checkpoints_completed matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1.2 0.8
execute if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] run scoreboard players set @s race.checkpoints_completed 0
execute as @s if entity @s[x=-16,y=105,z=9,dx=7,dy=6,dz=1] run function race:update_placement