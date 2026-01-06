# helper function that returns players to their last checkpoint
# executes on @s in stmc:sprint at all times

# to prevent skips & double-counts from counting, the following logic is used:
# if [x,dx] matches completion, but completion has already been awarded, ignore

# Parkour Section

# Level #1:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 1 \
        if entity @s[x=-44,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #2:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 2 \
        if entity @s[x=-76,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #3:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 3 \
        if entity @s[x=-108,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #4:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 4 \
        if entity @s[x=-140,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #5:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 5 \
        if entity @s[x=-172,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #6:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 6 \
        if entity @s[x=-204,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #7:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 7 \
        if entity @s[x=-236,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #8:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 8 \
        if entity @s[x=-268,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Level #9:
execute if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 9 \
        if entity @s[x=-300,dx=-10,y=100,dy=10] run function stmc:games/sprint/helper/game/award_completion

# Dropper Section

# Level #1
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 1 \
        if entity @s[x=-21,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion

# Level #2
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 2 \
        if entity @s[x=-53,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion
        
# Level #3
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 3 \
        if entity @s[x=-85,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion
        
# Level #4
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 4 \
        if entity @s[x=-117,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion
        
# Level #5
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 5 \
        if entity @s[x=-149,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion
        
# Level #6
execute if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 6 \
        if entity @s[x=-181,dx=-20,y=64,dy=-10] run function stmc:games/sprint/helper/game/award_completion

# Elytra Section

# Level #1
execute if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 1 \
        if entity @s[x=-197,y=90,z=397,dx=-9,dy=6,dz=7] run function stmc:games/sprint/helper/game/award_completion

# Level #2
execute if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 2 \
        if entity @s[x=-390,dx=-10,y=80,dy=6,z=395,dz=7] run function stmc:games/sprint/helper/game/award_completion

# Level #3
execute if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 3 \
        if entity @s[x=-585,dx=-10,y=87,dy=6,z=395,dz=7] run function stmc:games/sprint/helper/game/award_completion

# Level #4
execute if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 4 \
        if entity @s[x=-821,dx=-5,y=7,dy=10,z=399,dz=10] run function stmc:games/sprint/helper/game/award_completion

# Spear Section

# Level #1
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 1 \
        if entity @s[x=-90,y=100,z=598,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #2
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 2 \
        if entity @s[x=-168,y=104,z=598,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #3
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 3 \
        if entity @s[x=-228,y=111,z=598,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #4
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 4 \
        if entity @s[x=-292,y=115,z=598,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #5
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 5 \
        if entity @s[x=-375,y=118,z=597,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #6
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 6 \
        if entity @s[x=-452,y=122,z=597,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #7
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 7 \
        if entity @s[x=-569,y=124,z=599,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion

# Level #8
execute if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 8 \
        if entity @s[x=-607,y=134,z=597,dx=-7,dy=10,dz=5] run function stmc:games/sprint/helper/game/award_completion
