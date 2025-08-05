# helper function that checks when players reach a checkpoint
# called every tick

# CHECKPOINT #1
execute as @a if entity @s[x=-1,y=103,z=-30,dx=6,dy=4,dz=1] run scoreboard players set @s race.checkpoints_completed 1
execute as @a if entity @s[x=-1,y=103,z=-30,dx=6,dy=4,dz=1] run function race:update_placement

# CHECKPOINT #2
execute as @a if entity @s[x=20,y=109,z=-31,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 2
execute as @a if entity @s[x=20,y=109,z=-31,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #3
execute as @a if entity @s[x=-7,y=109,z=-40,dx=7,dy=5,dz=1] run scoreboard players set @s race.checkpoints_completed 3
execute as @a if entity @s[x=-7,y=109,z=-40,dx=7,dy=5,dz=1] run function race:update_placement

# CHECKPOINT #4
execute as @a if entity @s[x=-24,y=114,z=-34,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 4
execute as @a if entity @s[x=-24,y=114,z=-34,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #5
execute as @a if entity @s[x=-41,y=110,z=8,dx=3,dy=1,dz=5] run scoreboard players set @s race.checkpoints_completed 5
execute as @a if entity @s[x=-41,y=110,z=8,dx=3,dy=1,dz=5] run function race:update_placement

# CHECKPOINT #6
execute as @a if entity @s[x=-28,y=110,z=-20,dx=1,dy=3,dz=7] run scoreboard players set @s race.checkpoints_completed 6
execute as @a if entity @s[x=-28,y=110,z=-20,dx=1,dy=3,dz=7] run function race:update_placement

# CHECKPOINT #7
execute as @a if entity @s[x=-8,y=113,z=-16,dx=5,dy=5,dz=1] run scoreboard players set @s race.checkpoints_completed 7
execute as @a if entity @s[x=-8,y=113,z=-16,dx=5,dy=5,dz=1] run function race:update_placement

# CHECKPOINT #8
execute as @a if entity @s[x=-17,y=126,z=-11,dx=7,dy=3,dz=1] run scoreboard players set @s race.checkpoints_completed 8
execute as @a if entity @s[x=-17,y=126,z=-11,dx=7,dy=3,dz=1] run function race:update_placement

# CHECKPOINT #9
execute as @a if entity @s[x=46,y=108,z=55,dx=6,dy=4,dz=1] run scoreboard players set @s race.checkpoints_completed 9
execute as @a if entity @s[x=46,y=108,z=55,dx=6,dy=4,dz=1] run function race:update_placement

# CHECKPOINT #10 (last)
execute as @a if entity @s[x=61,y=107,z=52,dx=7,dy=7,dz=4] run scoreboard players set @s race.checkpoints_completed 0
execute as @a if entity @s[x=61,y=107,z=52,dx=7,dy=7,dz=4] run scoreboard players add @s race.laps_completed 1
execute as @a if entity @s[x=61,y=107,z=52,dx=7,dy=7,dz=4] run teleport @s -13 107 15 180 10
execute as @a if entity @s[x=61,y=107,z=52,dx=7,dy=7,dz=4] run function race:update_placement

# /tp plqsmic -13 107 15 180 10